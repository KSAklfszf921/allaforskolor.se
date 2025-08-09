# 🚀 Hostinger Deployment Guide - Allaförskolor.se

## 📋 Snabbstart

### Steg 1: Hostinger hPanel Git Integration

1. **Logga in** på Hostinger hPanel
2. **Gå till** "Git" i Advanced section
3. **Klicka** "Create"

### Steg 2: Repository Configuration

```
Repository URL: https://github.com/KSAklfszf921/allaforskolor.se.git
Branch: main
Target Path: /public_html (för huvuddomän)
Build Command: (lämna tom - static files)

Authentication:
Method: HTTPS
Username: KSAklfszf921
Token: [DIN_GITHUB_TOKEN]
```

### Steg 3: Domain Setup

1. **Huvuddomän**: `allaförskolor.se`
2. **Alternativ**: `www.allaförskolor.se`
3. **SSL**: Aktivera Let's Encrypt
4. **CDN**: Aktivera om tillgängligt

### Steg 4: Deploy och Testa

1. **Klicka** "Deploy Now"
2. **Vänta** 2-5 minuter
3. **Besök**: https://allaförskolor.se
4. **Verifiera** att kartan laddar korrekt

---

## 🔧 Teknisk Konfiguration

### Filer som ska laddas upp:
- ✅ `index.html` (startsida)
- ✅ `ULTIMAT_FORSKOLE_KARTA.html` (huvudapplikation)  
- ✅ `forskole_data.js` (4.5MB databasfil)
- ✅ `robots.txt` (SEO)
- ✅ `sitemap.xml` (SEO)
- ✅ `.htaccess` (prestanda & säkerhet)

### Hostinger SSH-nyckel (om manuell upload):
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5r5e7RUqc2M5+bp5xiMXE5Syau0Cao9QRJtb7kF8BbyKw3ftTCpZkD1cJxSQta6GOqYnxLmk4XsyXYLfLO4RBOPs5Dmpm2Hl462w+RZ/5NFnbU7OXAngZZY/rBkzLo+TLOeLoJRLkgsyWqRB1t8tdeq85EDhU2a+RHmMdrsaTtyq6kUxBfRy72X8DU6HlHQa4pzVJbsEpejMlYAhy0v6JZ1nelXgNj2VjONBJhGxTCy3DZTAZUht8Ayk3c5OpW/t2gR58mO9tbgDrdFrecxtlLhkbmYF4jB37YYFkqXQ/ITL4FfUwsTV8Oa55jFIlAucOvn0es53L902UQ6RNnOt06QQPEjadxDKfX/+yxtkgs/IevW/BvA1KGYAjEEMqMjG8shJS946sjI5YCYXvmD3Aluna2pMylWcy+iSL66gp94x5Kz24vmEP4GoBGZ+LNBONItvsF9LvzSZZ1jjCqgorvc5Xme5Br6qRgKLPi0x9OXDHgf9+5KVVRR8hopsYDP8=
```

---

## ⚡ Prestanda-optimering

### .htaccess aktiverar:
- **Gzip-komprimering** (90% mindre filstorlek)
- **Browser-caching** (snabbare återbesök)
- **Säkerhetsheaders** (XSS, clickjacking-skydd)
- **SEO-URLs** (`/karta` → `ULTIMAT_FORSKOLE_KARTA.html`)

### Förväntad prestanda:
- **Laddningstid**: <3 sekunder
- **Mobile Friendly**: Ja
- **SEO Score**: 90+
- **Lighthouse Score**: 90+ alla kategorier

---

## 🌍 Live URL:s efter deployment

### Huvudsajt:
- https://allaförskolor.se
- https://www.allaförskolor.se (omdirigerar till huvuddomän)

### Direkta länkar:
- https://allaförskolor.se/karta (interaktiv karta)
- https://allaförskolor.se/map (engelsk alias)
- https://allaförskolor.se/forskolor (svensk alias)

---

## 🔍 Verifiering och testning

### Checklista efter deployment:
- [ ] Sajten laddar utan fel
- [ ] Interaktiv karta fungerar
- [ ] GPS-lokalisering aktiveras
- [ ] Sökfunktion fungerar
- [ ] Responsiv design på mobil
- [ ] Alla 8,500+ förskolor visas
- [ ] SSL-certifikat aktivt
- [ ] SEO-optimering fungerar

### Testkommandon:
```bash
# Testa HTTP-status
curl -I https://allaförskolor.se

# Testa gzip-komprimering
curl -H "Accept-Encoding: gzip" -I https://allaförskolor.se

# Testa prestanda
curl -o /dev/null -s -w "Time: %{time_total}s\n" https://allaförskolor.se
```

---

## 🚨 Troubleshooting

### Om deployment misslyckas:
1. **Kontrollera** GitHub token har rätt behörigheter
2. **Verifiera** att repository är public
3. **Testa** manuell upload via File Manager

### Om sajten inte laddar:
1. **Kontrollera** DNS-propagering (24h)
2. **Verifiera** SSL-certifikat
3. **Kolla** .htaccess syntax

### Support:
- **Hostinger Support**: Live chat i hPanel
- **GitHub Issues**: Repository issues-sektion
- **Teknisk dokumentation**: README.md

---

**Status**: Redo för deployment ✅  
**ETA till live**: 10-30 minuter  
**Nästa steg**: Kör Hostinger Git deployment