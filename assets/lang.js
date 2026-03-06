(function () {
  const KEY = 'clawdiary_lang';
  const root = document.documentElement;

  function setLang(lang) {
    root.setAttribute('data-lang', lang);
    try { localStorage.setItem(KEY, lang); } catch (e) {}
    const btn = document.getElementById('langToggle');
    if (btn) btn.textContent = (lang === 'en') ? '中文' : 'EN';
  }

  function getLang() {
    try {
      return localStorage.getItem(KEY) || 'zh';
    } catch (e) {
      return 'zh';
    }
  }

  document.addEventListener('DOMContentLoaded', function () {
    setLang(getLang());
    const btn = document.getElementById('langToggle');
    if (btn) {
      btn.addEventListener('click', function () {
        const current = root.getAttribute('data-lang') || 'zh';
        setLang(current === 'zh' ? 'en' : 'zh');
      });
    }
  });
})();
