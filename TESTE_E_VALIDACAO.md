# 🧪 Teste e Validação - Site GT DRINKS

## 📋 Checklist de Testes

Use este guia para validar todas as funcionalidades do site atualizado.

---

## 1. 🖼️ Verificação de Imagens

### Hero Section
- [ ] A imagem `carta-drinks-01.jpg` aparece como fundo
- [ ] O overlay escuro está aplicado corretamente
- [ ] O texto é legível sobre a imagem
- [ ] A imagem está bem posicionada e enquadrada

### Fundador Thiago
- [ ] A foto `fundador-thiago.jpg` carrega corretamente
- [ ] A imagem está bem enquadrada
- [ ] O layout está equilibrado (imagem + texto)
- [ ] Responsivo funciona (imagem acima do texto no mobile)

### Galeria
- [ ] 3 imagens aparecem na galeria
- [ ] Efeito hover verde neon funciona
- [ ] Ícone de zoom aparece no hover
- [ ] Click na imagem abre em nova aba

---

## 2. 📱 Testes de WhatsApp

### Botão Hero (Principal)
- [ ] Botão "Solicitar Orçamento" visível
- [ ] Ícone do WhatsApp aparece
- [ ] Click abre WhatsApp Web/App
- [ ] Número correto: +55 71 99316-1565
- [ ] Mensagem pré-definida está correta

### Botão Flutuante
- [ ] Aparece no canto inferior direito
- [ ] Fica visível ao rolar a página
- [ ] Animação de pulse funciona
- [ ] Click abre WhatsApp corretamente
- [ ] Cor verde do WhatsApp (#25D366)

### Seção de Orçamento
- [ ] Número (71) 99316-1565 aparece
- [ ] Botão grande "Solicitar Orçamento pelo WhatsApp"
- [ ] Ícone do WhatsApp presente
- [ ] Link funciona corretamente

### Rodapé
- [ ] Número (71) 99316-1565 com ícone
- [ ] Link clicável
- [ ] Abre WhatsApp em nova aba

**Teste Manual:**
1. Click em cada botão do WhatsApp
2. Verificar se abre o app/web
3. Confirmar número: 5571993161565
4. Verificar mensagem pré-definida

---

## 3. 📸 Testes do Instagram

### Seção Instagram
- [ ] Ícone circular com gradiente do Instagram
- [ ] Título "Acompanhe nosso trabalho no Instagram"
- [ ] Botão "@gt_drinks_" estilizado
- [ ] Click abre Instagram em nova aba
- [ ] URL correta: https://www.instagram.com/gt_drinks_/

### Rodapé
- [ ] @gt_drinks_ com ícone
- [ ] Link clicável
- [ ] Abre perfil do Instagram

**Teste Manual:**
1. Click no botão da seção Instagram
2. Verificar se abre o perfil @gt_drinks_
3. Confirmar que abre em nova aba
4. Testar link do rodapé

---

## 4. 🧭 Testes de Navegação

### Menu Desktop
- [ ] Todos os links do menu funcionam
- [ ] Smooth scroll ativo
- [ ] Active state correto ao rolar
- [ ] Menu fixo no topo ao rolar
- [ ] Background escuro após scroll

**Links para testar:**
- [ ] Início → #home
- [ ] Sobre → #sobre
- [ ] Serviços → #servicos
- [ ] Galeria → #galeria
- [ ] Orçamento → #orcamento

### Menu Mobile
- [ ] Ícone hamburger aparece em telas pequenas
- [ ] Click abre menu lateral
- [ ] Menu ocupa 80% da largura
- [ ] Fundo escuro com blur
- [ ] Links funcionam e fecham o menu
- [ ] Botão X fecha o menu

**Teste Manual Mobile:**
1. Redimensione para menos de 768px
2. Click no ícone hamburger (3 linhas)
3. Menu deve deslizar da direita
4. Click em um link
5. Menu deve fechar automaticamente

---

## 5. 📱 Testes de Responsividade

### Desktop (1024px+)
- [ ] Layout em 3 colunas onde apropriado
- [ ] Hero ocupa altura completa
- [ ] Imagens bem posicionadas
- [ ] Textos legíveis
- [ ] Espaçamento adequado

### Tablet (768px - 1023px)
- [ ] Layout em 2 colunas
- [ ] Hero adaptado
- [ ] Imagens redimensionadas
- [ ] Menu ainda desktop
- [ ] Galeria em 2 colunas

### Mobile (320px - 767px)
- [ ] Layout em 1 coluna
- [ ] Menu hamburger ativo
- [ ] Imagens full-width
- [ ] Textos legíveis (não muito pequenos)
- [ ] Botões touch-friendly (tamanho adequado)
- [ ] Galeria em 1 coluna

**Dispositivos para Testar:**
- iPhone SE (375px)
- iPhone 12 Pro (390px)
- iPad (768px)
- Desktop (1440px)

---

## 6. ⚙️ Testes de Funcionalidades JavaScript

### Contadores Animados
- [ ] Contadores na seção "Sobre" animam ao aparecer
- [ ] 500+ Eventos
- [ ] 50+ Drinks
- [ ] 100% Satisfação
- [ ] Animação suave (não instantânea)

### Scroll Animations
- [ ] Elementos aparecem ao rolar (fade-in)
- [ ] Service cards animam
- [ ] Feature items animam
- [ ] Galeria anima
- [ ] Suave e profissional

### Gallery Hover
- [ ] Overlay verde neon ao passar mouse
- [ ] Ícone de zoom aparece
- [ ] Imagem faz zoom suave
- [ ] Transição sem lag

**Teste Manual:**
1. Abra o site
2. Role devagar pela página
3. Observe as animações
4. Passe mouse sobre galeria
5. Verifique contadores na seção Sobre

---

## 7. 🎨 Testes Visuais

### Identidade Visual
- [ ] Fundo predominantemente preto
- [ ] Verde neon (#00ff88) usado com moderação
- [ ] Textos brancos legíveis
- [ ] Textos secundários em cinza
- [ ] Sem excesso de efeitos

### Tipografia
- [ ] Montserrat no corpo do texto
- [ ] Playfair Display nos títulos
- [ ] Hierarquia clara (H1, H2, H3)
- [ ] Tamanhos adequados
- [ ] Legibilidade perfeita

### Espaçamento
- [ ] Breathing room adequado
- [ ] Não muito apertado
- [ ] Não muito espaçado
- [ ] Consistente entre seções
- [ ] Margins e paddings corretos

---

## 8. 🚀 Performance

### Velocidade de Carregamento
- [ ] Site carrega em menos de 3 segundos
- [ ] Imagens carregam rapidamente
- [ ] Sem lag ao rolar
- [ ] Animações suaves (60 FPS)

### Console do Navegador
- [ ] Sem erros JavaScript (F12 → Console)
- [ ] Sem erros 404 (imagens não encontradas)
- [ ] Sem avisos importantes
- [ ] CSS carrega corretamente

**Teste Manual:**
1. Pressione F12
2. Vá em Console
3. Recarregue a página
4. Verifique se não há erros em vermelho

---

## 9. 🔍 Testes de Conteúdo

### Textos
- [ ] Sem erros ortográficos
- [ ] Gramática correta
- [ ] Tom profissional
- [ ] Informações corretas
- [ ] Placeholders removidos

### Informações de Contato
- [ ] WhatsApp: (71) 99316-1565
- [ ] Instagram: @gt_drinks_
- [ ] Salvador - BA
- [ ] Todas as informações consistentes

### Seções Obrigatórias
- [ ] Home/Hero
- [ ] Sobre GT DRINKS
- [ ] Fundador Thiago
- [ ] Serviços
- [ ] Galeria
- [ ] Instagram
- [ ] Diferenciais
- [ ] Orçamento
- [ ] Rodapé

---

## 10. 🌐 Testes de Compatibilidade

### Navegadores Desktop
- [ ] Google Chrome (Windows/Mac)
- [ ] Mozilla Firefox
- [ ] Microsoft Edge
- [ ] Safari (Mac)

### Navegadores Mobile
- [ ] Chrome Mobile (Android)
- [ ] Safari Mobile (iOS)
- [ ] Samsung Internet

**Teste Manual:**
1. Abra em cada navegador
2. Teste navegação
3. Teste responsividade
4. Verifique funcionalidades

---

## 11. ✅ Checklist Final

Antes de considerar o site pronto:

### Imagens
- [ ] Todas carregam sem erro 404
- [ ] Qualidade adequada
- [ ] Tamanhos otimizados (< 500KB cada se possível)
- [ ] Caminhos relativos corretos

### Links
- [ ] Todos os links do WhatsApp funcionam
- [ ] Link do Instagram funciona
- [ ] Links internos funcionam (âncoras)
- [ ] Links abrem em nova aba onde apropriado

### Responsividade
- [ ] Mobile perfeito
- [ ] Tablet perfeito
- [ ] Desktop perfeito
- [ ] Sem quebras de layout

### Performance
- [ ] Carrega rápido
- [ ] Sem erros no console
- [ ] Animações suaves
- [ ] Sem lag

### Conteúdo
- [ ] Todos os textos corretos
- [ ] Contatos atualizados
- [ ] Sem placeholders
- [ ] Ortografia e gramática corretas

---

## 12. 🐛 Problemas Comuns

### Se as imagens não aparecem:
1. Verifique se estão na pasta `images/`
2. Confirme os nomes dos arquivos
3. Verifique caminhos no HTML
4. Limpe cache do navegador (Ctrl+Shift+Delete)

### Se o WhatsApp não abre:
1. Verifique se o link está correto
2. Confirme o número: 5571993161565
3. Teste em dispositivo com WhatsApp
4. Tente WhatsApp Web

### Se o menu mobile não funciona:
1. Verifique se `script.js` está carregando
2. Abra Console (F12) e veja erros
3. Teste o click no ícone hamburger
4. Verifique CSS do menu mobile

### Se animações não funcionam:
1. Verifique JavaScript carregando
2. Console sem erros
3. Role devagar para ativar Intersection Observer
4. Desative extensões do navegador

---

## 13. 📊 Relatório de Teste

Preencha após testar:

**Data do Teste:** ___/___/______  
**Navegador:** _______________  
**Dispositivo:** _______________

**Resultado Geral:**
- [ ] ✅ Aprovado - Tudo funcionando
- [ ] ⚠️ Aprovado com ressalvas
- [ ] ❌ Reprovado - Requer correções

**Observações:**
_______________________________________
_______________________________________
_______________________________________

---

## 📞 Suporte

Se encontrar problemas:

1. Verifique o arquivo `ATUALIZACAO_SITE.md`
2. Consulte a documentação técnica
3. Teste em modo anônimo do navegador
4. Limpe cache e cookies

---

**Status:** 🟢 Pronto para Testes  
**Versão:** 2.0 - Atualizada com Fotos Reais  
**Data:** Novembro 2026

🍹 **GT DRINKS - Bartender & Coquetelaria Premium**
