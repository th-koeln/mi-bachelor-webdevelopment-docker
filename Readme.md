# Dockerdemo Hugo
Anbei ein Beispiel, wie eine Docker Umgebung für die Entwicklung mit dem Hugo Static Page Generator genutzt werden kann.

**Vorteile**
- auf den lokalen Systemen muss kein Hugo, kein Go und weitere Abhängigkeiten installiert sein
- definierte Umgebung für alle Developer
- definierte Umgebung für den späteren Betrieb
- bei großen Projekten wird lokaler Festspeicher nur temoprär gebraucht

**Nachteile**
- höhere Abstraktion und damit Intransparenz der Umgebung
- Entwicklungstools wie gulp, npm etc. werden trotzdem lokal benötigt


## Getting Started

### Prerequisites
Damit der ganze Spaß läuft, müssen auf der Maschine folgende Komponenten vorhanden sein:
- [NodeJS](https://nodejs.org/en/download/)
- [npm](https://www.npmjs.com/get-npm)
- [Docker](https://www.docker.com/get-started)

### Repo clonen 
<pre>
git clone git@github.com:th-koeln/mi-bachelor-webdevelopment-docker.git
cd mi-bachelor-webdevelopment-docker
</pre>

### ggf. NPM installieren
`npm install`

### Docker Container bauen
`npm run dh-build`

### Docker Container starten
`npm run dh-serve`

### Docker Container löschen
`npm run dh-remove`

## Development

### Gulp
Taskrunner im Watchmode laufen lassen via
`npm run gulp`

### Verzeichnisstruktur
<pre>
/site
  /archetypes ..... nicht relevant
  /content ........ Inhalte als Markdown Files und Media Assets
  /docs ........... ausgespielte Inhalte
  /resources ...... generierte Media Derivate
  /src/* .......... Quellverzeichnis für SASS, JS, etc. die noch kompiliert werden sollen
  /static/* ....... Quellverzeichnis für alles, was nicht kompiliert werden soll
  /themes/cda ..... Templates und SASS Files für das Lucas Cranach Digital Archive
    /_default ..... Default Templates
    /partials ..... Partials(Templateschnippsel)
      /m/* ........ Moleküle
      /system/* ... übergreifende Layout Schnippsel
      /functions/*  funktionale Layout Schnippsel
    /patternlab/* . Templates zur Darstellung der PatternLib
    /shortcodes/* . Templates die in Markdown Files eingesetzt werden können
</pre>
