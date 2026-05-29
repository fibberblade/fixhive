(function () {
  'use strict';

  var PAGES = [
    { t: 'Home',                    u: '/',                              d: 'FixHive car repair & service garage, Dubai Investment Park' },
    { t: 'Services Overview',       u: '/services.html',                 d: 'All car repair and maintenance services at FixHive' },
    { t: 'About FixHive',           u: '/about.html',                    d: 'Our garage, team, 18+ years experience and values' },
    { t: 'Contact Us',              u: '/contact.html',                  d: 'Address, phone, WhatsApp, opening hours, map' },
    { t: 'Service Packages',        u: '/service-packages.html',         d: 'Maintenance packages — Basic, Essential, Premium, Elite' },
    { t: 'Special Offers',          u: '/#promotions',                   d: 'Current promotions, seasonal deals and discounts' },
    { t: 'AC & Cooling',            u: '/ac-service.html',               d: 'Air conditioning service, refrigerant refill, compressor, cabin filter' },
    { t: 'Engine & Transmission',   u: '/engine.html',                   d: 'Engine repair, oil change, timing belt, transmission service' },
    { t: 'Brakes & Suspension',     u: '/brakes.html',                   d: 'Brake pads, discs, suspension, shock absorbers, wheel alignment' },
    { t: 'Tyres & Wheels',          u: '/tyres.html',                    d: 'Tyre fitting, balancing, wheel alignment, tyre rotation, TPMS' },
    { t: 'Body & Exterior',         u: '/body.html',                     d: 'Dent repair, paint, bodywork restoration, scratch removal, PPF' },
    { t: 'Battery & Electrical',    u: '/electrical.html',               d: 'Car battery replacement, alternator, starter motor, electrical diagnostics' },
    { t: 'Hybrid & EV Service',     u: '/hybrid-ev.html',                d: 'Hybrid and electric vehicle service, battery health, regenerative brakes' },
    { t: 'Pre-Purchase Inspection', u: '/pre-purchase-inspection.html',  d: 'Used car inspection before buying — 25-point check' },
    { t: 'Detailing & Protection',  u: '/detailing.html',                d: 'Car detailing, ceramic coating, PPF film, paint correction, polishing' },
    { t: 'Gearbox & Drivetrain',    u: '/gearbox.html',                  d: 'Automatic gearbox repair, differential, driveshaft, CV joint service' },
    { t: 'Advanced Diagnostics',    u: '/diagnostics.html',              d: 'OBD-II diagnostics, warning lights, fault codes, engine check light' },
    { t: 'BMW Repair Dubai',        u: '/bmw-repair-dubai.html',         d: 'BMW specialist repair and service Dubai Investment Park' },
    { t: 'Mercedes-Benz Repair',    u: '/mercedes-benz-repair-dubai.html', d: 'Mercedes-Benz service, repair and maintenance Dubai' },
    { t: 'Audi Repair Dubai',       u: '/audi-repair-dubai.html',        d: 'Audi specialist repair, service and diagnostics Dubai' },
    { t: 'Toyota Repair Dubai',     u: '/toyota-repair-dubai.html',      d: 'Toyota service, repair and maintenance Dubai' },
    { t: 'Honda Repair Dubai',      u: '/honda-repair-dubai.html',       d: 'Honda repair and service centre Dubai' },
    { t: 'Nissan Repair Dubai',     u: '/nissan-repair-dubai.html',      d: 'Nissan repair, maintenance and service Dubai' },
    { t: 'Hyundai Repair Dubai',    u: '/hyundai-repair-dubai.html',     d: 'Hyundai repair and service centre Dubai' },
    { t: 'Kia Repair Dubai',        u: '/kia-repair-dubai.html',         d: 'Kia repair, service and maintenance Dubai' },
    { t: 'Ford Repair Dubai',       u: '/ford-repair-dubai.html',        d: 'Ford repair specialist and service centre Dubai' },
    { t: 'Land Rover Repair Dubai', u: '/land-rover-repair-dubai.html',  d: 'Land Rover and Range Rover repair and service Dubai' }
  ];

  function esc(s) {
    return String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/"/g,'&quot;');
  }

  function init() {
    var wrap    = document.getElementById('navSearch');
    var input   = document.getElementById('navSearchInput');
    var results = document.getElementById('navSearchResults');
    if (!wrap || !input || !results) return;

    /* Close when clicking outside */
    document.addEventListener('click', function (e) {
      if (!wrap.contains(e.target)) wrap.classList.remove('open');
    });

    /* Escape key closes */
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape') {
        wrap.classList.remove('open');
        input.value = '';
        results.innerHTML = '';
      }
    });

    /* Live search on input */
    input.addEventListener('input', function () {
      var q = this.value.trim().toLowerCase();
      results.innerHTML = '';
      if (q.length < 2) return;

      var hits = PAGES.filter(function (p) {
        return (p.t + ' ' + p.d).toLowerCase().indexOf(q) !== -1;
      }).slice(0, 7);

      if (!hits.length) {
        results.innerHTML = '<div class="nav-search-empty">No results for &ldquo;' + esc(q) + '&rdquo;</div>';
        return;
      }

      results.innerHTML = hits.map(function (p) {
        return '<a href="' + p.u + '" class="nav-search-item">' +
          '<span class="nav-search-item-title">' + esc(p.t) + '</span>' +
          '<span class="nav-search-item-desc">'  + esc(p.d) + '</span>' +
          '</a>';
      }).join('');

      /* Close on result click */
      [].forEach.call(results.querySelectorAll('.nav-search-item'), function (a) {
        a.addEventListener('click', function () {
          wrap.classList.remove('open');
          input.value = '';
          results.innerHTML = '';
        });
      });
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
