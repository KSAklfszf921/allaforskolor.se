# Ändringslogg - Sveriges Förskolor

## 2025-01-09 - Geolokalisering-förbättringar

### ✅ **Åtgärdade problem:**
- **Synlig användarposition:** Ny pulsande röd markör som syns tydligt
- **Förbättrad felhantering:** Mer detaljerad debug-information
- **Automatisk kartcentrering:** Kartan centreras och zoomar optimalt på användarens position
- **Förbättrad timeout:** Ökad från 10 till 15 sekunder för bättre GPS-mottagning

### 🧹 **Mapporganisation:**
- **Rensade filer:** Tog bort debug-filer, temporära filer och gamla XML/JSON-exporter
- **Uppdaterad rensningsskript:** `rensa-filer.py` håller mappen ren automatiskt
- **Strukturerad mapp:** Endast nödvändiga filer kvar (15 filer totalt)

### 🔧 **Tekniska förbättringar:**
- **Pulsande användarmarkör:** CSS-animerad röd cirkel med vit kant
- **Förbättrad z-index:** Användarmarkör visas alltid ovanför andra markörer
- **Bättre koordinat-display:** Visar även GPS-noggrannhet i meter
- **Debug-logging:** Omfattande console.log för felsökning

### 📱 **Användarupplevelse:**
- **Tydligare felmeddelanden:** Specifika instruktioner för olika GPS-fel
- **Visuell feedback:** Pulsande animation gör användaren omöjlig att missa
- **Bättre timing:** Optimerade timeouts och uppdateringsintervall

---

## Aktuell filstruktur (15 filer):
### **Kärn-HTML:**
- `index.html` - Grundversion
- `utveckling.html` - Avancerad version med geolokalisering

### **JavaScript & Styling:**
- `karta-funktioner.js` - Grundläggande kartfunktioner
- `utvecklings-funktioner.js` - Geolokalisering och filter
- `style.css` - All styling

### **Data (8,230 förskolor):**
- `forskolor-fulldata.js` - JavaScript-format
- `forskolor-fulldata.json` - JSON-format
- `forskolor-fulldata.csv` - Excel-kompatibel

### **Verktyg & Scripts:**
- `extrahera-data.py` - Dataextraktion
- `uppdatera-html.py` - HTML-uppdateringar
- `rensa-filer.py` - Automatisk rensning

### **Dokumentation:**
- `README.md` - Projektöversikt
- `GEOLOKALISERING.md` - GPS-funktioner
- `CHANGELOG.md` - Denna fil

### **Original:**
- `Förskolekarta version 1.0.html` - 19.4MB ursprungsfil (referens)

---
*Projekt nu optimerat för produktion och utveckling*