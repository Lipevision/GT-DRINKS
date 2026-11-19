# INSTRUÇÕES PARA CONVERSÃO DE ARQUIVOS HEIC PARA JPG

## 🎯 OBJETIVO
Converter os arquivos IMAGEM 1.HEIC até IMAGEM 7.HEIC para formato JPG, para que possam ser exibidos corretamente no site GT DRINKS.

---

## 📋 ARQUIVOS QUE PRECISAM SER CONVERTIDOS

Na pasta `images`, você tem os seguintes arquivos HEIC que precisam ser convertidos:

1. **IMAGEM 1.HEIC** → converter para **IMAGEM 1.jpg**
2. **IMAGEM 2.HEIC** → converter para **IMAGEM 2.jpg**
3. **IMAGEM 3.HEIC** → converter para **IMAGEM 3.jpg**
4. **IMAGEM 4.HEIC** → converter para **IMAGEM 4.jpg**
5. **IMAGEM 5.HEIC** → converter para **IMAGEM 5.jpg**
6. **IMAGEM 6.HEIC** → converter para **IMAGEM 6.jpg**
7. **IMAGEM 7.HEIC** → converter para **IMAGEM 7.jpg**

---

## 🔧 MÉTODO 1: Usando o Aplicativo "Fotos" do Windows 11

**Esta é a opção mais fácil e não requer instalação!**

### Passos:
1. Abra a pasta `c:\Users\ERICK CARTMAN\Desktop\GT DRINKS\images`
2. Clique duas vezes em **IMAGEM 1.HEIC** para abrir no aplicativo Fotos
3. Clique no ícone de **três pontos (...)** no canto superior direito
4. Selecione **"Salvar como"** ou **"Exportar"**
5. Escolha o formato **JPEG** ou **JPG**
6. Salve com o nome **IMAGEM 1.jpg** na mesma pasta `images`
7. Repita o processo para IMAGEM 2.HEIC, IMAGEM 3.HEIC, etc.

⚠️ **IMPORTANTE**: Mantenha os nomes EXATOS:
- IMAGEM 1.jpg
- IMAGEM 2.jpg
- IMAGEM 3.jpg
- IMAGEM 4.jpg
- IMAGEM 5.jpg
- IMAGEM 6.jpg
- IMAGEM 7.jpg

---

## 🌐 MÉTODO 2: Usando Conversor Online (Convertio)

Se o método 1 não funcionar, use um conversor online:

### Passos:
1. Acesse: https://convertio.co/pt/heic-jpg/
2. Clique em **"Escolher arquivos"**
3. Selecione **IMAGEM 1.HEIC** da pasta `images`
4. Aguarde o upload e a conversão automática
5. Clique em **"Baixar"** para salvar o arquivo convertido
6. **Renomeie** o arquivo baixado para **IMAGEM 1.jpg** (se necessário)
7. **Mova** o arquivo para a pasta `c:\Users\ERICK CARTMAN\Desktop\GT DRINKS\images`
8. Repita para os outros 6 arquivos HEIC

⚠️ **ATENÇÃO**: 
- Você pode converter múltiplos arquivos de uma vez no Convertio
- Mantenha os nomes EXATOS após a conversão

---

## 🔄 MÉTODO 3: Converter Todos de Uma Vez (PowerShell com CopyTrans HEIC)

Se você tem muitos arquivos e quer converter todos de uma vez:

### Instalação do CopyTrans HEIC (gratuito):
1. Baixe em: https://www.copytrans.net/copytransheic/
2. Instale o programa
3. Após instalar, clique com o botão direito em qualquer arquivo .HEIC
4. Selecione **"Converter para JPEG com CopyTrans"**
5. Os arquivos serão convertidos automaticamente na mesma pasta

### OU use o PowerShell (após instalar CopyTrans HEIC):
1. Abra o PowerShell
2. Navegue até a pasta images:
```powershell
cd "c:\Users\ERICK CARTMAN\Desktop\GT DRINKS\images"
```
3. Execute este comando para converter todos:
```powershell
Get-ChildItem -Filter "IMAGEM *.HEIC" | ForEach-Object {
    $outputName = $_.Name -replace '\.HEIC$', '.jpg'
    # Clique com botão direito no arquivo e escolha "Converter para JPEG"
    # Ou arraste o arquivo para a área de conversão do CopyTrans HEIC
}
```

---

## ✅ VERIFICAÇÃO APÓS CONVERSÃO

Depois de converter TODOS os arquivos, verifique:

1. ✅ A pasta `images` deve conter:
   - IMAGEM 1.jpg
   - IMAGEM 2.jpg
   - IMAGEM 3.jpg
   - IMAGEM 4.jpg
   - IMAGEM 5.jpg
   - IMAGEM 6.jpg
   - IMAGEM 7.jpg

2. ✅ Abra o arquivo **index.html** em um navegador (Chrome, Firefox, Edge)

3. ✅ Verifique se as imagens aparecem nas seguintes seções:
   - **Tela Inicial (Hero)**: IMAGEM 6 deve aparecer como fundo
   - **Quem Somos**: IMAGEM 1 deve aparecer
   - **Galeria**: IMAGEM 2, 3, 4, 5, 7 devem aparecer (8 fotos no total)

---

## 🎨 MAPEAMENTO COMPLETO DAS IMAGENS NO SITE

| Seção | Imagem Utilizada | Localização no Código |
|-------|------------------|----------------------|
| **HERO (Tela Inicial)** | IMAGEM 6.jpg | Fundo da primeira seção |
| **QUEM SOMOS** | IMAGEM 1.jpg | Foto à direita do texto |
| **GALERIA (8 fotos)** | IMAGEM 2.jpg | Item 1 da galeria |
| **GALERIA (8 fotos)** | IMAGEM 3.jpg | Item 2 da galeria |
| **GALERIA (8 fotos)** | IMAGEM 4.jpg | Item 3 da galeria |
| **GALERIA (8 fotos)** | IMAGEM 5.jpg | Item 4 da galeria |
| **GALERIA (8 fotos)** | IMAGEM 7.jpg | Item 5 da galeria |
| **GALERIA (8 fotos)** | drink-casamento-01.png | Item 6 da galeria |
| **GALERIA (8 fotos)** | fundador-thiago.jpg | Item 7 da galeria |
| **GALERIA (8 fotos)** | servico-bartender-01.png | Item 8 da galeria |
| **DEPOIMENTOS** | photo_2026-11-18_23-05-25.jpg | Vanessa |
| **DEPOIMENTOS** | photo_2026-11-18_23-05-27.jpg | Amanda |

---

## 🚨 RESOLUÇÃO DE PROBLEMAS

### Se as imagens não aparecerem após conversão:
1. Verifique se os nomes dos arquivos estão **EXATAMENTE** como especificado (com espaços e números corretos)
2. Verifique se os arquivos estão na pasta `images` correta
3. Limpe o cache do navegador (Ctrl + Shift + Delete)
4. Recarregue a página (Ctrl + F5)

### Se a conversão não funcionar:
- Tente o Método 2 (Convertio online) - é o mais confiável
- Certifique-se de que tem permissão de escrita na pasta `images`

---

## 📞 PRONTO PARA TESTAR?

Após converter todos os 7 arquivos HEIC para JPG:
1. Abra o arquivo `index.html` no seu navegador
2. Todas as imagens devem aparecer corretamente
3. O site estará 100% funcional

**Boa sorte com a conversão! 🚀**
