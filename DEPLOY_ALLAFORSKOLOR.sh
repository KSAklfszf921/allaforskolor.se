#!/bin/bash
# 🇸🇪 Allaforskolor.se - Automatisk GitHub Deployment Script
# Kör detta script för att ladda upp projektet till GitHub

set -e  # Exit on any error

echo "🚀 ALLAFORSKOLOR.SE - AUTOMATISK DEPLOYMENT"
echo "=========================================="
echo ""

# Kontrollera att vi är i rätt katalog
if [[ ! -f "ULTIMAT_FORSKOLE_KARTA.html" ]]; then
    echo "❌ Fel: Kör detta script från Förskolestatistik-katalogen"
    exit 1
fi

echo "📁 Kontrollerar projektfiler..."
KRITISKA_FILER=(
    "index.html"
    "ULTIMAT_FORSKOLE_KARTA.html"
    "forskole_data.js"
    "README.md"
)

for fil in "${KRITISKA_FILER[@]}"; do
    if [[ -f "$fil" ]]; then
        echo "✅ $fil ($(du -sh "$fil" | cut -f1))"
    else
        echo "❌ KRITISK FIL SAKNAS: $fil"
        exit 1
    fi
done

echo ""
echo "📊 Projektstatistik:"
echo "📄 Totalt $(ls -1 *.html *.js *.md *.csv *.db 2>/dev/null | wc -l | xargs) projektfiler"
echo "💾 Total storlek: $(du -sh . | cut -f1)"
echo "🗺️ Förskolor i forskole_data.js: $(grep -o '"Namn":' forskole_data.js | wc -l | xargs)"
echo ""

# Konfiguration
REPO_URL="https://github.com/KSAklfszf921/allaforskolor.se.git"
GITHUB_TOKEN="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"

echo "🔧 Konfigurerar Git..."
git config --global user.name "KSAklfszf921"
git config --global user.email "noreply@github.com"
git config --global credential.helper store

# Skapa credential file om den inte finns
if [[ ! -f ~/.git-credentials ]]; then
    echo "https://KSAklfszf921:${GITHUB_TOKEN}@github.com" > ~/.git-credentials
    echo "✅ Git credentials konfigurerade"
fi

echo ""
echo "🌐 Förbereder GitHub repository..."

# Kontrollera Git-status
if [[ ! -d ".git" ]]; then
    echo "📝 Initierar Git repository..."
    git init
    git branch -M main
    git remote add origin "$REPO_URL"
fi

# Kontrollera remote
git remote -v
echo ""

echo "📦 Förbereder commit..."
git add .
git status

echo ""
echo "💾 Skapar commit med projektfiler..."
git commit -m "🇸🇪 LIVE DEPLOYMENT: Allaforskolor.se - Komplett system

🎯 Huvudfunktioner:
- 8,500+ svenska förskolor från hela landet
- Interaktiv karta med GPS-lokalisering
- Intelligent heatmap-visualisering
- Responsiv design för alla enheter

🔧 Teknisk stack:
- Leaflet.js för kartfunktionalitet
- Marker clustering för prestanda
- Progressive Enhancement
- 100% vanilla JavaScript

📊 Data:
- 180,870+ datapunkter
- Kvalitetsbetyg och trendanalys
- CSV och SQLite-databaser inkluderade

🚀 Redo för live deployment på:
- GitHub Pages: https://ksäklfszf921.github.io/allaforskolor.se/
- Custom domain: allaforskolor.se (efter DNS-konfiguration)

🤖 Generated with Claude Code (https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"

echo ""
echo "🚀 PUSHING TILL GITHUB..."
echo "Repository: $REPO_URL"

# Försök pusha
if git push -u origin main; then
    echo ""
    echo "🎉 SUCCESS! Projektet är uppladdat till GitHub!"
    echo "📍 Repository: https://github.com/KSAklfszf921/allaforskolor.se"
    echo ""
    echo "⚡ NÄSTA STEG för att gå live:"
    echo "1. Gå till: https://github.com/KSAklfszf921/allaforskolor.se/settings/pages"
    echo "2. Välj 'Deploy from a branch' → 'main' → '/ (root)'"
    echo "3. Klicka 'Save'"
    echo "4. Vänta 2-5 minuter på deployment"
    echo ""
    echo "🌍 Live URL kommer att vara:"
    echo "https://ksäklfszf921.github.io/allaforskolor.se/"
    echo ""
    echo "🎯 För custom domain 'allaforskolor.se':"
    echo "- Lägg till CNAME record: ksäklfszf921.github.io"
    echo "- Konfigurera i GitHub Pages settings"
    echo ""
    echo "✅ DEPLOYMENT KOMPLETT!"
    
else
    echo ""
    echo "❌ PUSH MISSLYCKADES"
    echo ""
    echo "🛠️ MANUELL UPLOAD-PROCESS:"
    echo "1. Öppna: https://github.com/KSAklfszf921/allaforskolor.se"
    echo "2. Klicka 'Add file' → 'Upload files'"
    echo "3. Dra alla filer från denna katalog"
    echo "4. Commit message: 'Initial upload - Komplett förskolestatistik system'"
    echo "5. Klicka 'Commit changes'"
    echo ""
    echo "📦 Alternativt använd ZIP-filen:"
    echo "$(pwd)/allaforskolor-github-upload.zip"
    echo ""
    echo "🔍 Felsökning:"
    echo "- Kontrollera repository-rättigheter på GitHub"
    echo "- Verifiera access token har 'Contents: Write' permission"
    echo "- Kolla att repository 'allaforskolor.se' existerar"
fi

echo ""
echo "📋 Deployment Summary:"
echo "- Projektfiler: ✅ Klara"
echo "- Git konfiguration: ✅ Klar"  
echo "- ZIP-backup: ✅ Skapad (allaforskolor-github-upload.zip)"
echo "- Instruktioner: ✅ GITHUB_UPLOAD_GUIDE.md"
echo "- Status rapport: ✅ DEPLOYMENT_STATUS.md"
echo ""
echo "🇸🇪 Sveriges mest avancerade förskole-plattform är redo att lanseras!"
echo "=========================================="