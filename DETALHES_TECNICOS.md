# 🔧 Detalhes Técnicos - GT DRINKS

Documentação técnica completa do projeto para desenvolvedores.

---

## 📐 Arquitetura

### Padrão de Organização
```
Separação por camadas:
- HTML (Estrutura)
- CSS (Apresentação)
- JavaScript (Comportamento)
```

### Metodologia CSS
- **BEM-inspired** para nomenclatura de classes
- **Mobile-first** approach
- **CSS Variables** para tematização
- **Flexbox e Grid** para layouts

---

## 🎨 Sistema de Design

### Paleta de Cores (CSS Variables)

```css
:root {
    /* Cores Principais */
    --color-black: #000000;           /* Fundo principal */
    --color-neon: #00ff88;            /* Destaque/CTA */
    --color-neon-glow: rgba(0, 255, 136, 0.5); /* Efeito glow */
    --color-white: #ffffff;           /* Texto principal */
    
    /* Cores Secundárias */
    --color-gray: #a8a8a8;            /* Texto secundário */
    --color-gray-dark: #1a1a1a;       /* Background alternativo */
    --color-gray-medium: #2a2a2a;     /* Cards e elementos */
    
    /* Tipografia */
    --font-primary: 'Montserrat', sans-serif;
    --font-secondary: 'Playfair Display', serif;
    
    /* Transições */
    --transition: all 0.3s ease;
    --transition-slow: all 0.5s ease;
    
    /* Sombras */
    --shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.3);
    --shadow-md: 0 4px 16px rgba(0, 0, 0, 0.4);
    --shadow-lg: 0 8px 32px rgba(0, 0, 0, 0.5);
    --shadow-neon: 0 0 20px var(--color-neon-glow);
}
```

### Tipografia

**Escala Tipográfica:**
```css
h1: 3.5rem (56px)
h2: 2.5rem (40px)
h3: 1.8rem (28.8px)
h4: 1.4rem (22.4px)
body: 1rem (16px)
small: 0.9rem (14.4px)
```

**Famílias:**
- **Montserrat:** Corpo de texto, navegação, botões
  - Pesos: 300, 400, 500, 600, 700, 800
- **Playfair Display:** Títulos principais
  - Pesos: 400, 500, 600, 700

**Line Height:**
- Títulos: 1.2
- Corpo: 1.6
- Navegação: 1.0

### Espaçamento

**Sistema de Grid:**
```css
Container: max-width 1200px
Padding lateral: 20px
Gap padrão: 20px-60px (conforme o contexto)
```

**Seções:**
```css
padding: 100px 0; /* Desktop */
padding: 60px 0;  /* Mobile */
```

---

## 📱 Breakpoints

### Media Queries

```css
/* Mobile First */
Base: 320px - 767px (padrão)

/* Tablet */
@media (max-width: 1024px)

/* Mobile */
@media (max-width: 768px)

/* Small Mobile */
@media (max-width: 480px)
```

### Grid Responsivo

**Serviços, Features, Drinks:**
```css
Desktop: 3 colunas (repeat(3, 1fr))
Tablet:  2 colunas (repeat(2, 1fr))
Mobile:  1 coluna  (1fr)
```

**Galeria:**
```css
Desktop: 3 colunas
Tablet:  2 colunas
Mobile:  1 coluna
```

---

## 🎭 Animações e Transições

### Keyframes

**fadeInUp** (Hero elements)
```css
@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
```

**scroll** (Scroll indicator)
```css
@keyframes scroll {
    0%, 100% {
        opacity: 0;
        transform: translateY(0);
    }
    50% {
        opacity: 1;
        transform: translateY(10px);
    }
}
```

**pulse** (WhatsApp button)
```css
@keyframes pulse {
    0%, 100% {
        box-shadow: 0 8px 32px rgba(37, 211, 102, 0.3);
    }
    50% {
        box-shadow: 0 8px 40px rgba(37, 211, 102, 0.6);
    }
}
```

**fadeIn** (Tab content)
```css
@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}
```

### Transições CSS

```css
Padrão: all 0.3s ease
Lenta: all 0.5s ease

Hover effects:
- transform: translateY(-10px)
- transform: scale(1.05)
- box-shadow: var(--shadow-neon)
```

---

## 🔌 JavaScript - Estrutura

### Arquitetura

**Padrão:** Modular, sem framework  
**Estilo:** ES6+ (vanilla JavaScript)  
**Abordagem:** Event-driven, DOM manipulation

### Principais Módulos

#### 1. Navegação
```javascript
// Header scroll effect
window.addEventListener('scroll', () => {
    if (window.scrollY > 100) {
        header.classList.add('scrolled');
    }
});

// Smooth scroll
navLinks.forEach(link => {
    link.addEventListener('click', (e) => {
        e.preventDefault();
        const targetSection = document.querySelector(targetId);
        // Scroll suave até a seção
    });
});

// Mobile menu toggle
mobileMenuToggle.addEventListener('click', () => {
    mobileMenuToggle.classList.toggle('active');
    navMenu.classList.toggle('active');
});
```

#### 2. Counter Animation
```javascript
// Intersection Observer para ativar contadores
const observerOptions = { threshold: 0.5 };

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            animateCounters();
        }
    });
}, observerOptions);

// RequestAnimationFrame para animação suave
const updateCounter = () => {
    current += increment;
    if (current < target) {
        counter.textContent = Math.floor(current);
        requestAnimationFrame(updateCounter);
    }
};
```

#### 3. Gallery Filter
```javascript
filterButtons.forEach(button => {
    button.addEventListener('click', () => {
        const filterValue = button.getAttribute('data-filter');
        
        galleryItems.forEach(item => {
            const itemCategory = item.getAttribute('data-category');
            // Mostrar/ocultar com transições CSS
        });
    });
});
```

#### 4. Menu Tabs
```javascript
menuTabs.forEach(tab => {
    tab.addEventListener('click', () => {
        const targetTab = tab.getAttribute('data-tab');
        
        // Remover active classes
        menuTabs.forEach(t => t.classList.remove('active'));
        menuTabContents.forEach(content => content.classList.remove('active'));
        
        // Adicionar active ao tab clicado
        tab.classList.add('active');
        document.getElementById(targetTab).classList.add('active');
    });
});
```

#### 5. Form Validation
```javascript
// Máscara de telefone
telefoneInput.addEventListener('input', (e) => {
    let value = e.target.value.replace(/\D/g, '');
    // Formatar: (11) 99999-9999
    value = value.replace(/(\d{2})(\d{5})(\d{4})/, '($1) $2-$3');
});

// Validação de e-mail
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
if (!emailRegex.test(formData.email)) {
    alert('Por favor, insira um e-mail válido.');
}
```

#### 6. Scroll Animations
```javascript
// Intersection Observer para elementos
const elementObserver = new IntersectionObserver((entries) => {
    entries.forEach((entry, index) => {
        if (entry.isIntersecting) {
            setTimeout(() => {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }, index * 100); // Stagger effect
        }
    });
}, { threshold: 0.1 });
```

### Performance Optimizations

**Debounce para scroll:**
```javascript
function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

window.addEventListener('scroll', debounce(() => {
    // Funções otimizadas
}, 10));
```

**Lazy Loading:**
```javascript
const imageObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            const img = entry.target;
            img.src = img.getAttribute('data-src');
            imageObserver.unobserve(img);
        }
    });
});
```

---

## 🎯 APIs Utilizadas

### Web APIs

1. **Intersection Observer API**
   - Counter animation
   - Scroll animations
   - Lazy loading de imagens

2. **requestAnimationFrame**
   - Animações de contadores
   - Transições suaves

3. **classList API**
   - Toggle de classes
   - Gerenciamento de estados

4. **Event Listeners**
   - Click events
   - Scroll events
   - Input events
   - Submit events

---

## 🔐 Segurança

### Validações

**Client-side:**
- Validação de formato de e-mail (regex)
- Validação de campos obrigatórios
- Sanitização de input de telefone
- Prevenção de valores inválidos em select

**Nota:** Para produção, implementar validação server-side.

### CSRF Protection
Não aplicável (sem backend).  
Para futuras implementações com backend, adicionar tokens CSRF.

---

## 📊 SEO

### Meta Tags Implementadas

```html
<!-- Essenciais -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="...">
<meta name="keywords" content="...">
<meta name="author" content="GT DRINKS">

<!-- Título -->
<title>GT DRINKS | Bartender & Coquetelaria Premium para Eventos</title>
```

### HTML Semântico

```html
<header>    - Cabeçalho do site
<nav>       - Navegação
<section>   - Seções de conteúdo
<article>   - Conteúdo independente
<footer>    - Rodapé
```

### Heading Hierarchy

```
H1 - Título principal (Hero)
  H2 - Títulos de seção
    H3 - Subtítulos (cards, items)
      H4 - Detalhes menores
```

### URLs e Links

- Links internos: `#secao`
- Links externos: `target="_blank"` + `rel="noopener"`
- Links descritivos: `aria-label` em ícones

---

## ♿ Acessibilidade

### ARIA Labels

```html
<button aria-label="Menu">
<a aria-label="Instagram">
```

### Navegação por Teclado

- Tab para navegar
- Enter para ativar
- Escape para fechar menu mobile

### Contraste de Cores

- Texto branco sobre preto: 21:1 (AAA)
- Verde neon sobre preto: 10.5:1 (AAA)
- Texto cinza sobre preto: 7.2:1 (AA)

### Form Labels

```html
<label for="campo">
<input id="campo">
```

---

## 📦 Dependências

### CDNs Utilizados

**Google Fonts:**
```html
fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800
fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700
```

**Font Awesome:**
```html
cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css
```

### Sem Dependências JavaScript
- ✅ Vanilla JS puro
- ✅ Sem jQuery
- ✅ Sem frameworks
- ✅ Sem bibliotecas de animação

---

## 🧪 Testing

### Testes Manuais Recomendados

**Funcionalidade:**
- [ ] Navegação entre seções
- [ ] Menu mobile (abrir/fechar)
- [ ] Filtros da galeria
- [ ] Abas da carta de drinks
- [ ] Validação de formulário
- [ ] Botão WhatsApp
- [ ] Links de redes sociais

**Responsividade:**
- [ ] iPhone SE (375px)
- [ ] iPhone 12 Pro (390px)
- [ ] iPad (768px)
- [ ] iPad Pro (1024px)
- [ ] Desktop (1440px)
- [ ] Large Desktop (1920px)

**Navegadores:**
- [ ] Chrome
- [ ] Firefox
- [ ] Safari
- [ ] Edge

**Performance:**
- [ ] Lighthouse Score (target: 90+)
- [ ] PageSpeed Insights
- [ ] Tempo de carregamento < 3s

---

## 🚀 Otimizações de Performance

### CSS
- ✅ Minificação recomendada para produção
- ✅ Variáveis CSS (evita repetição)
- ✅ Classes reutilizáveis
- ✅ Seletores eficientes

### JavaScript
- ✅ Event delegation onde aplicável
- ✅ Debounce em scroll events
- ✅ RequestAnimationFrame para animações
- ✅ Intersection Observer (melhor que scroll)

### Imagens
- 🔄 Lazy loading implementado
- 🔄 Compressão necessária (client-side)
- 🔄 WebP format recomendado
- 🔄 Responsive images com srcset (futura implementação)

### Loading Strategy
1. Critical CSS inline (futuro)
2. Defer JavaScript (não crítico)
3. Preconnect para fonts
4. Lazy load de imagens

---

## 🔄 Versionamento

### Git Workflow Recomendado

```bash
# Branch principal
main (ou master)

# Feature branches
feature/nova-funcionalidade
fix/correcao-bug
docs/documentacao
```

### Semantic Versioning

```
v1.0.0 - Release inicial
v1.1.0 - Novos recursos
v1.0.1 - Correções de bugs
```

---

## 📈 Melhorias Futuras

### Curto Prazo
- [ ] Adicionar mais animações micro-interactions
- [ ] Implementar lightbox para galeria
- [ ] Adicionar mais transições de página
- [ ] Otimizar carregamento de fontes

### Médio Prazo
- [ ] Integração com backend (formulário)
- [ ] Sistema de blog
- [ ] Área de depoimentos
- [ ] Página de FAQ

### Longo Prazo
- [ ] PWA (Progressive Web App)
- [ ] Modo escuro/claro
- [ ] Internacionalização (i18n)
- [ ] Painel administrativo

---

## 🛠️ Ferramentas de Desenvolvimento

### Recomendadas

**Editor:**
- VS Code + extensões:
  - Live Server
  - Prettier
  - ESLint
  - HTML CSS Support

**Debugging:**
- Chrome DevTools
- Firefox Developer Tools
- Lighthouse

**Testing:**
- BrowserStack (multi-browser)
- Responsively App (responsiveness)

**Performance:**
- PageSpeed Insights
- GTmetrix
- WebPageTest

**SEO:**
- Google Search Console
- Screaming Frog SEO Spider

---

## 📚 Recursos e Referências

### Documentação
- [MDN Web Docs](https://developer.mozilla.org/)
- [CSS-Tricks](https://css-tricks.com/)
- [JavaScript.info](https://javascript.info/)

### Design
- [Dribbble](https://dribbble.com/) - Inspiração
- [Awwwards](https://www.awwwards.com/) - Referências

### Performance
- [web.dev](https://web.dev/)
- [Can I Use](https://caniuse.com/)

---

## 📞 Suporte Técnico

### Problemas Comuns

**CSS não carrega:**
```
Verificar caminho: <link href="css/styles.css">
Limpar cache: Ctrl+Shift+Delete
```

**JavaScript não funciona:**
```
Verificar caminho: <script src="js/script.js">
Abrir Console (F12) para ver erros
```

**Imagens não aparecem:**
```
Verificar caminho: src="images/nome.jpg"
Verificar extensão do arquivo
```

---

## 📄 Licença

Este projeto foi desenvolvido especificamente para **GT DRINKS**.

**Uso:** Exclusivo do cliente  
**Modificações:** Permitidas  
**Redistribuição:** Não permitida sem autorização

---

**Versão da Documentação:** 1.0.0  
**Última Atualização:** Novembro 2026  
**Desenvolvido para:** GT DRINKS
