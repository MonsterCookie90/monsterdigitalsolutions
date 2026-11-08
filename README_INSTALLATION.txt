MONSTER DIGITAL SOLUTIONS – KUNDENCENTER VORSCHAU (08.11.2026)

Diese ZIP enthält genau vier Webdateien plus diese Anleitung:
- kundencenter.html (öffentliche gesperrte Anmelde-/Registrierungsseite)
- kundencenter-vorschau.html (interaktive Demo mit BEISPIELDATEN)
- kundencenter.css (isoliertes Design)
- kundencenter.js (lokale Bedienlogik ohne Datenabfragen)

INSTALLATION
1. Vorher Sicherung des bisherigen kundencenter.html anfertigen.
2. Die vier Webdateien ins Hauptverzeichnis des GitHub-Repositories hochladen.
3. Die vorhandene kundencenter.html ersetzen; andere Dateien nicht überschreiben.
4. Änderungen committen, anschließend beide Seiten mit Strg+F5 prüfen.

Diese Version greift NICHT in PayPal, Lizenzserver, Adminportal, Datenbanktabellen,
Supabase-RLS, Installationsdateien oder Datenschutzerklärung ein.
Sie lädt die vorhandene öffentliche mds-admin-config.js und erkennt damit die
vorhandene Supabase-Projektkonfiguration, stellt aber KEINE Kundendatenabfragen.
Die vorhandene Administrationsseite mds-admin.html wird nicht verändert.

WICHTIG: Die Beispieldaten sind frei erfunden und keine echten Bestellungen,
Lizenzen oder Rechnungen. PDF-Downloads, Login und Registrierung sind deaktiviert.
Zum Livebetrieb benötigt man verifizierte Kundenzuordnung, Supabase Auth,
serverseitige Row Level Security, sichere Rechnungsausgabe und Ticket-APIs.
Diese Backends werden mit dieser ZIP absichtlich NICHT neu angelegt.

Vorschau: https://monsterdigitalsolutions.de/kundencenter-vorschau.html
Gesperrte Seite: https://monsterdigitalsolutions.de/kundencenter.html
