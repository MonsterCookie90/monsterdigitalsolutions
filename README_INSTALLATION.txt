MONSTER DIGITAL SOLUTIONS – KUNDENCENTER-GESAMTVORLAGE (08.11.2026)

Enthalten:
- kundencenter.html – öffentlich gesperrte Seite, Login und Registrierung deaktiviert
- kundencenter-vorschau.html – interaktive Vorschau mit Beispieldaten
- kundencenter.css, kundencenter.js – Darstellung, Menü und lokale Interaktionen
- kundencenter-inhalte.json – strukturierter Funktionsplan und Hilfeartikel

Alle vereinbarten Unterfunktionen der Bereiche Dashboard, Bestellungen,
Rechnungen, Lizenzen, Downloads, Support-Tickets, Projektstatus,
Hilfe-Center und Konto sind als Bedienoberfläche aufgenommen.

SICHERHEIT / FUNKTIONSSTAND:
- Keine echten Kundenkonten, keine Registrierung oder Anmeldung.
- Keine echten Bestellungen, Rechnungen, Lizenzen oder Projektinformationen.
- Keine PayPal-/Supabase-/Lizenzserver-Abfrage. Bestehende Supabase-Konfiguration
  kann erkannt werden, es werden aber KEINE Kundeninformationen abgerufen.
- Suche im Hilfe-Center, Bereichswechsel und beispielhafte Bestell-/Rechnungsfilter funktionieren lokal.
- Nicht angeschlossene Funktionen sind deutlich als gesperrt gekennzeichnet.
- Niemals echte Lizenzschlüssel, Kundendaten oder Zugriffsschlüssel ins GitHub-Repository hochladen.

INSTALLATION:
1. ZIP entpacken.
2. Diese fünf Website-Dateien im Hauptverzeichnis des GitHub-Repositories hochladen.
3. Bestehende Dateien gleichen Namens ersetzen. Keine anderen Dateien löschen.
4. Commit changes auswählen.
5. Die gesperrte Seite prüfen: https://monsterdigitalsolutions.de/kundencenter.html
6. Demo aufrufen: https://monsterdigitalsolutions.de/kundencenter-vorschau.html

Die Integration echter Kundendaten erfordert später eine geprüfte Authentifizierung,
serverseitige Nutzer-Zuordnung, RLS und geeignete vorhandene Schnittstellen.
Diese Version erstellt keine neuen Tabellen, Endpunkte oder Abonnements.
Die Beispielvorschau ist öffentlich erreichbar: keine realen Daten eintragen.
