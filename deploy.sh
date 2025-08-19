#!/bin/bash

# Script de Deploy Automatizado - Sistema UFAPE Veterinária
# Execute este script após criar o repositório no GitHub

echo "🚀 Deploy Automatizado - Sistema UFAPE Veterinária"
echo "=================================================="

# Verificar se o Git está configurado
if ! git config user.name > /dev/null; then
    echo "⚠️  Configurando Git..."
    read -p "Digite seu nome: " git_name
    read -p "Digite seu email: " git_email
    git config --global user.name "$git_name"
    git config --global user.email "$git_email"
fi

# Solicitar informações do repositório
echo ""
echo "📝 Informações do Repositório"
read -p "Digite seu usuário do GitHub: " github_user
read -p "Digite o nome do repositório (padrão: ufape-veterinaria): " repo_name
repo_name=${repo_name:-ufape-veterinaria}

# Configurar remote
echo ""
echo "🔗 Configurando repositório remoto..."
git_url="https://github.com/$github_user/$repo_name.git"
echo "URL do repositório: $git_url"

# Remover remote existente se houver
git remote remove origin 2>/dev/null || true

# Adicionar novo remote
git remote add origin "$git_url"

# Fazer push
echo ""
echo "📤 Enviando código para o GitHub..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Deploy realizado com sucesso!"
    echo ""
    echo "🌐 Próximos passos:"
    echo "1. Acesse: https://github.com/$github_user/$repo_name"
    echo "2. Vá em Settings > Pages"
    echo "3. Selecione 'GitHub Actions' como source"
    echo "4. Aguarde o workflow completar"
    echo ""
    echo "🎉 Seu site estará disponível em:"
    echo "   https://$github_user.github.io/$repo_name/"
else
    echo ""
    echo "❌ Erro no deploy. Verifique:"
    echo "1. Se o repositório foi criado no GitHub"
    echo "2. Se você tem permissão de escrita"
    echo "3. Se as credenciais estão corretas"
fi

