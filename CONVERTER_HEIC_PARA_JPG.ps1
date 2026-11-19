# Script para converter IMAGEM 1-7.HEIC para JPG usando Windows
# Execute este script clicando com botão direito e "Executar com PowerShell"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "CONVERSOR DE IMAGENS HEIC PARA JPG" -ForegroundColor Cyan
Write-Host "GT DRINKS - Script Automatizado" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$imagensFolder = "c:\Users\ERICK CARTMAN\Desktop\GT DRINKS\images"
Set-Location $imagensFolder

Write-Host "Pasta de trabalho: $imagensFolder" -ForegroundColor Yellow
Write-Host ""

# Lista de arquivos para converter
$arquivos = @(
    "IMAGEM 1.HEIC",
    "IMAGEM 2.HEIC",
    "IMAGEM 3.HEIC",
    "IMAGEM 4.HEIC",
    "IMAGEM 5.HEIC",
    "IMAGEM 6.HEIC",
    "IMAGEM 7.HEIC"
)

Write-Host "IMPORTANTE: Este script vai abrir cada imagem no Windows Photos." -ForegroundColor Red
Write-Host "PARA CADA IMAGEM, você precisa:" -ForegroundColor Red
Write-Host "1. Aguardar a imagem abrir no app Fotos" -ForegroundColor White
Write-Host "2. Clicar nos 3 pontos (...) no canto superior direito" -ForegroundColor White
Write-Host "3. Selecionar 'Salvar uma copia' ou 'Salvar como'" -ForegroundColor White
Write-Host "4. Escolher formato JPG/JPEG" -ForegroundColor White
Write-Host "5. Salvar com o MESMO NOME mas extensão .jpg" -ForegroundColor White
Write-Host "   Exemplo: IMAGEM 1.HEIC -> IMAGEM 1.jpg" -ForegroundColor White
Write-Host ""

$resposta = Read-Host "Deseja continuar? (S/N)"

if ($resposta -ne "S" -and $resposta -ne "s") {
    Write-Host "Conversao cancelada." -ForegroundColor Yellow
    exit
}

Write-Host ""
Write-Host "Iniciando processo de conversao..." -ForegroundColor Green
Write-Host ""

foreach ($arquivo in $arquivos) {
    $caminhoCompleto = Join-Path $imagensFolder $arquivo
    
    if (Test-Path $caminhoCompleto) {
        Write-Host "Abrindo: $arquivo" -ForegroundColor Cyan
        Write-Host ">>> SALVE COMO JPG COM O MESMO NOME <<<" -ForegroundColor Yellow
        
        # Abre a imagem no visualizador padrão do Windows
        Start-Process $caminhoCompleto
        
        # Aguarda o usuário fazer a conversão
        Write-Host ""
        Write-Host "Pressione ENTER depois de salvar o arquivo como JPG..." -ForegroundColor Green
        Read-Host
        
        # Verifica se o arquivo JPG foi criado
        $nomeJpg = $arquivo -replace '\.HEIC$', '.jpg'
        $caminhoJpg = Join-Path $imagensFolder $nomeJpg
        
        if (Test-Path $caminhoJpg) {
            Write-Host "[OK] $nomeJpg criado com sucesso!" -ForegroundColor Green
        } else {
            Write-Host "[AVISO] $nomeJpg nao foi encontrado. Certifique-se de salvar com o nome correto." -ForegroundColor Red
        }
        
        Write-Host ""
        
    } else {
        Write-Host "[ERRO] Arquivo nao encontrado: $arquivo" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "PROCESSO CONCLUIDO!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Verificação final
Write-Host "Verificando arquivos JPG criados:" -ForegroundColor Yellow
Write-Host ""

$todosConvertidos = $true
foreach ($i in 1..7) {
    $nomeJpg = "IMAGEM $i.jpg"
    $caminhoJpg = Join-Path $imagensFolder $nomeJpg
    
    if (Test-Path $caminhoJpg) {
        $tamanho = (Get-Item $caminhoJpg).Length / 1KB
        Write-Host "[OK] $nomeJpg - $([math]::Round($tamanho, 2)) KB" -ForegroundColor Green
    } else {
        Write-Host "[FALTA] $nomeJpg - NAO ENCONTRADO" -ForegroundColor Red
        $todosConvertidos = $false
    }
}

Write-Host ""

if ($todosConvertidos) {
    Write-Host "SUCESSO! Todas as 7 imagens foram convertidas!" -ForegroundColor Green
    Write-Host "Agora o site GT DRINKS podera exibir as fotos corretamente." -ForegroundColor Green
} else {
    Write-Host "ATENCAO: Algumas imagens ainda precisam ser convertidas." -ForegroundColor Yellow
    Write-Host "Execute novamente este script ou converta manualmente." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Pressione ENTER para fechar..." -ForegroundColor Cyan
Read-Host
