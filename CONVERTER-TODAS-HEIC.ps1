# Script de Conversão HEIC para JPG - GT DRINKS
# Converte todos os arquivos HEIC da pasta images

$ErrorActionPreference = "Continue"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "CONVERSOR HEIC PARA JPG - GT DRINKS" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$imagensPath = "c:\Users\ERICK CARTMAN\Desktop\GT DRINKS\images"
Set-Location $imagensPath

Write-Host "Pasta de trabalho: $imagensPath" -ForegroundColor Yellow
Write-Host ""

# Listar todos os arquivos HEIC
$arquivosHeic = Get-ChildItem -Filter "*.HEIC"

if ($arquivosHeic.Count -eq 0) {
    Write-Host "[AVISO] Nenhum arquivo HEIC encontrado na pasta!" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Verificando se ja foram convertidos..." -ForegroundColor Cyan
    
    $arquivosJpg = Get-ChildItem -Filter "*.jpg"
    if ($arquivosJpg.Count -gt 0) {
        Write-Host "Arquivos JPG encontrados:" -ForegroundColor Green
        $arquivosJpg | ForEach-Object { Write-Host "  - $($_.Name)" -ForegroundColor Green }
    }
    
    Read-Host "`nPressione ENTER para fechar"
    exit 0
}

Write-Host "Encontrados $($arquivosHeic.Count) arquivos HEIC:" -ForegroundColor Green
$arquivosHeic | ForEach-Object { Write-Host "  - $($_.Name)" -ForegroundColor White }
Write-Host ""

Write-Host "========================================" -ForegroundColor Yellow
Write-Host "METODO 1: Usando Windows Photos/Paint" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Yellow
Write-Host ""

Write-Host "Este script vai abrir cada arquivo HEIC para voce converter manualmente." -ForegroundColor Cyan
Write-Host ""
Write-Host "INSTRUCOES:" -ForegroundColor Yellow
Write-Host "1. O arquivo sera aberto no app Fotos ou Paint" -ForegroundColor White
Write-Host "2. Clique em: Arquivo > Salvar como > JPEG" -ForegroundColor White
Write-Host "3. Salve com o MESMO NOME mas extensao .jpg" -ForegroundColor White
Write-Host "   Exemplo: IMG_2766.HEIC -> IMG_2766.jpg" -ForegroundColor Green
Write-Host "4. Pressione ENTER no PowerShell para continuar para o proximo" -ForegroundColor White
Write-Host ""

$resposta = Read-Host "Deseja continuar? (S/N)"

if ($resposta -ne "S" -and $resposta -ne "s") {
    Write-Host "Conversao cancelada." -ForegroundColor Yellow
    exit
}

Write-Host ""
Write-Host "Iniciando conversao manual..." -ForegroundColor Green
Write-Host ""

$convertidos = 0
$pulados = 0

foreach ($arquivo in $arquivosHeic) {
    $nomeBase = $arquivo.BaseName
    $nomeJpg = "$nomeBase.jpg"
    $caminhoJpg = Join-Path $imagensPath $nomeJpg
    
    # Verificar se ja existe
    if (Test-Path $caminhoJpg) {
        Write-Host "[JA EXISTE] $nomeJpg" -ForegroundColor Green
        $convertidos++
        continue
    }
    
    Write-Host "----------------------------------------" -ForegroundColor Cyan
    Write-Host "Arquivo: $($arquivo.Name)" -ForegroundColor Yellow
    Write-Host "Converter para: $nomeJpg" -ForegroundColor Green
    Write-Host "----------------------------------------" -ForegroundColor Cyan
    Write-Host ""
    
    # Abrir o arquivo
    try {
        Start-Process $arquivo.FullName
        Write-Host ">>> Arquivo aberto! Salve como JPG e pressione ENTER <<<" -ForegroundColor Yellow
        Read-Host
        
        # Verificar se foi criado
        if (Test-Path $caminhoJpg) {
            $tamanho = (Get-Item $caminhoJpg).Length / 1KB
            Write-Host "[OK] $nomeJpg criado - $([math]::Round($tamanho, 2)) KB" -ForegroundColor Green
            $convertidos++
        } else {
            Write-Host "[AVISO] $nomeJpg nao foi encontrado" -ForegroundColor Red
            Write-Host "Certifique-se de salvar com o nome correto na pasta images" -ForegroundColor Yellow
            $pulados++
        }
        
    } catch {
        Write-Host "[ERRO] Nao foi possivel abrir: $($_.Exception.Message)" -ForegroundColor Red
        $pulados++
    }
    
    Write-Host ""
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "RESULTADO FINAL" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Total de arquivos HEIC: $($arquivosHeic.Count)" -ForegroundColor White
Write-Host "Convertidos com sucesso: $convertidos" -ForegroundColor Green
Write-Host "Pulados ou com erro: $pulados" -ForegroundColor $(if ($pulados -gt 0) { "Red" } else { "Green" })
Write-Host ""

if ($pulados -gt 0) {
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "ATENCAO: ALGUNS ARQUIVOS NAO FORAM CONVERTIDOS" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "SOLUCAO ALTERNATIVA:" -ForegroundColor Yellow
    Write-Host "Use o conversor online: https://convertio.co/pt/heic-jpg/" -ForegroundColor White
    Write-Host "1. Arraste todos os arquivos HEIC" -ForegroundColor White
    Write-Host "2. Baixe o ZIP convertido" -ForegroundColor White
    Write-Host "3. Extraia na pasta images" -ForegroundColor White
    Write-Host ""
}

Write-Host "Verificando arquivos finais na pasta..." -ForegroundColor Cyan
Write-Host ""

$todosArquivos = Get-ChildItem | Where-Object { $_.Extension -match '\.(jpg|jpeg|png|webp)$' }
Write-Host "Arquivos de imagem prontos para uso:" -ForegroundColor Green
$todosArquivos | ForEach-Object {
    $tamanho = $_.Length / 1KB
    Write-Host "  [OK] $($_.Name) - $([math]::Round($tamanho, 2)) KB" -ForegroundColor Green
}

Write-Host ""
Write-Host "Pressione ENTER para fechar..." -ForegroundColor Cyan
Read-Host
