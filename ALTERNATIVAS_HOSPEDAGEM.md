# 🌐 Alternativas de Hospedagem Gratuita

Caso tenha dificuldades com o GitHub Pages, aqui estão outras opções gratuitas:

## 1. 🚀 Netlify (Recomendado)

**Vantagens:**
- Deploy automático via Git
- SSL gratuito
- CDN global
- Fácil configuração

**Como usar:**
1. Acesse https://netlify.com
2. Clique em "New site from Git"
3. Conecte seu repositório GitHub
4. Configure:
   - Build command: `pnpm run build`
   - Publish directory: `dist`
5. Deploy automático!

**URL final:** `https://nome-do-site.netlify.app`

---

## 2. ⚡ Vercel

**Vantagens:**
- Otimizado para React
- Deploy instantâneo
- Domínio personalizado gratuito

**Como usar:**
1. Acesse https://vercel.com
2. Importe projeto do GitHub
3. Deploy automático!

**URL final:** `https://nome-do-projeto.vercel.app`

---

## 3. 🔥 Firebase Hosting

**Vantagens:**
- Google Cloud Platform
- Performance excelente
- SSL automático

**Como usar:**
1. Instale Firebase CLI: `npm install -g firebase-tools`
2. Execute: `firebase login`
3. Execute: `firebase init hosting`
4. Execute: `firebase deploy`

---

## 4. 📦 Surge.sh

**Vantagens:**
- Super simples
- Deploy via comando
- Domínio personalizado

**Como usar:**
```bash
npm install -g surge
cd dist
surge
```

---

## 5. 🌊 GitHub Pages (Método Manual)

Se o workflow automático não funcionar:

1. **Faça build local:**
   ```bash
   pnpm run build
   ```

2. **Crie branch gh-pages:**
   ```bash
   git checkout --orphan gh-pages
   git rm -rf .
   cp -r dist/* .
   git add .
   git commit -m "Deploy"
   git push origin gh-pages
   ```

3. **Configure Pages para usar branch gh-pages**

---

## 🎯 Recomendação

**Para facilidade:** Use **Netlify** ou **Vercel**
**Para controle:** Use **GitHub Pages**
**Para rapidez:** Use **Surge.sh**

Todas as opções são **100% gratuitas** e oferecem:
- ✅ SSL/HTTPS automático
- ✅ CDN global
- ✅ Deploy automático
- ✅ Domínio personalizado (opcional)

---

## 🔧 Configurações Importantes

Para qualquer plataforma, certifique-se de:

1. **Build command:** `pnpm run build` ou `npm run build`
2. **Output directory:** `dist`
3. **Node version:** 18 ou superior
4. **Base path:** Já configurado no `vite.config.js`

---

**Escolha a opção que preferir - todas funcionarão perfeitamente!** 🎉

