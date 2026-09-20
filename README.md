# Einkaufsliste-Projekt

## Inhaltsverzeichnis

* [Über das Projekt](#über-das-projekt)
* [Voraussetzungen](#voraussetzungen)
* [Installation](#installation)
* [Datenbank](#datenbank)
* [Diagramm mit DBML](#diagramm-mit-dbml)
* [Diagramm mit Lucid](#diagramm-mit-lucid)
* [Datenbankmodell](#datenbankmodell)
* [Projektstruktur](#projektstruktur)
* [Verwendung](#verwendung)
* [Entwicklungsplan](#entwicklungsplan)
* [Architektur](#architektur)
* [Entwicklung](#entwicklung)
* [Bekannte Probleme](#bekannte-probleme)
* [Quellen](#quellen)
* [Lizenz](#lizenz)

---

## Über das Projekt

Das **Einkaufsliste-Projekt** ist eine Webanwendung zur Verwaltung gemeinsamer Einkaufslisten.

Das Projekt wird schrittweise entwickelt. Dabei wird die Anwendung von einer einfachen lokalen Version zu einer gemeinsam nutzbaren Anwendung mit Backend, Datenbank und späterer Internetanbindung erweitert.

Ziel des Projekts ist es, verschiedene Technologien und Konzepte der Webentwicklung praktisch anzuwenden. Dazu gehören unter anderem **HTML, CSS, JavaScript, PHP, SQL, REST-APIs, Datenbanken und Git/GitHub**.

Die einzelnen Entwicklungsschritte bauen aufeinander auf, sodass nach jedem größeren Schritt eine funktionsfähige Version der Anwendung vorhanden ist.

---

## Voraussetzungen

*Hier werden später benötigte Programme, Versionen und Abhängigkeiten eingetragen.*

Beispielsweise:

* Node.js
* npm
* MySQL / MariaDB
* Git
* [dbdiagram.io](https://dbdiagram.io/)

---

## Installation

*Hier werden später die notwendigen Schritte zur Einrichtung des Projekts beschrieben.*

### Abhängigkeiten installieren

```bash
npm install
```
---

## Datenbank

*Hier werden später Informationen zur verwendeten Datenbank dokumentiert.*

---

## Diagramm mit DBML

Um eine vorhandene SQL-Datei für [dbdiagram.io](https://dbdiagram.io/) zu verwenden, kann sie mit **sql2dbml** in das **DBML-Format** umgewandelt werden.

### 1. DBML CLI installieren

Zuerst wird das benötigte CLI-Tool über npm installiert:

```bash
npm install -g @dbml/cli
```

### 2. SQL-Datei konvertieren

Anschließend wird die SQL-Datei in eine DBML-Datei umgewandelt:

```bash
sql2dbml --mysql db.sql -o db.dbml
```

Dabei gilt:

* `db.sql` – die vorhandene SQL-Datei
* `db.dbml` – die erzeugte DBML-Datei
* `--mysql` – gibt an, dass die SQL-Datei MySQL-Syntax verwendet

Die erzeugte `db.dbml` kann anschließend in [dbdiagram.io](https://dbdiagram.io/) importiert werden, um das Datenbankschema grafisch darzustellen.

---

## Diagramm mit Lucid

Das Datenbankdiagramm kann alternativ mit [Lucid](https://lucid.app/) erstellt werden.

Dazu wird der vorbereitete Diagramm-Code in Lucid eingefügt. Lucid erstellt daraus automatisch das entsprechende Diagramm.

### Vorgehensweise

1. [Lucid](https://lucid.app/) öffnen.
2. Ein neues Diagramm erstellen.
3. Den vorbereiteten Code in den entsprechenden Bereich einfügen.
4. Das Diagramm aus dem Code generieren lassen.
5. Das erstellte Diagramm bei Bedarf bearbeiten und anschließend exportieren.

Der Vorteil dieser Methode ist, dass das Diagramm direkt aus dem Code erstellt werden kann und nicht jede Tabelle und Beziehung manuell gezeichnet werden muss.

---

## Datenbankmodell

Das Datenbankmodell wurde mit [dbdiagram.io](https://dbdiagram.io/) erstellt.

Das Diagramm dient zur grafischen Darstellung der Tabellen, Attribute und
Beziehungen der Datenbank.

![Datenbankdiagramm](docs/database-diagram.png)

---

## Projektstruktur

Die Projektstruktur ist wie folgt aufgebaut:

```text
Projekt/
├── AddToListForm.html
├── db.sql
├── index.html
├── insert_items.php
├── newUserRegistration.php
├── README.md
├── registrationHTML.html
├── SuccessfulRegistration.html
│
├── assets/
│   ├── fonts/
│   ├── icons/
│   └── img/
│
├── docs/
│   ├── database-diagram.png
│   ├── database-diagram.svg
│   │
│   ├── dbml/
│   │   ├── db.dbml
│   │   └── dbml-error.log
│   │
│   └── sample-data/
│       └── sample-data.json
│
├── scripts/
│   ├── list.js
│   └── script.js
│
└── styles/
    ├── lists.css
    ├── responsive.css
    ├── root.css
    ├── standard.css
    └── style.css
```

---

## Verwendung

*Hier wird später erklärt, wie das Projekt verwendet bzw. gestartet wird.*

### Starten

```bash
...
```

### Weitere Befehle

```bash
...
```

---

## Entwicklungsplan

Die Entwicklung erfolgt schrittweise. Die wichtigsten Entwicklungsschritte sind:

1. **Projektgrundlage**
   - GitHub-Repository einrichten
   - Entwicklungsumgebung vorbereiten
   - Anforderungen und Projektstruktur festlegen

2. **Lokale Einkaufsliste**
   - Einkaufsartikel erstellen, anzeigen, bearbeiten und löschen
   - einfache Benutzeroberfläche entwickeln
   - zunächst lokale Speicherung der Daten

3. **Backend und REST-API**
   - Backend mit PHP erstellen
   - API-Endpunkte für die Verwaltung der Einkaufsartikel
   - Verbindung zwischen Frontend und Backend

4. **SQL-Datenbank**
   - Datenbankmodell erstellen
   - Tabellen und Beziehungen definieren
   - Backend mit der SQL-Datenbank verbinden
   - CRUD-Operationen über die Datenbank

5. **Gemeinsame Nutzung**
   - Anwendung für mehrere Benutzer vorbereiten
   - gleichzeitige Verwendung in mehreren Browsern testen
   - Umgang mit Änderungen und veralteten Daten untersuchen

6. **Veröffentlichung im Internet**
   - Linux-Server bzw. VPS verwenden
   - Backend und Datenbank auf dem Server bereitstellen
   - Webserver konfigurieren
   - Anwendung über das Internet erreichbar machen

7. **Automatische Aktualisierung**
   - regelmäßige Abfragen des Servers (Polling)
   - Einkaufsliste automatisch aktualisieren
   - unnötige Datenübertragungen möglichst vermeiden

Nach diesen sieben Schritten ist eine vollständige Basisversion der Anwendung vorhanden.

Weitere Funktionen wie **WebSockets, mehrere Einkaufslisten, Archivierung, Auswertungen oder IoT-Anbindungen** können anschließend optional ergänzt werden.

---

## Architektur

Die Anwendung wird grundsätzlich nach dem Prinzip einer Client-Server-Architektur aufgebaut.

```text
Benutzer
   │
   ▼
Browser / Frontend
   │
   │ HTTP / REST
   ▼
Backend / API
   │
   │ SQL
   ▼
SQL-Datenbank
```

---

## Entwicklung

*Hier können später Informationen für die Weiterentwicklung des Projekts ergänzt werden.*

### Git

*Hier können später Git-Befehle und der Workflow für das Projekt dokumentiert werden.*

### Änderungen

*Hier können später Regeln für Änderungen, Branches, Commits oder Pull Requests ergänzt werden.*

---

## Bekannte Probleme

*Hier werden später bekannte Fehler oder Einschränkungen dokumentiert.*

---

## Quellen

* [DBML CLI – Dokumentation](https://dbml.dbdiagram.io/cli/)
* [dbdiagram.io](https://dbdiagram.io/)
* [Emojicombos – Vertical Ellipsis](https://emojicombos.com/vertical-ellipsis)
* [HotSymbol – Vertical Ellipsis](https://www.hotsymbol.com/symbol/vertical-ellipsis)

---

## Lizenz

*Hier kann später die verwendete Lizenz eingetragen werden.*
