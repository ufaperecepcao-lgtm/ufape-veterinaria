# 🚀 Instruções de Deploy - Sistema UFAPE Veterinária

## Passo a Passo Completo para GitHub Pages

### 1. Criar Repositório no GitHub

1. **Acesse o GitHub**: https://github.com
2. **Faça login** na sua conta
3. **Clique em "New repository"** (botão verde)
4. **Configure o repositório**:
   - **Repository name**: `ufape-veterinaria`
   - **Description**: `Sistema UFAPE Veterinária - Plataforma interna de gestão de conhecimento`
   - **Visibility**: Public (para usar GitHub Pages gratuito)
   - **NÃO** marque "Add a README file" (já temos um)
   - **NÃO** adicione .gitignore (já temos um)
5. **Clique em "Create repository"**

### 2. Fazer Upload do Código

**Opção A - Via Interface Web (Mais Fácil):**

1. **Na página do repositório criado**, clique em "uploading an existing file"
2. **Arraste todos os arquivos** da pasta `/home/ubuntu/ufape-site-github/` (exceto node_modules)
3. **Escreva a mensagem de commit**: "Sistema UFAPE Veterinária - Deploy inicial"
4. **Clique em "Commit changes"**

**Opção B - Via Git (Linha de Comando):**

```bash
# No terminal, execute os comandos:
cd /home/ubuntu/ufape-site-github
git remote add origin https://github.com/SEU_USUARIO/ufape-veterinaria.git
git branch -M main
git push -u origin main
```

### 3. Ativar GitHub Pages

1. **No repositório**, vá em **Settings** (aba no topo)
2. **Role para baixo** até encontrar **"Pages"** no menu lateral
3. **Em "Source"**, selecione **"GitHub Actions"**
4. **Salve as configurações**

### 4. Aguardar o Deploy

1. **Vá na aba "Actions"** do repositório
2. **Aguarde o workflow** "Deploy to GitHub Pages" completar (ícone verde ✅)
3. **O site estará disponível em**: `https://SEU_USUARIO.github.io/ufape-veterinaria/`

---

## 🔧 Configurações Importantes

### URLs do Site
- **URL Principal**: `https://SEU_USUARIO.github.io/ufape-veterinaria/`
- **Configuração no Vite**: Base path já configurado como `/ufape-veterinaria/`

### Atualizações Futuras
- **Qualquer push** para a branch `main` irá **automaticamente** redesplegar o site
- **O processo leva** cerca de 2-3 minutos para completar

### Troubleshooting

**Se o site não carregar:**
1. Verifique se o workflow completou com sucesso na aba "Actions"
2. Confirme se GitHub Pages está ativado em Settings > Pages
3. Aguarde alguns minutos para propagação

**Se houver erro no build:**
1. Verifique os logs na aba "Actions"
2. Confirme se todos os arquivos foram enviados corretamente

---

## 📋 Checklist de Deploy

- [ ] Repositório criado no GitHub
- [ ] Código enviado para o repositório
- [ ] GitHub Pages ativado com "GitHub Actions"
- [ ] Workflow executado com sucesso
- [ ] Site acessível na URL final

---

## 🎉 Resultado Final

Após completar todos os passos, você terá:

✅ **Site funcionando** em `https://SEU_USUARIO.github.io/ufape-veterinaria/`
✅ **Deploy automático** a cada atualização
✅ **Hospedagem gratuita** no GitHub Pages
✅ **SSL/HTTPS** automático
✅ **CDN global** para performance

---

**Precisa de ajuda?** Entre em contato ou consulte a documentação do GitHub Pages.

