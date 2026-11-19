# Script para converter os 7 arquivos HEIC restantes
# GT DRINKS - Conversão Final

$ErrorActionPreference = "Continue"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "CONVERSOR HEIC - GT DRINKS" -ForegroundColor Cyan
Write-Host "7 arquivos restantes" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$imagensPath = "c:\Users\ERICK CARTMAN\Desktop\GT DRINKS\images"
Set-Location $imagensPath

# Lista dos 7 arquivos HEIC restantes
$arquivosRestantes = @(
    "IMG_2770.HEIC",
    "IMG_2926.HEIC",
    "IMG_2947.HEIC",
    "IMG_3015.HEIC",
    "IMG_3449.HEIC",
    "IMG_3450.HEIC",
    "IMG_3452.HEIC"
)

Write-Host "Arquivos para converter:" -ForegroundColor Yellow
$arquivosRestantes | ForEach-Object { Write-Host "  - $_" -ForegroundColor White }
Write-Host ""

Write-Host "========================================" -ForegroundColor Yellow
Write-Host "INSTRUCOES DE CONVERSAO" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Yellow
Write-Host ""
Write-Host "OPCAO 1: Conversor Online (RECOMENDADO)" -ForegroundColor Green
Write-Host "1. Acesse: https://convertio.co/pt/heic-jpg/" -ForegroundColor White
Write-Host "2. Arraste os 7 arquivos HEIC listados acima" -ForegroundColor White
Write-Host "3. Baixe o ZIP e extraia na pasta images" -ForegroundColor White
Write-Host ""
Write-Host "OPCAO 2: Windows Photos (Manual)" -ForegroundColor Green
Write-Host "Para cada arquivo:" -ForegroundColor White
Write-Host "1. Clique duas vezes (abre no app Fotos)" -ForegroundColor White
Write-Host "2. Clique nos 3 pontos (...) > Salvar como" -ForegroundColor White
Write-Host "3. Escolha JPEG e salve com o mesmo nome" -ForegroundColor White
Write-Host ""

$resposta = Read-Host "Deseja abrir cada arquivo para conversao manual? (S/N)"

if ($resposta -eq "S" -or $resposta -eq "s") {
    Write-Host ""
    Write-Host "Abrindo arquivos..." -ForegroundColor Green
    Write-Host ""
    
    foreach ($arquivo in $arquivosRestantes) {
        $caminhoCompleto = Join-Path $imagensPath $arquivo
        
        if (Test-Path $caminhoCompleto) {
            Write-Host "Abrindo: $arquivo" -ForegroundColor Cyan
            Start-Process $caminhoCompleto
            Write-Host ">>> Salve como JPG e pressione ENTER <<<" -ForegroundColor Yellow
            Read-Host
        }
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "VERIFICACAO FINAL" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Verificar quais foram convertidos
Write-Host "Status dos arquivos:" -ForegroundColor Yellow
Write-Host ""

$convertidos = 0
$faltam = 0

foreach ($arquivo in $arquivosRestantes) {
    $nomeBase = $arquivo -replace '\.HEIC$', ''
    $nomeJpg = "$nomeBase.jpg"
    $caminhoJpg = Join-Path $imagensPath $nomeJpg
    
    if (Test-Path $caminhoJpg) {
        $tamanho = (Get-Item $caminhoJpg).Length / 1KB
        Write-Host "[OK] $nomeJpg - $([math]::Round($tamanho, 2)) KB" -ForegroundColor Green
        $convertidos++
    } else {
        Write-Host "[FALTA] $nomeJpg" -ForegroundColor Red
        $faltam++
    }
}

Write-Host ""
Write-Host "Convertidos: $convertidos / 7" -ForegroundColor $(if ($convertidos -eq 7) { "Green" } else { "Yellow" })
Write-Host "Faltando: $faltam / 7" -ForegroundColor $(if ($faltam -eq 0) { "Green" } else { "Red" })

Write-Host ""
Read-Host "Pressione ENTER para fechar"
