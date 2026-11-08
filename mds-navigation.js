/* Einheitliche Hauptnavigation von Monster Digital Solutions */
(() => {
  const items = [['index.html','Startseite'],['software.html','Software'],['webdesign.html','Webdesign'],['musik.html','Musik'],['shop.html','Shop'],['partner.html','Partner'],['kontakt.html','Kontakt'],['kundencenter.html','Kundencenter']];
  const render = () => {
    const oldHeader = document.querySelector('header.top, header.site-header, body > header');
    if (!oldHeader || document.querySelector('.mds-global-nav')) return;
    const current = location.pathname.split('/').pop() || 'index.html';
    const links = items.map(([url,label]) => `<a href="${url}"${current === url ? ' class="active" aria-current="page"' : ''}>${label}</a>`).join('');
    const header = document.createElement('header');
    header.className = 'mds-global-nav';
    header.innerHTML = `<nav class="mds-nav-inner" aria-label="Hauptnavigation"><a class="mds-nav-brand" href="index.html" aria-label="Monster Digital Solutions – Startseite"><img src="assets/logo-reference.png" alt="Monster Digital Solutions"></a><button class="mds-nav-toggle" type="button" aria-label="Menü öffnen" aria-expanded="false" aria-controls="mds-nav-links">☰</button><div class="mds-nav-links" id="mds-nav-links">${links}<a class="mds-nav-cta" href="kontakt.html">✉ Anfrage stellen</a></div></nav>`;
    oldHeader.replaceWith(header);
    const button = header.querySelector('.mds-nav-toggle');
    const menu = header.querySelector('.mds-nav-links');
    button.addEventListener('click', () => {const open = menu.classList.toggle('mds-open');button.setAttribute('aria-expanded', String(open));button.setAttribute('aria-label', open ? 'Menü schließen' : 'Menü öffnen');});
  };
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', render);
  else render();
})();
