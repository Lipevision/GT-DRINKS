# Instruções para Adicionar Imagens

Esta pasta é destinada a todas as imagens do site GT DRINKS. Siga as orientações abaixo para adicionar as imagens necessárias.

## 📸 Imagens Obrigatórias

### 1. hero-bg.jpg
- **Descrição**: Imagem de fundo para o banner principal
- **Conteúdo sugerido**: Coquetéis elegantes, drinks coloridos, bar profissional
- **Dimensões**: 1920x1080px (Full HD)
- **Formato**: JPG
- **Qualidade**: Alta (80-90%)
- **Peso máximo**: 500KB (use compressão)

### 2. favicon.png
- **Descrição**: Ícone que aparece na aba do navegador
- **Conteúdo sugerido**: Logo GT DRINKS ou iniciais "GT"
- **Dimensões**: 64x64px ou 32x32px
- **Formato**: PNG com fundo transparente
- **Peso máximo**: 20KB

## 🖼️ Imagens Recomendadas

### Seção "Sobre" (about-image)
- **Nome sugerido**: `sobre-gt-drinks.jpg`
- **Conteúdo**: Bar montado, equipe trabalhando, ou drinks em preparação
- **Dimensões**: 600x800px (retrato) ou 800x600px (paisagem)
- **Formato**: JPG

### Seção Fundador (founder-image)
- **Nome sugerido**: `thiago-fundador.jpg`
- **Conteúdo**: Foto profissional do Thiago
- **Dimensões**: 500x700px (retrato)
- **Formato**: JPG
- **Dica**: Fundo neutro ou em ação preparando drinks

### Galeria de Drinks (mínimo 6 fotos)
- **Nomes sugeridos**: `drink-01.jpg`, `drink-02.jpg`, etc.
- **Conteúdo**: Drinks individuais, bem iluminados e apresentados
- **Dimensões**: 800x800px (quadrado) ou 800x600px
- **Formato**: JPG
- **Categorias**: Marque cada imagem com sua categoria (clássicos, autorais, tropicais)

### Galeria de Eventos (mínimo 4 fotos)
- **Nomes sugeridos**: `evento-01.jpg`, `evento-02.jpg`, etc.
- **Conteúdo**: Eventos realizados, convidados apreciando drinks, ambiente
- **Dimensões**: 1200x800px (paisagem)
- **Formato**: JPG

### Galeria de Bar Setup (mínimo 2 fotos)
- **Nomes sugeridos**: `bar-setup-01.jpg`, `bar-setup-02.jpg`, etc.
- **Conteúdo**: Estrutura do bar montada, equipamentos, decoração
- **Dimensões**: 1200x800px (paisagem)
- **Formato**: JPG

## 🎨 Dicas para as Fotos

### Qualidade:
- Use iluminação adequada
- Evite fotos tremidas ou desfocadas
- Prefira luz natural quando possível
- Para drinks, use fundos escuros para destacar as cores

### Composição:
- Centralize o objeto principal
- Use regra dos terços para fotos de ambiente
- Mantenha o fundo limpo e organizado
- Destaque os detalhes (guarnições, cores, texturas)

### Edição:
- Ajuste brilho e contraste
- Realce as cores (especialmente o verde neon se presente)
- Mantenha cores naturais e realistas
- Não exagere nos filtros

### Otimização para Web:
- Comprima as imagens sem perder qualidade
- Use ferramentas como TinyPNG, Squoosh ou Photoshop
- Mantenha o equilíbrio entre qualidade e tamanho do arquivo
- Objetivo: carregar rápido mas manter visual profissional

## 🔧 Ferramentas Recomendadas

### Compressão de Imagens:
- [TinyPNG](https://tinypng.com/) - Online, fácil de usar
- [Squoosh](https://squoosh.app/) - Online, com controle avançado
- [ImageOptim](https://imageoptim.com/) - Mac
- [RIOT](https://riot-optimizer.com/) - Windows

### Edição de Imagens:
- Adobe Photoshop
- GIMP (gratuito)
- Canva (online)
- Photopea (online, gratuito)

### Redimensionamento:
- [BulkResizePhotos](https://bulkresizephotos.com/)
- [iLoveIMG](https://www.iloveimg.com/pt/redimensionar-imagem)

## 📋 Checklist

Após adicionar as imagens, atualize os seguintes pontos no `index.html`:

- [ ] Substituir `src="../images/hero-bg.jpg"` no hero section
- [ ] Adicionar `href="images/favicon.png"` no favicon
- [ ] Substituir `.image-placeholder` da seção Sobre por `<img src="images/sobre-gt-drinks.jpg" alt="GT DRINKS">`
- [ ] Substituir `.image-placeholder` do Fundador por `<img src="images/thiago-fundador.jpg" alt="Thiago - Fundador">`
- [ ] Adicionar imagens reais nos `.gallery-item` com atributo `data-category` apropriado
- [ ] Verificar que todas as tags `<img>` têm atributos `alt` descritivos

## 🎯 Exemplo de Código para Substituir Placeholders

### Substituir placeholder por imagem real:

**Antes:**
```html
<div class="image-placeholder">
    <i class="fas fa-cocktail"></i>
    <p>Imagem da GT DRINKS</p>
</div>
```

**Depois:**
```html
<img src="images/sobre-gt-drinks.jpg" alt="GT DRINKS - Serviço de Bartender Premium">
```

### Adicionar imagem na galeria:

```html
<div class="gallery-item" data-category="drinks">
    <img src="images/drink-mojito.jpg" alt="Mojito Clássico">
</div>
```

## 📞 Precisa de Ajuda?

Se precisar de orientação sobre fotografia, edição ou implementação das imagens no código, consulte o README.md principal do projeto.

---

**Importante**: Todas as imagens devem ser originais ou ter licença de uso. Evite usar imagens protegidas por direitos autorais sem permissão.
