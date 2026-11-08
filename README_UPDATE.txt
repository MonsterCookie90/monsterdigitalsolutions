MONSTER DIGITAL SOLUTIONS – WEBSITE-UPDATE 08.11.2026

INHALT
- Vier responsive HTML-Demowebsites
- Desktop-, Tablet- und Smartphone-Vorschau
- Neuer Webdesign-Wunschkonfigurator (unverbindliche E-Mail-Anfrage)
- Aktualisierte Software-Übersichtsseite ohne Tarif-Preistabelle
- Kundencenter: gesperrte Hinweis-Seite, KEIN Login/Backend
- Usercentrics-Einbindung mit Settings-ID SRDdE9YIAR2-Q-
- NEU: Datenschutzerklärung vom 08.11.2026 (vollständiger bereitgestellter Text) mit ergänztem MILO-Abschnitt ersetzt datenschutz.html.

INSTALLATION (WINDOWS)
1. ZIP in einen lokalen Ordner entpacken.
2. Das vollständige GitHub-Repository lokal klonen oder herunterladen und entpacken.
3. PowerShell öffnen und INSTALL_UPDATE.ps1 mit -WebsitePfad <Ordner> starten.
   Beispiel: powershell -ExecutionPolicy Bypass -File .\INSTALL_UPDATE.ps1 -WebsitePfad "C:\Users\...\monsterdigitalsolutions"
4. Der Installer legt vor Änderungen einen Sicherungsordner _mds_backup_... an.
5. Änderungen lokal prüfen, erst danach in GitHub main hochladen.

WICHTIG
- Dieses ZIP ist ein Änderungs-Paket, keine vollständige 197-MB-Sicherung.
- Bestell-, Zahlungs-, Lizenz- und Installationsdateien werden nicht ersetzt.
- datenschutz.html wird bewusst aktualisiert; Original wird im Backup-Verzeichnis gesichert. Die neue Fassung basiert auf dem vom Nutzer am 08.11.2026 bereitgestellten Rechtstext und ergänzt eine technische MILO-Erklärung. Usercentrics wird bei der Installation in <head> eingebunden.
- Prüfen: Der zugelieferte Text enthält auch noch nicht aktive Angebote/Funktionen (z.B. Kundenkonto, Upload, Google Pay) und eine Spotify-Rechtsgrundlage, die vor Veröffentlichung juristisch mit der tatsächlichen Website abgeglichen werden muss.
- MILO-Ergänzung wurde technisch erstellt und ist keine Prüfung durch die IT-Recht Kanzlei.
- In Usercentrics müssen Domain, Dienste und insbesondere Spotify korrekt eingerichtet sein.
- Das mitgelieferte Usercentrics-Blockierungsskript allein garantiert nicht vollständige Blockierung.
- Spotify wird auf bestehenden HTML-Seiten zusätzlich manuell mit data-usercentrics="Spotify" gekennzeichnet. Der Dienstname muss in Usercentrics GENAU so angelegt sein.
- Die finale rechtliche und browserseitige Prüfung bleibt erforderlich.
- Ein abgesichertes Kundencenter-Backend ist NICHT enthalten und NICHT aktiviert.

KORREKTUR NAVIGATION (08.11.2026)
- datenschutz.html enthält jetzt eine obere Navigation, Zurück-zur-Startseite-Schaltfläche und die vollständige Fußzeile (Impressum, Datenschutz, AGB, Widerruf, Kontakt, Ideen & Feedback).
- Das Kundencenter ist unter kundencenter.html als gesperrte Hinweisseite vorgesehen; Login und Registrierung sind noch nicht implementiert.

KORREKTUR KUNDENCENTER / MILO (08.11.2026)
- Hauptnavigation zeigt nach „Kontakt“ den Eintrag „Kundencenter“.
- Kundencenter hat zwei sichtbare, deaktivierte Buttons: „Anmelden“ und „Kostenlos registrieren“.
- Es gibt keinen funktionierenden Login und keine Registrierung; keine Kundendaten werden verarbeitet.
- MILO-Chatfenster auf maximal 290 px verschmälert und weiter nach rechts gesetzt.
- Installer passt mds-navigation.js und mds-extra.css mit Backup an; Zahlungs- und Lizenzfunktionen bleiben unangetastet.
- Vor Veröffentlichung zusätzlich Navigation auf Mobilgeräten und MILO bei verschiedenen Bildschirmbreiten prüfen.
