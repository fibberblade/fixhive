<?php
// FixHive Promotions Save API
// Simple password-protected endpoint to write promotions.json

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, X-Auth');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') { http_response_code(200); exit; }
if ($_SERVER['REQUEST_METHOD'] !== 'POST') { http_response_code(405); echo json_encode(['ok'=>false,'error'=>'Method not allowed']); exit; }

// Password check
define('ADMIN_PASSWORD', 'fixhive2025!');
$auth = $_SERVER['HTTP_X_AUTH'] ?? '';
if ($auth !== ADMIN_PASSWORD) {
    http_response_code(401);
    echo json_encode(['ok'=>false,'error'=>'Unauthorised']);
    exit;
}

// Read & validate body
$body = file_get_contents('php://input');
$data = json_decode($body, true);
if (!is_array($data)) {
    http_response_code(400);
    echo json_encode(['ok'=>false,'error'=>'Invalid JSON']);
    exit;
}

// Sanitise each promo
$clean = [];
foreach ($data as $promo) {
    $clean[] = [
        'id'          => (int)   ($promo['id']          ?? 0),
        'title'       => (string)($promo['title']       ?? ''),
        'description' => (string)($promo['description'] ?? ''),
        'badge'       => (string)($promo['badge']       ?? ''),
        'badgeColor'  => (string)($promo['badgeColor']  ?? 'amber'),
        'cta'         => (string)($promo['cta']         ?? 'Book Now'),
        'ctaUrl'      => (string)($promo['ctaUrl']      ?? ''),
        'icon'        => (string)($promo['icon']        ?? '🔧'),
        'active'      => (bool)  ($promo['active']      ?? true),
    ];
}

// Write file
$path = __DIR__ . '/../data/promotions.json';
$result = file_put_contents($path, json_encode($clean, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));

if ($result === false) {
    http_response_code(500);
    echo json_encode(['ok'=>false,'error'=>'Failed to write file — check folder permissions']);
    exit;
}

echo json_encode(['ok'=>true,'saved'=>count($clean)]);
