(function () {
  'use strict';

  /* ── Desktop brands mega-menu (click toggle) ── */
  function initBrandsMega() {
    var brandsTrigger = document.querySelector('.has-dropdown > a[href="brands.html"]');
    if (!brandsTrigger) return;
    var li   = brandsTrigger.parentNode;
    var mega = li.querySelector('.nav-mega');
    if (!mega) return;
    brandsTrigger.addEventListener('click', function (e) {
      e.preventDefault();
      var isOpen = mega.classList.toggle('open');
      brandsTrigger.setAttribute('aria-expanded', isOpen);
    });
    document.addEventListener('click', function (e) {
      if (!li.contains(e.target)) {
        mega.classList.remove('open');
        brandsTrigger.setAttribute('aria-expanded', 'false');
      }
    });
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape') {
        mega.classList.remove('open');
        brandsTrigger.setAttribute('aria-expanded', 'false');
      }
    });
  }

  /* ── Mobile accordion menu ── */
  var MENU_DATA = [
    {
      label: 'About', href: '/about.html',
      children: [
        { label: 'Our Values',          href: '/about.html#values' },
        { label: 'How We Got Here',     href: '/about.html#history' },
        { label: 'Why Choose FixHive',  href: '/about.html#why-fixhive' },
        { label: 'Stay Connected',      href: '/about.html#social' },
        { label: 'The Team',            href: '/team.html' }
      ]
    },
    {
      label: 'Services', href: '/services.html',
      children: [
        { label: 'Car AC Repair Dubai',         href: '/car-ac-repair-dubai.html' },
        { label: 'Engine Repair Dubai',         href: '/engine-repair-dubai.html' },
        { label: 'Oil Change Dubai',            href: '/oil-change-dubai.html' },
        { label: 'Brakes & Suspension',         href: '/brake-repair-dubai.html' },
        { label: 'Suspension Repair Dubai',     href: '/suspension-repair-dubai.html' },
        { label: 'Tyres & Wheels',              href: '/tyres.html' },
        { label: 'Body & Exterior',             href: '/body.html' },
        { label: 'Electrical Repair Dubai',     href: '/electrical-repair-dubai.html' },
        { label: 'Hybrid & EV',                 href: '/hybrid-ev.html' },
        { label: 'Pre-Purchase Inspection Dubai', href: '/pre-purchase-inspection-dubai.html' },
        { label: 'Service Packages',            href: '/service-packages.html' },
        { label: 'Car Detailing Dubai',         href: '/car-detailing-dubai.html' },
        { label: 'Gearbox Repair Dubai',        href: '/gearbox-repair-dubai.html' },
        { label: 'Major Repairs',               href: '/engine-gearbox-overheating-repair-dubai.html' },
        { label: 'Car Diagnostics Dubai',       href: '/car-diagnostics-dubai.html' },
        { label: 'Car Programming Dubai',       href: '/car-programming-dubai.html' }
      ]
    },
    { label: '🔬 Free AI Diagnosis', href: '/diagnosis.html', cls: 'mob-diagnosis' },
    {
      label: 'Brands', href: '/brands.html', brands: true,
      children: [
        { label: 'Alfa Romeo',    href: '/alfa-romeo-repair-dubai.html' },
        { label: 'Aston Martin',  href: '/aston-martin-repair-dubai.html' },
        { label: 'Audi',          href: '/audi-repair-dubai.html' },
        { label: 'Bentley',       href: '/bentley-repair-dubai.html' },
        { label: 'BMW',           href: '/bmw-repair-dubai.html' },
        { label: 'Brabus',        href: '/brabus-repair-dubai.html' },
        { label: 'BYD',           href: '/byd-repair-dubai.html' },
        { label: 'Cadillac',      href: '/cadillac-repair-dubai.html' },
        { label: 'Changan',       href: '/changan-repair-dubai.html' },
        { label: 'Chery',         href: '/chery-repair-dubai.html' },
        { label: 'Chevrolet',     href: '/chevrolet-repair-dubai.html' },
        { label: 'Chrysler',      href: '/chrysler-repair-dubai.html' },
        { label: 'Corvette',      href: '/corvette-repair-dubai.html' },
        { label: 'Daihatsu',      href: '/daihatsu-repair-dubai.html' },
        { label: 'Dodge',         href: '/dodge-repair-dubai.html' },
        { label: 'Ferrari',       href: '/ferrari-repair-dubai.html' },
        { label: 'Fiat',          href: '/fiat-repair-dubai.html' },
        { label: 'Ford',          href: '/ford-repair-dubai.html' },
        { label: 'GAC',           href: '/gac-repair-dubai.html' },
        { label: 'Geely',         href: '/geely-repair-dubai.html' },
        { label: 'Genesis',       href: '/genesis-repair-dubai.html' },
        { label: 'GMC',           href: '/gmc-repair-dubai.html' },
        { label: 'Haval',         href: '/haval-repair-dubai.html' },
        { label: 'Honda',         href: '/honda-repair-dubai.html' },
        { label: 'HongQi',        href: '/hongqi-repair-dubai.html' },
        { label: 'Hummer',        href: '/hummer-repair-dubai.html' },
        { label: 'Hyundai',       href: '/hyundai-repair-dubai.html' },
        { label: 'Infiniti',      href: '/infiniti-repair-dubai.html' },
        { label: 'Isuzu',         href: '/isuzu-repair-dubai.html' },
        { label: 'Jaguar',        href: '/jaguar-repair-dubai.html' },
        { label: 'Jeep',          href: '/jeep-repair-dubai.html' },
        { label: 'Jetour',        href: '/jetour-repair-dubai.html' },
        { label: 'Kia',           href: '/kia-repair-dubai.html' },
        { label: 'Lamborghini',   href: '/lamborghini-repair-dubai.html' },
        { label: 'Land Rover',    href: '/land-rover-repair-dubai.html' },
        { label: 'Lexus',         href: '/lexus-repair-dubai.html' },
        { label: 'Lincoln',       href: '/lincoln-repair-dubai.html' },
        { label: 'Maserati',      href: '/maserati-repair-dubai.html' },
        { label: 'Maybach',       href: '/maybach-repair-dubai.html' },
        { label: 'Mazda',         href: '/mazda-repair-dubai.html' },
        { label: 'Mercedes-Benz', href: '/mercedes-benz-repair-dubai.html' },
        { label: 'MG',            href: '/mg-repair-dubai.html' },
        { label: 'MINI',          href: '/mini-repair-dubai.html' },
        { label: 'Mitsubishi',    href: '/mitsubishi-repair-dubai.html' },
        { label: 'Nissan',        href: '/nissan-repair-dubai.html' },
        { label: 'Peugeot',       href: '/peugeot-repair-dubai.html' },
        { label: 'Porsche',       href: '/porsche-repair-dubai.html' },
        { label: 'RAM',           href: '/ram-repair-dubai.html' },
        { label: 'Range Rover',   href: '/range-rover-repair-dubai.html' },
        { label: 'Renault',       href: '/renault-repair-dubai.html' },
        { label: 'Rolls-Royce',   href: '/rolls-royce-repair-dubai.html' },
        { label: 'Subaru',        href: '/subaru-repair-dubai.html' },
        { label: 'Suzuki',        href: '/suzuki-repair-dubai.html' },
        { label: 'Tesla',         href: '/tesla-repair-dubai.html' },
        { label: 'Toyota',        href: '/toyota-repair-dubai.html' },
        { label: 'Volkswagen',    href: '/volkswagen-repair-dubai.html' },
        { label: 'Volvo',         href: '/volvo-repair-dubai.html' }
      ]
    },
    {
      label: 'Packages', href: '/service-packages.html',
      children: [
        { label: 'FixCare',  href: '/service-packages.html#fixcare' },
        { label: 'FixPrime', href: '/service-packages.html#fixprime' },
        { label: 'FixElite', href: '/service-packages.html#fixelite' }
      ]
    },
    { label: '🔥 Special Offers', href: '/offers.html', cls: 'mob-offers' },
    { label: 'Contact', href: '/contact.html' },
    {
      label: 'More', href: '#',
      children: [
        { label: 'FAQ',     href: '/faq.html' },
        { label: 'Blog',    href: '/blogs.html' },
        { label: 'Gallery', href: '/gallery.html' }
      ]
    },
    { label: '📲 Book on WhatsApp', href: 'https://wa.me/971541699500?text=Hey%2C%20I%20saw%20your%20website%2C%20I%20wanted%20to%20book%20an%20appointment', cls: 'mob-whatsapp' }
  ];

  function buildMobileMenu() {
    var menu = document.getElementById('mobileMenu');
    if (!menu) return;

    var html = '';
    for (var i = 0; i < MENU_DATA.length; i++) {
      var item = MENU_DATA[i];
      var hasChildren = item.children && item.children.length;
      var linkCls = 'mob-row-link' + (item.cls ? ' ' + item.cls : '');

      html += '<div class="mob-item">';
      html += '<div class="mob-row">';
      html += '<a href="' + item.href + '" class="' + linkCls + '">' + item.label + '</a>';
      if (hasChildren) {
        html += '<button class="mob-toggle" aria-label="Expand">&#9660;</button>';
      }
      html += '</div>';

      if (hasChildren) {
        if (item.brands) {
          html += '<div class="mob-sub-brands">';
          for (var j = 0; j < item.children.length; j++) {
            html += '<a href="' + item.children[j].href + '">' + item.children[j].label + '</a>';
          }
          html += '<a href="/brands.html" class="mob-brands-all">View All Brands →</a>';
          html += '</div>';
        } else {
          html += '<div class="mob-sub">';
          for (var k = 0; k < item.children.length; k++) {
            var child = item.children[k];
            var childCls = child.disabled ? ' class="mob-sub-disabled"' : '';
            html += '<a href="' + child.href + '"' + childCls + '>' + child.label + '</a>';
          }
          html += '</div>';
        }
      }

      html += '</div>';
    }

    menu.innerHTML = html;

    /* accordion toggle */
    var toggles = menu.querySelectorAll('.mob-toggle');
    for (var t = 0; t < toggles.length; t++) {
      toggles[t].addEventListener('click', function () {
        var parentItem = this.closest('.mob-item');
        var isOpen = parentItem.classList.toggle('open');
        this.setAttribute('aria-expanded', isOpen);
      });
    }
  }

  function init() {
    initBrandsMega();
    buildMobileMenu();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
