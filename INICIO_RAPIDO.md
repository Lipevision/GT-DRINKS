# 🚀 Início Rápido - GT DRINKS

Guia rápido para começar a usar o site imediatamente.

## ⚡ Visualizar o Site Localmente

1. **Opção 1: Abrir diretamente**
   - Abra o arquivo `index.html` no seu navegador
   - Arraste o arquivo para o Chrome, Firefox ou Edge

2. **Opção 2: Usar extensão Live Server (Recomendado)**
   - Instale o VS Code
   - Instale a extensão "Live Server"
   - Clique com botão direito em `index.html` → "Open with Live Server"
   - O site abrirá em: `http://localhost:5500`

## 📝 Primeiras Configurações (10 minutos)

### 1. Contatos (PRIORIDADE ALTA)

Abra `index.html` e substitua:

```
[Número de telefone] → (11) 99999-9999
[endereço de e-mail] → contato@gtdrinks.com.br
[@instagram_handle] → @gtdrinks
[NUMERO_WHATSAPP] → 5511999999999
[Cidade/Estado] → São Paulo/SP
```

**Buscar e substituir:** Use Ctrl+F para encontrar os colchetes `[` e substituir rapidamente.

### 2. WhatsApp (PRIORIDADE ALTA)

**No arquivo `index.html`:**
- Procure: `[NUMERO_WHATSAPP]`
- Substitua por: `5511999999999` (seu número completo)

**No arquivo `js/script.js`:**
- Procure: `const whatsappNumber = '[NUMERO_WHATSAPP]';`
- Substitua por: `const whatsappNumber = '5511999999999';`

### 3. Redes Sociais

No rodapé do `index.html`, substitua `href="#"` por:
```html
href="https://instagram.com/seu_instagram"
href="https://facebook.com/sua_pagina"
```

## 🖼️ Adicionar Imagens Básicas (20 minutos)

### Passo a passo:

1. **Copie suas fotos para a pasta `images/`**

2. **Adicione as 2 imagens essenciais:**
   - `hero-bg.jpg` - Banner principal (foto de drinks/bar)
   - `favicon.png` - Ícone do site (32x32px)

3. **No `index.html`, substitua os placeholders:**

   **Hero Background** (linha ~88):
   ```css
   background-image: url('../images/hero-bg.jpg');
   ```
   *(Este já está configurado, apenas adicione a imagem na pasta)*

   **Seção Sobre** (procure por "about-image"):
   ```html
   <!-- Substituir -->
   <div class="image-placeholder">...</div>
   
   <!-- Por -->
   <img src="images/sobre-gt-drinks.jpg" alt="GT DRINKS">
   ```

   **Foto do Thiago** (procure por "founder-image"):
   ```html
   <!-- Substituir -->
   <div class="image-placeholder">...</div>
   
   <!-- Por -->
   <img src="images/thiago.jpg" alt="Thiago - Fundador GT DRINKS">
   ```

## ✅ Verificação Rápida

Depois das configurações acima, teste:

- [ ] Site abre corretamente no navegador
- [ ] Número de telefone aparece correto
- [ ] Botão do WhatsApp abre conversa
- [ ] Links de redes sociais funcionam
- [ ] Menu funciona (clique em "Serviços", "Galeria", etc.)
- [ ] Formulário de orçamento pode ser preenchido

## 🎨 Personalizações Simples

### Mudar a cor do verde neon:

1. Abra `css/styles.css`
2. Linha 9, mude:
   ```css
   --color-neon: #00ff88;  /* Verde atual */
   ```
   Para outra cor, exemplo:
   ```css
   --color-neon: #00d4ff;  /* Azul elétrico */
   --color-neon: #ff006e;  /* Rosa neon */
   --color-neon: #ffd700;  /* Dourado */
   ```

### Adicionar um novo drink:

No `index.html`, seção de Carta de Drinks, copie e cole:
```html
<div class="drink-card">
    <h3>Nome do Drink</h3>
    <p class="drink-ingredients">Ingredientes aqui</p>
</div>
```

## 📱 Testar Responsividade

1. Abra o site no navegador
2. Pressione **F12** (DevTools)
3. Clique no ícone de celular 📱 (ou Ctrl+Shift+M)
4. Teste em: iPhone, iPad, Desktop

## 🚀 Publicar no GitHub Pages (15 minutos)

### Passo a passo:

1. **Criar conta no GitHub** (se não tiver)
   - Acesse: [github.com](https://github.com)
   - Clique em "Sign up"

2. **Criar novo repositório**
   - Clique em "New repository"
   - Nome: `gt-drinks-site` (ou outro nome)
   - Selecione: "Public"
   - Clique: "Create repository"

3. **Fazer upload dos arquivos**
   - Na página do repositório, clique "uploading an existing file"
   - Arraste TODOS os arquivos e pastas do projeto
   - Clique "Commit changes"

4. **Ativar GitHub Pages**
   - Vá em: Settings (Configurações)
   - Menu lateral: Pages
   - Source: "Deploy from a branch"
   - Branch: "main" → pasta: "/ (root)"
   - Clique "Save"

5. **Acessar seu site**
   - Aguarde 2-3 minutos
   - Acesse: `https://seu-usuario.github.io/gt-drinks-site`

## 🆘 Problemas Comuns

### Site não carrega imagens
- Verifique se as imagens estão na pasta `images/`
- Verifique se o nome do arquivo está correto (com extensão)
- Limpe o cache: Ctrl+Shift+Delete

### Menu mobile não abre
- Verifique se o arquivo `js/script.js` está na pasta `js/`
- Abra F12 e veja se há erros no Console

### WhatsApp não abre
- Verifique o formato do número: `5511999999999`
- Não use espaços, traços ou parênteses

### Cores não mudaram
- Limpe o cache do navegador
- Verifique se salvou o arquivo `styles.css`

## 📚 Próximos Passos

Depois de ter o básico funcionando:

1. **Conteúdo:**
   - Escrever biografia do Thiago
   - Adicionar drinks autorais
   - Completar textos

2. **Imagens:**
   - Adicionar galeria completa
   - Otimizar todas as imagens

3. **Avançado:**
   - Configurar domínio próprio
   - Adicionar Google Analytics
   - Integrar com sistemas de e-mail

## 📖 Documentação Completa

- **README.md** - Visão geral do projeto
- **GUIA_PERSONALIZACAO.md** - Como personalizar cada elemento
- **CHECKLIST_FINALIZACAO.md** - Lista completa antes do lançamento
- **images/INSTRUCOES_IMAGENS.md** - Guia de imagens

## 💡 Dicas

✅ **Faça backups** antes de grandes mudanças  
✅ **Teste sempre** em mobile e desktop  
✅ **Use nomes descritivos** para arquivos de imagens  
✅ **Comprima imagens** antes de adicionar  
✅ **Peça feedback** de outras pessoas  

## 🎉 Pronto!

Seu site está funcional! Agora é só personalizar com suas informações, imagens e conteúdo.

**Tempo estimado para ter um site básico funcionando:** 45 minutos

---

**Dúvidas?** Consulte os outros arquivos de documentação ou abra um issue no GitHub.

**Desenvolvido para:** GT DRINKS 🍹
