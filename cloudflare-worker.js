/**
 * FixHive AI Diagnosis — Cloudflare Worker
 * ─────────────────────────────────────────
 * Receives structured car + symptom data from diagnosis.html,
 * builds the Anthropic prompt, calls the API, and returns { issues: [...] }.
 *
 * The API key is stored as a Worker Secret — never in source code.
 *
 * DEPLOY / UPDATE STEPS:
 * 1. Go to https://dash.cloudflare.com → Workers & Pages → your worker
 * 2. Click "Edit code", paste this file, click "Save & Deploy"
 * 3. Confirm Settings → Variables has Secret: ANTHROPIC_API_KEY = sk-ant-...
 */

const ALLOWED_ORIGIN = 'https://myfixhive.ae';

const CORS_HEADERS = {
  'Access-Control-Allow-Origin':  ALLOWED_ORIGIN,
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
  'Access-Control-Allow-Headers': 'Content-Type',
  'Access-Control-Max-Age':       '86400',
};

export default {
  async fetch(request, env) {

    /* ── CORS preflight ── */
    if (request.method === 'OPTIONS') {
      return new Response(null, { status: 204, headers: CORS_HEADERS });
    }

    if (request.method !== 'POST') {
      return jsonError(405, 'Method Not Allowed');
    }

    /* Allow localhost for local testing */
    const origin = request.headers.get('Origin') || '';
    if (origin && origin !== ALLOWED_ORIGIN && !origin.includes('localhost')) {
      return new Response('Forbidden', { status: 403 });
    }

    /* ── Parse incoming payload ── */
    let payload;
    try {
      payload = await request.json();
    } catch {
      return jsonError(400, 'Invalid JSON body');
    }

    const { name, brand, model, year, mileage, symptoms, urgency, when, extra } = payload;

    if (!brand || !model || !Array.isArray(symptoms) || symptoms.length === 0) {
      return jsonError(400, 'Missing required fields: brand, model, symptoms');
    }

    /* ── Build the prompt ── */
    const mileageText = mileage && mileage !== 'unknown' ? `${mileage} km` : 'unknown';
    const whenText    = when  ? `\n- When it started: ${when}`   : '';
    const extraText   = extra ? `\n- Additional notes: ${extra}` : '';

    const prompt = `You are a master automotive technician with 18+ years of experience servicing cars in Dubai, UAE. You specialise in diagnosing issues specific to the Gulf climate: extreme summer heat (40–50°C), dusty desert air, aggressive speed bumps, and long motorway driving.

Customer report:
- Name: ${name || 'Customer'}
- Car: ${year} ${brand} ${model}
- Mileage: ${mileageText}
- Urgency: ${urgency}
- Reported symptoms: ${symptoms.join(', ')}${whenText}${extraText}

Analyse the symptoms and identify the 3–5 most likely mechanical or electrical issues. Consider UAE-specific factors like heat-damaged AC systems, dust-clogged air filters, battery degradation in hot climates, and suspension wear from speed bumps.

Return ONLY a valid JSON array — no markdown, no code blocks, no explanation text. Each object must have exactly these fields:
- "title": string (concise issue name, e.g. "AC Compressor Failure")
- "prob": integer 0–100 (likelihood this is the root cause)
- "desc": string (2–3 sentences: what it is, why it matches the symptoms, any Dubai/UAE factor)
- "tags": string array (1–3 service category tags, e.g. ["AC", "Cooling"])
- "urgency": "low" | "medium" | "high"

Sort by prob descending.`;

    /* ── Call Anthropic ── */
    let anthropicRes;
    try {
      anthropicRes = await fetch('https://api.anthropic.com/v1/messages', {
        method:  'POST',
        headers: {
          'Content-Type':      'application/json',
          'x-api-key':         env.ANTHROPIC_API_KEY,
          'anthropic-version': '2023-06-01',
        },
        body: JSON.stringify({
          model:      'claude-sonnet-4-6',
          max_tokens: 1500,
          messages:   [{ role: 'user', content: prompt }],
        }),
      });
    } catch (err) {
      return jsonError(502, 'Failed to reach Anthropic API: ' + err.message);
    }

    if (!anthropicRes.ok) {
      const errBody = await anthropicRes.text();
      return jsonError(502, 'Anthropic error ' + anthropicRes.status + ': ' + errBody);
    }

    const anthropicData = await anthropicRes.json();
    const rawText = anthropicData.content?.[0]?.text || '';

    /* ── Parse the JSON array out of the response ── */
    const issues = parseIssues(rawText);
    if (!issues || issues.length === 0) {
      return jsonError(500, 'AI returned an empty or unparseable response');
    }

    /* ── Return { issues } to the frontend ── */
    return new Response(JSON.stringify({ issues }), {
      status:  200,
      headers: { 'Content-Type': 'application/json', ...CORS_HEADERS },
    });
  },
};

/* ── Helpers ── */

function parseIssues(text) {
  const clean = text.replace(/```json?/gi, '').replace(/```/g, '').trim();
  const match = clean.match(/\[[\s\S]*\]/);
  if (!match) return null;
  try { return JSON.parse(match[0]); } catch { return null; }
}

function jsonError(status, message) {
  return new Response(JSON.stringify({ error: message }), {
    status,
    headers: { 'Content-Type': 'application/json', ...CORS_HEADERS },
  });
}
