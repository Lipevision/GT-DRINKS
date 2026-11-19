# ╔═══════════════════════════════════════════════════════════════════╗
# ║     CONVERSOR DE IMAGENS HEIC PARA JPG - GT DRINKS               ║
# ║     Execute este script para converter TODAS as imagens           ║
# ╚═══════════════════════════════════════════════════════════════════╝

Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  CONVERSOR DE IMAGENS HEIC → JPG" -ForegroundColor Cyan
Write-Host "  GT DRINKS" -ForegroundColor Cyan
Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Cyan
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

Write-Host "Verificando arquivos HEIC..." -ForegroundColor Yellow
Write-Host ""

$total = 0
foreach ($arquivo in $arquivosHEIC) {
    if (Test-Path $arquivo) {
        $total++
        Write-Host "  ✓ $arquivo" -ForegroundColor Green
    } else {
        Write-Host "  ✗ $arquivo (NÃO ENCONTRADO)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Total de arquivos HEIC encontrados: $total de 7" -ForegroundColor Cyan
Write-Host ""

# Tentar conversão automática com ImageMagick
$magickDisponivel = Get-Command magick -ErrorAction SilentlyContinue

if ($magickDisponivel) {
    Write-Host "ImageMagick encontrado! Iniciando conversão automática..." -ForegroundColor Green
    Write-Host ""
    
    $convertidos = 0
    foreach ($arquivo in $arquivosHEIC) {
        if (Test-Path $arquivo) {
            $nomeJPG = $arquivo -replace '\.HEIC$', '.jpg'
            
            try {
                Write-Host "Convertendo $arquivo..." -ForegroundColor Yellow
                magick convert $arquivo -quality 90 $nomeJPG
                
                if (Test-Path $nomeJPG) {
                    $convertidos++
                    Write-Host "  ✓ $nomeJPG criado com sucesso!" -ForegroundColor Green
                } else {
                    Write-Host "  ✗ Erro ao criar $nomeJPG" -ForegroundColor Red
                }
            } catch {
                Write-Host "  ✗ Erro: $($_.Exception.Message)" -ForegroundColor Red
            }
            Write-Host ""
        }
    }
    
    Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Cyan
    Write-Host "CONVERSÃO CONCLUÍDA!" -ForegroundColor Green
    Write-Host "Total convertido: $convertidos de $total arquivos" -ForegroundColor Cyan
    Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Cyan
    
} else {
    Write-Host "ImageMagick NÃO está instalado." -ForegroundColor Red
    Write-Host ""
    Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Yellow
    Write-Host "  INSTRUÇÕES DE CONVERSÃO MANUAL" -ForegroundColor Yellow
    Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Yellow
    Write-Host ""
    
    Write-Host "MÉTODO 1 - Windows Fotos (RECOMENDADO):" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Para cada arquivo .HEIC:" -ForegroundColor White
    Write-Host "  1. Clique com botão DIREITO no arquivo" -ForegroundColor White
    Write-Host "  2. Selecione 'Abrir com' → 'Fotos'" -ForegroundColor White
    Write-Host "  3. Clique nos 3 pontinhos (...) no canto superior" -ForegroundColor White
    Write-Host "  4. Selecione 'Salvar uma cópia'" -ForegroundColor White
    Write-Host "  5. Escolha formato 'JPEG'" -ForegroundColor White
    Write-Host "  6. Salve com o nome sem .HEIC (ex: IMG_2766.jpg)" -ForegroundColor White
    Write-Host ""
    
    Write-Host "MÉTODO 2 - Conversor Online (MAIS RÁPIDO):" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "  1. Acesse: https://convertio.co/pt/heic-jpg/" -ForegroundColor White
    Write-Host "  2. Clique em 'Escolher arquivos'" -ForegroundColor White
    Write-Host "  3. Selecione os 7 arquivos .HEIC" -ForegroundColor White
    Write-Host "  4. Clique em 'CONVERTER'" -ForegroundColor White
    Write-Host "  5. Aguarde 1-2 minutos" -ForegroundColor White
    Write-Host "  6. Clique em 'Baixar' (vai baixar um .zip)" -ForegroundColor White
    Write-Host "  7. Extraia o .zip" -ForegroundColor White
    Write-Host "  8. Copie os arquivos .jpg para esta pasta" -ForegroundColor White
    Write-Host ""
    
    Write-Host "MÉTODO 3 - Alternativas Online:" -ForegroundColor Cyan
    Write-Host "  • https://cloudconvert.com/heic-to-jpg" -ForegroundColor White
    Write-Host "  • https://heictojpeg.com/" -ForegroundColor White
    Write-Host ""
}

Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  VERIFICAÇÃO PÓS-CONVERSÃO" -ForegroundColor Cyan
Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

Write-Host "Arquivos JPG necessários:" -ForegroundColor Yellow
Write-Host ""

$arquivosJPG = @(
    "IMG_2764.jpg",
    "IMG_2766.jpg",
    "IMG_2768.jpg",
    "IMG_2770.jpg",
    "IMG_2903.jpg",
    "IMG_2980.jpg",
    "IMG_3015.jpg"
)

$jpgEncontrados = 0
foreach ($arquivo in $arquivosJPG) {
    if (Test-Path $arquivo) {
        $jpgEncontrados++
        $tamanho = (Get-Item $arquivo).Length / 1MB
        Write-Host "  ✓ $arquivo ($([math]::Round($tamanho, 2)) MB)" -ForegroundColor Green
    } else {
        Write-Host "  ✗ $arquivo (FALTANDO - precisa converter)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Cyan

if ($jpgEncontrados -eq 7) {
    Write-Host "✓ PERFEITO! Todas as 7 imagens JPG estão disponíveis!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Próximo passo: Abra o arquivo index.html no navegador" -ForegroundColor Cyan
    Write-Host "Todas as imagens devem aparecer corretamente!" -ForegroundColor Cyan
} else {
    Write-Host "⚠ ATENÇÃO: Faltam $(7 - $jpgEncontrados) imagens JPG" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Converta os arquivos HEIC restantes usando um dos métodos acima." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "═══════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
Write-Host "Pressione qualquer tecla para sair..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
