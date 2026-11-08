param(
  [Parameter(Mandatory=$true)][string]$WebsitePfad
)
$ErrorActionPreference='Stop'
$site=(Resolve-Path -LiteralPath $WebsitePfad).Path
$src=Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not (Test-Path -LiteralPath (Join-Path $site 'index.html'))) { throw 'Im Zielordner fehlt index.html. Bitte den GitHub-Repository-Ordner auswählen.' }
if (-not (Test-Path -LiteralPath (Join-Path $site 'datenschutz.html'))) { throw 'Im Zielordner fehlt datenschutz.html. Abbruch zum Schutz der vorhandenen Website.' }
$backup=Join-Path $site ('_mds_backup_'+(Get-Date -Format 'yyyyMMdd_HHmmss'))
New-Item -ItemType Directory -Force -Path $backup | Out-Null
$utf8=New-Object System.Text.UTF8Encoding($false)
function ReadUtf8([string]$file){ return [IO.File]::ReadAllText($file,[Text.Encoding]::UTF8) }
function WriteUtf8([string]$file,[string]$contents){ [IO.File]::WriteAllText($file,$contents,$utf8) }
function BackupOne([string]$relative){ $from=Join-Path $site $relative; if(Test-Path -LiteralPath $from){$to=Join-Path $backup $relative;$dir=Split-Path -Parent $to;if(!(Test-Path $dir)){New-Item -ItemType Directory -Force -Path $dir|Out-Null};Copy-Item -LiteralPath $from -Destination $to -Force} }
$cmp=@'
<!-- Monster Digital Solutions: Usercentrics CMP -->
<link rel="dns-prefetch" href="//app.usercentrics.eu">
<link rel="dns-prefetch" href="//api.usercentrics.eu">
<link rel="preconnect" href="//privacy-proxy.usercentrics.eu">
<link rel="preload" href="//privacy-proxy.usercentrics.eu/latest/uc-block.bundle.js" as="script">
<script id="usercentrics-cmp" data-eu-mode="true" data-settings-id="SRDdE9YIAR2-Q-" src="https://app.eu.usercentrics.eu/browser-ui/latest/loader.js" async></script>
<script src="https://privacy-proxy.usercentrics.eu/latest/uc-block.bundle.js"></script>
<!-- Ende Usercentrics CMP -->
'@
$copied=@('mds-update.css','webdesign-demos.html','webdesign-anfrage.html','kundencenter.html','vergleich.html', 'demos/friseur.html','demos/handwerk.html','demos/restaurant.html','demos/beratung.html')
foreach($relative in $copied){
  $from=Join-Path $src $relative;$to=Join-Path $site $relative
  if(!(Test-Path -LiteralPath $from)){throw "Paket unvollständig: $relative"}
  BackupOne $relative
  $dir=Split-Path -Parent $to;if(!(Test-Path $dir)){New-Item -ItemType Directory -Force -Path $dir|Out-Null}
  Copy-Item -LiteralPath $from -Destination $to -Force
}
# Das bestehende Rechtstext-Dokument bleibt unverändert bis auf die CMP-Einbindung im HEAD.
# Die vorhandenen Kauf-, Lizenz-, Download- und Administrator-JS-Dateien werden nicht gelöscht.
$htmlFiles=Get-ChildItem -LiteralPath $site -Filter '*.html' -File | Where-Object { $_.Name -notlike 'startseite-vorschau.html' }
foreach($file in $htmlFiles){
  $rel=$file.Name
  $content=ReadUtf8 $file.FullName
  if($content -notmatch 'id="usercentrics-cmp"'){
    BackupOne $rel
    $content=[regex]::Replace($content,'(?i)</head>',$cmp+"`r`n</head>",1)
  }
  # Spotify-iframe manuell als optionalen Dienst markieren; kein automatisches Laden vor Einwilligung.
  $content=[regex]::Replace($content, '(?i)\bsrc=("|\x27)(https://open\.spotify\.com/embed/[^"\x27]+)\1', 'data-src=$1$2$1 data-usercentrics="Spotify"')
  WriteUtf8 $file.FullName $content
}
# In der dynamischen App-Ansicht eingebettete Spotify-Player ebenfalls blockierbar markieren.
$appPath=Join-Path $site 'app.js'
if(Test-Path -LiteralPath $appPath){
  BackupOne 'app.js'
  $app=ReadUtf8 $appPath
  $app=[regex]::Replace($app, '(?i)\bsrc=("|\x27)(https://open\.spotify\.com/embed/[^"\x27]+)\1', 'data-src=$1$2$1 data-usercentrics="Spotify"')
  WriteUtf8 $appPath $app
}
# Deutlich sichtbare Einbindung der Demos und des Wunschkonfigurators auf Webdesign-Seite.
$web=Join-Path $site 'webdesign.html'
if(Test-Path -LiteralPath $web){
  BackupOne 'webdesign.html'
  $c=ReadUtf8 $web
  if($c -notmatch 'id="mds-update-web-links"'){
    $block=@'
<section id="mds-update-web-links" class="mds-update-area" style="padding-top:20px;padding-bottom:20px"><h2>Dein neuer Webauftritt</h2><p>Entdecke vier echte Beispielseiten und stelle deine Wünsche ganz einfach zusammen.</p><div class="mds-link-grid"><a class="mds-primary" href="webdesign-demos.html">Vier Webdesign-Demos ansehen</a><a class="mds-primary" href="webdesign-anfrage.html">Website-Wunschkonfigurator</a></div></section>
'@
    $c=[regex]::Replace($c,'(?i)</body>',$block+"`r`n</body>",1)
  }
  if($c -notmatch 'href="mds-update.css"'){ $c=[regex]::Replace($c,'(?i)</head>','<link rel="stylesheet" href="mds-update.css">' + "`r`n</head>",1) }
  WriteUtf8 $web $c
}
Write-Host 'Update-Dateien vorbereitet. Datenschutztext inhaltlich beibehalten.' -ForegroundColor Green
Write-Host "Backup: $backup" -ForegroundColor Cyan
Write-Host 'Vor einer Veröffentlichung: Spotify-Einwilligung, CMP, Links, Webdesign-Formular, PayPal und Lizenzen testen.' -ForegroundColor Yellow
Write-Host 'Es wurden KEINE Änderungen direkt auf GitHub veröffentlicht.'
