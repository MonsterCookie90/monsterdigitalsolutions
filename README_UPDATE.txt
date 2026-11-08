MONSTER DIGITAL SOLUTIONS – WEBSITE-UPDATE 08.11.2026

INHALT
- Vier responsive HTML-Demowebsites
- Desktop-, Tablet- und Smartphone-Vorschau
- Neuer Webdesign-Wunschkonfigurator (unverbindliche E-Mail-Anfrage)
- Aktualisierte Software-Übersichtsseite ohne Tarif-Preistabelle
- Kundencenter: gesperrte Hinweis-Seite, KEIN Login/Backend
- Usercentrics-Einbindung mit Settings-ID SRDdE9YIAR2-Q-
- Existierende Datenschutzerklärung mit MILO wird NICHT überschrieben.

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
- Datenschutzerklärung wird inhaltlich nicht umgeschrieben; nur CMP-Skripte in <head> ergänzt.
- In Usercentrics müssen Domain, Dienste und insbesondere Spotify korrekt eingerichtet sein.
- Das mitgelieferte Usercentrics-Blockierungsskript allein garantiert nicht vollständige Blockierung.
- Spotify wird auf bestehenden HTML-Seiten zusätzlich manuell mit data-usercentrics="Spotify" gekennzeichnet. Der Dienstname muss in Usercentrics GENAU so angelegt sein.
- Die finale rechtliche und browserseitige Prüfung bleibt erforderlich.
- Ein abgesichertes Kundencenter-Backend ist NICHT enthalten und NICHT aktiviert.
