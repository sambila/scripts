# Scripts Collection

Eine Sammlung nützlicher Shell-Skripte und Python-Tools für System-Administration und Datei-Management.

## 📋 Überblick

Dieses Repository enthält verschiedene Automatisierungs-Skripte für alltägliche administrative Aufgaben, Datei-Management und Server-Wartung.

## 🛠️ Verfügbare Skripte

### System Administration
- **`checknstartpq.py`** - PostgreSQL Service Monitor  
  Überprüft den Status des PostgreSQL-Dienstes und startet ihn bei Bedarf neu

- **`sleep.sh`** - System Sleep Utility  
  Einfaches Skript für Systemruhezustand

### Datei-Management
- **`move2archiv.sh`** - Automatische Archivierung  
  Verschiebt Dateien älter als 3 Jahre in strukturierte Archiv-Ordner mit E-Mail-Benachrichtigung

- **`remove_pdf.sh`** - PDF Dateinamen-Bereinigung  
  Entfernt Leerzeichen aus PDF-Dateinamen in einem angegebenen Verzeichnis

### Server-Utilities
- **`copynetcup.sh`** - Sicherer Dateitransfer  
  Überträgt Dateien zwischen Servern mit Prüfsummen-Verifikation

- **`geht.sh`** - Basis-Utility-Skript  
  Allgemeines Hilfsskript für verschiedene Aufgaben

- **`if.sh`** - Conditional Logic Helper  
  Skript für bedingte Logik und Tests

- **`betterorso.sh`** - System Optimization Tool  
  Verbesserungs- und Optimierungshelfer

## 🚀 Installation & Verwendung

### Voraussetzungen
- Bash Shell (für .sh Skripte)
- Python 3.x (für .py Skripte)
- Entsprechende Systemberechtigungen für Service-Management

### Verwendung
1. Repository klonen:
```bash
git clone https://github.com/sambila/scripts.git
cd scripts
```

2. Skripte ausführbar machen:
```bash
chmod +x *.sh
```

3. Skripte nach Bedarf verwenden:
```bash
# PostgreSQL Status prüfen
python3 checknstartpq.py

# Dateien archivieren
./move2archiv.sh

# PDF-Dateinamen bereinigen
./remove_pdf.sh
```

## ⚙️ Konfiguration

**Wichtig:** Vor der Verwendung müssen in einigen Skripten die Pfade und Parameter angepasst werden:

- `move2archiv.sh`: Pfade und E-Mail-Adresse anpassen
- `copynetcup.sh`: Server-Adressen und Benutzerdetails konfigurieren

## ⚠️ Sicherheitshinweise

- Skripte mit administrativen Rechten sorgfältig prüfen
- Pfade und Konfigurationen vor der Ausführung anpassen
- Bei Server-Skripten sichere Authentifizierung verwenden
- Backups erstellen vor Ausführung von Datei-Management-Skripten

## 📁 Projektstruktur

```
scripts/
├── checknstartpq.py    # PostgreSQL Service Monitor
├── move2archiv.sh      # Automatische Archivierung
├── copynetcup.sh       # Server-zu-Server Dateitransfer
├── remove_pdf.sh       # PDF Dateinamen-Bereinigung
├── sleep.sh            # System Sleep Utility
├── geht.sh             # Allgemeines Utility
├── if.sh               # Conditional Logic Helper
├── betterorso.sh       # System Optimization
└── README.md           # Diese Datei
```

## 🤝 Beitragen

Verbesserungen und neue Skripte sind willkommen! Bitte:
1. Fork des Repositories erstellen
2. Feature-Branch erstellen
3. Änderungen commiten
4. Pull Request erstellen

## 📝 Lizenz

Diese Skripte stehen zur freien Verfügung für persönlichen und kommerziellen Gebrauch.

## 📞 Kontakt

Bei Fragen oder Problemen können Sie mich über GitHub erreichen: [@sambila](https://github.com/sambila)

---

*Erstellt: Februar 2021*  
*Letztes Update: Juli 2024*