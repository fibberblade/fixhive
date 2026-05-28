(function () {
  'use strict';

  // ── CONFIG ──────────────────────────────────────────────
  var WA_NUMBER = '971541699500';
  var IG_URL    = 'https://www.instagram.com/fixhive_ae/';
  var BOT_DELAY = 700; // ms between bot messages

  // ── LANGUAGE DETECTION ──────────────────────────────────
  var isAr = document.documentElement.lang === 'ar';

  // ── STRINGS ─────────────────────────────────────────────
  var T = isAr ? {
    greeting:       'أهلًا وسهلًا! 👋 مرحبًا بك في فيكس هايف غاراج.',
    howHelp:        'كيف يمكننا مساعدتك اليوم؟',
    services:       ['تكييف وتبريد', 'المحرك', 'الفرامل والتعليق', 'الإطارات', 'الهيكل والديتيلينج', 'الجير', 'التشخيص', 'أخرى'],
    greatChoice:    'اختيار رائع! 👌 ما اسمك الكريم؟',
    namePlaceholder:'اسمك...',
    niceMeet:       'تشرفنا، ',
    askPhone:       'ما رقم هاتفك للتواصل معك؟',
    phonePlaceholder:'مثال: 0501234567',
    gotDetails:     'ممتاز! ✅ تم تسجيل بياناتك.',
    callBack:       'سيتصل بك أحد مستشارينا قريبًا، ',
    igAsk:          'أخيرًا — تابعونا على إنستغرام للعروض والنصائح! 📸',
    igFollow:       'تابع @fixhive_ae 📷',
    igLater:        'ربما لاحقًا',
    igThanks:       'شكرًا على المتابعة! 🙌',
    igBye:          'يومك سعيد — إلى اللقاء قريبًا!',
    bye:            'لا مشكلة! يومك سعيد — إلى اللقاء! 🙌',
    headerSub:      'يرد عادةً خلال دقائق',
    inputPlaceholder: 'اكتب ردك...',
    waLead:         '🔔 رسالة جديدة من الموقع\nالاسم: ',
    waPhone:        '\nالهاتف: ',
    waService:      '\nالخدمة: ',
  } : {
    greeting:       'Hi there! 👋 Welcome to FixHive Garage.',
    howHelp:        'How can we help you today?',
    services:       ['AC & Cooling', 'Engine', 'Brakes & Suspension', 'Tyres & Wheels', 'Body & Detailing', 'Gearbox', 'Diagnostics', 'Other'],
    greatChoice:    'Great choice! 👌 May I ask your name?',
    namePlaceholder:'Your name…',
    niceMeet:       'Nice to meet you, ',
    askPhone:       'What\'s the best phone number to reach you on?',
    phonePlaceholder:'e.g. 0501234567',
    gotDetails:     'Perfect! ✅ We\'ve got your details.',
    callBack:       'One of our advisors will call you back shortly, ',
    igAsk:          'One last thing — follow us on Instagram for tips, offers & behind-the-scenes! 📸',
    igFollow:       'Follow @fixhive_ae 📷',
    igLater:        'Maybe later',
    igThanks:       'Awesome, thanks for the follow! 🙌',
    igBye:          'Have a great day — speak soon!',
    bye:            'No problem! Have a great day — speak soon! 🙌',
    headerSub:      'Typically replies in minutes',
    inputPlaceholder: 'Type your answer…',
    waLead:         '🔔 New website lead\nName: ',
    waPhone:        '\nPhone: ',
    waService:      '\nService: ',
  };

  // ── STATE ───────────────────────────────────────────────
  var state = { step: 'service', service: '', name: '', phone: '' };

  // ── BUILD DOM ───────────────────────────────────────────
  var launcher = document.createElement('div');
  launcher.id = 'fh-chat-launcher';
  launcher.innerHTML =
    '<span class="fh-launcher-icon fh-launcher-icon-open">💬</span>' +
    '<span class="fh-launcher-icon fh-launcher-icon-close">✕</span>';

  var win = document.createElement('div');
  win.id = 'fh-chat-window';
  if (isAr) win.setAttribute('dir', 'rtl');
  win.innerHTML =
    '<div id="fh-chat-header">' +
      '<div class="fh-avatar">🔧</div>' +
      '<div class="fh-header-info">' +
        '<h4>FixHive Garage</h4>' +
        '<p><span class="fh-online-dot"></span>' + T.headerSub + '</p>' +
      '</div>' +
    '</div>' +
    '<div id="fh-chat-messages"></div>' +
    '<div id="fh-chat-input-area">' +
      '<input id="fh-chat-input" type="text" placeholder="' + T.inputPlaceholder + '" autocomplete="off" />' +
      '<button id="fh-chat-send">➤</button>' +
    '</div>';

  document.body.appendChild(launcher);
  document.body.appendChild(win);

  var msgs  = document.getElementById('fh-chat-messages');
  var input = document.getElementById('fh-chat-input');
  var send  = document.getElementById('fh-chat-send');

  // hide input initially (choices used first)
  setInputVisible(false);

  // ── AUTO-OPEN ────────────────────────────────────────────
  var started = false;
  setTimeout(function () {
    win.classList.add('visible');
    launcher.classList.add('open');
    started = true;
    startConversation();
  }, 800);

  // ── TOGGLE (click to minimise/reopen) ───────────────────
  launcher.addEventListener('click', function () {
    var isOpen = win.classList.toggle('visible');
    launcher.classList.toggle('open', isOpen);
    if (isOpen) setTimeout(scrollBottom, 50);
  });

  // ── CONVERSATION ────────────────────────────────────────
  function startConversation() {
    botSay(T.greeting, 0);
    botSay(T.howHelp, BOT_DELAY, function () {
      showChoices(T.services, onServiceChosen);
    });
  }

  function onServiceChosen(val) {
    state.service = val;
    userSay(val);
    removeChoices();
    botSay(T.greatChoice, BOT_DELAY, function () {
      state.step = 'name';
      setInputVisible(true);
      input.placeholder = T.namePlaceholder;
      input.focus();
    });
  }

  function onNameSubmitted(val) {
    state.name = val;
    userSay(val);
    setInputVisible(false);
    botSay(T.niceMeet + val + '! 😊', BOT_DELAY);
    botSay(T.askPhone, BOT_DELAY * 2, function () {
      state.step = 'phone';
      setInputVisible(true);
      input.placeholder = T.phonePlaceholder;
      input.focus();
    });
  }

  function onPhoneSubmitted(val) {
    state.phone = val;
    userSay(val);
    setInputVisible(false);
    state.step = 'done';

    // Fire WhatsApp immediately (always)
    fireWhatsApp();

    botSay(T.gotDetails, BOT_DELAY);
    botSay(T.callBack + state.name + '.', BOT_DELAY * 2);

    // Instagram ask
    botSay(T.igAsk, BOT_DELAY * 3.5, function () {
      showChoices([
        { label: T.igFollow, cls: 'amber', action: function () {
            window.open(IG_URL, '_blank');
            removeChoices();
            botSay(T.igThanks, BOT_DELAY);
            botSay(T.igBye, BOT_DELAY * 2);
          }
        },
        { label: T.igLater, cls: '', action: function () {
            removeChoices();
            botSay(T.bye, BOT_DELAY);
          }
        }
      ]);
    });
  }

  // ── WHATSAPP ────────────────────────────────────────────
  function fireWhatsApp() {
    var msg = encodeURIComponent(
      T.waLead + state.name +
      T.waPhone + state.phone +
      T.waService + state.service
    );
    window.open('https://wa.me/' + WA_NUMBER + '?text=' + msg, '_blank');
  }

  // ── INPUT HANDLING ──────────────────────────────────────
  send.addEventListener('click', submitInput);
  input.addEventListener('keydown', function (e) {
    if (e.key === 'Enter') submitInput();
  });

  function submitInput() {
    var val = input.value.trim();
    if (!val) return;
    input.value = '';
    if (state.step === 'name') { onNameSubmitted(val); return; }
    if (state.step === 'phone') { onPhoneSubmitted(val); return; }
  }

  // ── HELPERS ─────────────────────────────────────────────
  function botSay(text, delay, cb) {
    delay = delay || 0;
    setTimeout(function () {
      var typing = document.createElement('div');
      typing.className = 'fh-msg bot fh-typing';
      typing.innerHTML = '<div class="fh-bubble"><span></span><span></span><span></span></div>';
      msgs.appendChild(typing);
      scrollBottom();

      setTimeout(function () {
        msgs.removeChild(typing);
        var row = document.createElement('div');
        row.className = 'fh-msg bot';
        row.innerHTML = '<div class="fh-bubble">' + text + '</div>';
        msgs.appendChild(row);
        scrollBottom();
        if (cb) cb();
      }, 600);
    }, delay);
  }

  function userSay(text) {
    var row = document.createElement('div');
    row.className = 'fh-msg user';
    row.innerHTML = '<div class="fh-bubble">' + escHtml(text) + '</div>';
    msgs.appendChild(row);
    scrollBottom();
  }

  function showChoices(items, cb) {
    var wrap = document.createElement('div');
    wrap.className = 'fh-choices';
    wrap.id = 'fh-choices';
    items.forEach(function (item) {
      var btn = document.createElement('button');
      btn.className = 'fh-choice' + (item.cls ? ' ' + item.cls : '');
      btn.textContent = typeof item === 'string' ? item : item.label;
      btn.addEventListener('click', function () {
        if (typeof item === 'string') { cb(item); }
        else { item.action(); }
      });
      wrap.appendChild(btn);
    });
    msgs.appendChild(wrap);
    scrollBottom();
  }

  function removeChoices() {
    var el = document.getElementById('fh-choices');
    if (el) el.remove();
  }

  function setInputVisible(v) {
    var area = document.getElementById('fh-chat-input-area');
    area.style.display = v ? 'flex' : 'none';
  }

  function scrollBottom() {
    msgs.scrollTop = msgs.scrollHeight;
  }

  function escHtml(s) {
    return s.replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
  }
})();
