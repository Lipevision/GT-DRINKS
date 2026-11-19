# Guia de Personalização - GT DRINKS

Este guia mostra como personalizar os principais elementos do site de forma fácil e segura.

## 📝 Índice
1. [Informações de Contato](#informações-de-contato)
2. [Alterar Cores](#alterar-cores)
3. [Adicionar/Remover Serviços](#adicionarremover-serviços)
4. [Gerenciar Carta de Drinks](#gerenciar-carta-de-drinks)
5. [Modificar Galeria](#modificar-galeria)
6. [Configurar WhatsApp](#configurar-whatsapp)
7. [Redes Sociais](#redes-sociais)

---

## 📞 Informações de Contato

### Localização no código: `index.html`

#### 1. Telefone, E-mail e Instagram (Seção de Orçamento)

Procure por:
```html
<div class="contact-item">
    <i class="fas fa-phone"></i>
    <div>
        <h4>Telefone</h4>
        <p>[Número de telefone]</p>
    </div>
</div>
```

Substitua `[Número de telefone]` por: `(11) 99999-9999`

Faça o mesmo para:
- `[endereço de e-mail]` → `contato@gtdrinks.com.br`
- `[@instagram_handle]` → `@gtdrinks`

#### 2. Rodapé

Procure a seção `<footer class="footer">` e atualize os mesmos campos.

---

## 🎨 Alterar Cores

### Localização: `css/styles.css` (linhas 7-13)

```css
:root {
    --color-black: #000000;        /* Fundo principal */
    --color-neon: #00ff88;         /* Verde neon (destaque) */
    --color-neon-glow: rgba(0, 255, 136, 0.5);  /* Brilho do neon */
    --color-white: #ffffff;        /* Texto principal */
    --color-gray: #a8a8a8;         /* Texto secundário */
    --color-gray-dark: #1a1a1a;    /* Fundo de seções alternadas */
    --color-gray-medium: #2a2a2a;  /* Cards e elementos */
}
```

### Exemplos de paletas alternativas:

**Opção 1: Azul Elétrico**
```css
--color-neon: #00d4ff;
--color-neon-glow: rgba(0, 212, 255, 0.5);
```

**Opção 2: Rosa Neon**
```css
--color-neon: #ff006e;
--color-neon-glow: rgba(255, 0, 110, 0.5);
```

**Opção 3: Dourado Premium**
```css
--color-neon: #ffd700;
--color-neon-glow: rgba(255, 215, 0, 0.5);
```

---

## 🛠️ Adicionar/Remover Serviços

### Localização: `index.html` (seção `id="servicos"`)

### Para adicionar um novo serviço:

Copie este bloco e cole dentro de `.services-grid`:

```html
<div class="service-card">
    <div class="service-icon">
        <i class="fas fa-NOME-DO-ICONE"></i>
    </div>
    <h3>Nome do Serviço</h3>
    <p>Descrição do serviço oferecido pela GT DRINKS.</p>
</div>
```

**Ícones disponíveis** (Font Awesome):
- `fa-glass-martini-alt` - Martini
- `fa-wine-glass` - Taça de vinho
- `fa-beer` - Cerveja
- `fa-cocktail` - Coquetel
- `fa-champagne-glasses` - Taças
- `fa-blender` - Liquidificador
- `fa-lemon` - Limão
- `fa-birthday-cake` - Bolo

Ver mais em: [FontAwesome Icons](https://fontawesome.com/icons)

### Para remover um serviço:

Simplesmente delete todo o bloco `<div class="service-card">...</div>` correspondente.

---

## 🍹 Gerenciar Carta de Drinks

### Localização: `index.html` (seção `id="carta"`)

### Adicionar drink em uma categoria existente:

Encontre a categoria desejada (ex: `id="classicos"`) e adicione:

```html
<div class="drink-card">
    <h3>Nome do Drink</h3>
    <p class="drink-ingredients">Ingrediente 1, ingrediente 2, ingrediente 3</p>
</div>
```

### Criar nova categoria de drinks:

1. **Adicionar aba no menu:**
```html
<button class="menu-tab" data-tab="NOME-DA-CATEGORIA">Nome Exibido</button>
```

2. **Adicionar conteúdo da categoria:**
```html
<div class="menu-tab-content" id="NOME-DA-CATEGORIA">
    <div class="drinks-grid">
        <div class="drink-card">
            <h3>Drink 1</h3>
            <p class="drink-ingredients">Ingredientes...</p>
        </div>
        <!-- Mais drinks aqui -->
    </div>
</div>
```

### Adicionar descrições mais elaboradas:

```html
<div class="drink-card">
    <h3>Old Fashioned</h3>
    <p class="drink-ingredients">Whisky bourbon, angostura, açúcar mascavo, casca de laranja</p>
    <p class="drink-description">Clássico atemporal com sabor marcante e apresentação elegante.</p>
</div>
```

E adicione este CSS em `styles.css`:
```css
.drink-description {
    font-size: 0.85rem;
    font-style: italic;
    margin-top: 10px;
    color: var(--color-gray);
}
```

---

## 📸 Modificar Galeria

### Localização: `index.html` (seção `id="galeria"`)

### Adicionar nova imagem:

```html
<div class="gallery-item" data-category="CATEGORIA">
    <img src="images/nome-da-imagem.jpg" alt="Descrição da imagem">
</div>
```

**Categorias disponíveis:**
- `drinks` - Fotos de drinks
- `eventos` - Fotos de eventos
- `bar` - Setup de bar

### Adicionar nova categoria à galeria:

1. **Adicionar botão de filtro:**
```html
<button class="filter-btn" data-filter="nova-categoria">Nova Categoria</button>
```

2. **Usar a categoria nas imagens:**
```html
<div class="gallery-item" data-category="nova-categoria">
    <img src="images/foto.jpg" alt="Descrição">
</div>
```

---

## 💬 Configurar WhatsApp

### Localização: `index.html` (final da página)

Encontre:
```html
<a href="https://wa.me/[NUMERO_WHATSAPP]?text=..."
```

**Formato correto do número:**
- Código do país (Brasil): 55
- DDD: 11 (exemplo para São Paulo)
- Número: 987654321

**Exemplo completo:** `5511987654321`

Substitua:
```html
<a href="https://wa.me/5511987654321?text=Olá! Gostaria de solicitar um orçamento para meu evento."
```

### Personalizar mensagem automática:

```html
<a href="https://wa.me/5511987654321?text=Olá, GT DRINKS! Vim através do site e gostaria de mais informações sobre os serviços de bartender."
```

### Também atualize em `js/script.js`:

Procure por:
```javascript
const whatsappNumber = '[NUMERO_WHATSAPP]';
```

Substitua por:
```javascript
const whatsappNumber = '5511987654321';
```

---

## 📱 Redes Sociais

### Localização: `index.html` (seção `<footer>`)

Encontre:
```html
<div class="social-links">
    <a href="#" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
    <a href="#" target="_blank" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
    <a href="#" target="_blank" aria-label="WhatsApp"><i class="fab fa-whatsapp"></i></a>
</div>
```

Substitua `href="#"` pelos links reais:

```html
<div class="social-links">
    <a href="https://instagram.com/gtdrinks" target="_blank" aria-label="Instagram">
        <i class="fab fa-instagram"></i>
    </a>
    <a href="https://facebook.com/gtdrinks" target="_blank" aria-label="Facebook">
        <i class="fab fa-facebook-f"></i>
    </a>
    <a href="https://wa.me/5511987654321" target="_blank" aria-label="WhatsApp">
        <i class="fab fa-whatsapp"></i>
    </a>
</div>
```

### Adicionar mais redes sociais:

```html
<!-- TikTok -->
<a href="https://tiktok.com/@gtdrinks" target="_blank" aria-label="TikTok">
    <i class="fab fa-tiktok"></i>
</a>

<!-- YouTube -->
<a href="https://youtube.com/@gtdrinks" target="_blank" aria-label="YouTube">
    <i class="fab fa-youtube"></i>
</a>

<!-- LinkedIn -->
<a href="https://linkedin.com/company/gtdrinks" target="_blank" aria-label="LinkedIn">
    <i class="fab fa-linkedin-in"></i>
</a>
```

---

## 🎯 Dicas de Personalização

### 1. Manter Backup
Antes de fazer grandes mudanças, faça uma cópia dos arquivos originais.

### 2. Testar em Diferentes Dispositivos
Após modificações, teste em:
- Celular (Chrome mobile)
- Tablet
- Desktop

### 3. Validar HTML e CSS
- HTML: [W3C Validator](https://validator.w3.org/)
- CSS: [CSS Validator](https://jigsaw.w3.org/css-validator/)

### 4. Otimizar Imagens
Sempre comprima imagens antes de adicionar ao site.

### 5. Usar DevTools
Pressione F12 no navegador para inspecionar elementos e testar mudanças ao vivo.

---

## ⚠️ Cuidados Importantes

❌ **NÃO modifique:**
- Estrutura HTML sem conhecimento
- Classes CSS usadas pelo JavaScript
- IDs de seções (afeta navegação)

✅ **PODE modificar livremente:**
- Textos e conteúdos
- Cores nas variáveis CSS
- Imagens
- Links e contatos

---

## 🆘 Resolução de Problemas

### Menu não funciona no mobile
**Solução:** Verifique se os arquivos `js/script.js` está linkado corretamente no HTML.

### Cores não mudam
**Solução:** Limpe o cache do navegador (Ctrl + Shift + Delete).

### Imagens não aparecem
**Solução:** Verifique o caminho das imagens. Use sempre `images/nome-arquivo.jpg`.

### Formulário não envia
**Solução:** Configure o número do WhatsApp corretamente em ambos os lugares (HTML e JS).

---

## 📚 Recursos Úteis

- [HTML Reference](https://developer.mozilla.org/pt-BR/docs/Web/HTML)
- [CSS Reference](https://developer.mozilla.org/pt-BR/docs/Web/CSS)
- [JavaScript Guide](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Guide)
- [Font Awesome Icons](https://fontawesome.com/icons)
- [Google Fonts](https://fonts.google.com/)

---

**Última atualização:** Novembro 2026  
**Desenvolvido para:** GT DRINKS
