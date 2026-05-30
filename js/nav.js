(function () {
  'use strict';

  function init() {
    var brandsTrigger = document.querySelector('.has-dropdown > a[href="brands.html"]');
    if (!brandsTrigger) return;

    var li   = brandsTrigger.parentNode;
    var mega = li.querySelector('.nav-mega');
    if (!mega) return;

    /* Toggle on click */
    brandsTrigger.addEventListener('click', function (e) {
      e.preventDefault();
      var isOpen = mega.classList.toggle('open');
      brandsTrigger.setAttribute('aria-expanded', isOpen);
    });

    /* Close on outside click */
    document.addEventListener('click', function (e) {
      if (!li.contains(e.target)) {
        mega.classList.remove('open');
        brandsTrigger.setAttribute('aria-expanded', 'false');
      }
    });

    /* Close on Escape */
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape') {
        mega.classList.remove('open');
        brandsTrigger.setAttribute('aria-expanded', 'false');
      }
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
