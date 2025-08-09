# Sveriges Förskolor - Interaktiv Karta

## Översikt
Detta projekt innehåller en interaktiv karta över Sveriges 8,230 förskolor, extraherad och strukturerad från officiell data.

## Huvudfiler

### HTML-filer
- **`index.html`** - Huvudversion med fullständig data
- **`utveckling.html`** - Avancerad version med filtrering och statistik

### Datafiler
- **`forskolor-fulldata.js`** - Fullständig data (JavaScript-format)
- **`forskolor-fulldata.json`** - Fullständig data (JSON-format)  
- **`forskolor-fulldata.csv`** - Fullständig data (Excel-kompatibel)

### Funktionalitet
- **`style.css`** - All styling för kartorna
- **`karta-funktioner.js`** - Grundläggande Leaflet-kartfunktioner
- **`utvecklings-funktioner.js`** - Extra funktioner för filtrering och statistik

### Verktyg
- **`extrahera-data.py`** - Automatisk dataextraktion från HTML
- **`uppdatera-html.py`** - Uppdatering av HTML-filer
- **`rensa-filer.py`** - Rensning av gamla filer

## Användning

### Enkel användning
1. Öppna `index.html` i webbläsare
2. Utforska kartan med 8,230 förskolor
3. Klicka på markers för detaljer
4. Se aktuella förskolor i viewport-listan

### Avancerad användning
1. Öppna `utveckling.html` i webbläsare
2. Använd kontrollpanelen för filtrering
3. Sök på kommun
4. **🆕 Klicka "Hitta förskolor nära mig" för GPS-lokalisering**
5. Kartan centreras automatiskt och zoomar in på din position
6. Justera sökradie (1-10 km) med reglaget - kartan anpassas automatiskt
7. Visa detaljerad statistik

## Datastruktur
Varje förskola innehåller:
- Namn, adress, kommun, ort
- Huvudman (kommunal/fristående)
- Pedagogisk inriktning
- GPS-koordinater

## Statistik
- **Totalt**: 8,230 förskolor
- **Kommunala**: 7,364 (89.5%)
- **Fristående**: 866 (10.5%)
- **Största kommuner**: Stockholm (853), Göteborg (444), Malmö (285)

## Teknologi
- Leaflet.js för kartor
- Bootstrap för styling
- Vanilla JavaScript
- Python för databearbetning

---
*Automatiskt genererad dokumentation*
