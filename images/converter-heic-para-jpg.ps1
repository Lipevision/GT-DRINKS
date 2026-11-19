# Script para Converter Imagens HEIC para JPG
# GT DRINKS - Conversão de Imagens

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  CONVERSOR DE IMAGENS HEIC PARA JPG" -ForegroundColor Cyan
Write-Host "  GT DRINKS" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

$arquivosHEIC = @(
    "IMG_2764.HEIC",
    "IMG_2766.HEIC",
    "IMG_2768.HEIC",
    "IMG_2770.HEIC",
    "IMG_2903.HEIC",
    "IMG_2980.HEIC",
    "IMG_3015.HEIC"
)

Write-Host "Imagens HEIC encontradas que precisam ser convertidas:" -ForegroundColor Yellow
Write-Host ""

foreach ($arquivo in $arquivosHEIC) {
    if (Test-Path $arquivo) {
        Write-Host "  [OK] $arquivo" -ForegroundColor Green
    } else {
        Write-Host "  [X] $arquivo (não encontrado)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  INSTRUÇÕES DE CONVERSÃO" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "MÉTODO 1 - Windows 11/10 (Paint/Fotos):" -ForegroundColor Yellow
Write-Host "  1. Clique com botão direito no arquivo .HEIC"
Write-Host "  2. Selecione 'Abrir com' > 'Fotos' ou 'Paint'"
Write-Host "  3. Clique em 'Arquivo' > 'Salvar como'"
Write-Host "  4. Escolha formato 'JPEG'"
Write-Host "  5. Salve com o mesmo nome, substituindo .HEIC por .jpg"
Write-Host ""

Write-Host "MÉTODO 2 - Conversor Online:" -ForegroundColor Yellow
Write-Host "  1. Acesse: https://convertio.co/pt/heic-jpg/"
Write-Host "  2. Faça upload dos 7 arquivos .HEIC"
Write-Host "  3. Selecione 'JPG' como formato de saída"
Write-Host "  4. Clique em 'Converter'"
Write-Host "  5. Baixe os arquivos convertidos"
Write-Host "  6. Coloque-os nesta pasta (images/)"
Write-Host ""

Write-Host "MÉTODO 3 - CloudConvert:" -ForegroundColor Yellow
Write-Host "  1. Acesse: https://cloudconvert.com/heic-to-jpg"
Write-Host "  2. Arraste os 7 arquivos .HEIC"
Write-Host "  3. Clique em 'Convert'"
Write-Host "  4. Baixe os arquivos .jpg"
Write-Host ""

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  NOMES DOS ARQUIVOS APÓS CONVERSÃO" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Certifique-se de que os arquivos convertidos tenham estes nomes EXATOS:" -ForegroundColor Yellow
Write-Host ""

foreach ($arquivo in $arquivosHEIC) {
    $novoNome = $arquivo.Replace(".HEIC", ".jpg")
    Write-Host "  $arquivo  -->  $novoNome" -ForegroundColor Green
}

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  APÓS A CONVERSÃO" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "1. Coloque todos os arquivos .jpg nesta pasta (images/)" -ForegroundColor Yellow
Write-Host "2. Abra o arquivo index.html em um navegador" -ForegroundColor Yellow
Write-Host "3. Verifique se todas as imagens aparecem corretamente" -ForegroundColor Yellow
Write-Host "4. As imagens já foram referenciadas no HTML com os nomes .jpg" -ForegroundColor Yellow
Write-Host ""

Write-Host "Pressione qualquer tecla para sair..." -ForegroundColor Cyan
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
