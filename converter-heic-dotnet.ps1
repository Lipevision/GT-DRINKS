# Conversor HEIC para JPG usando .NET e Windows Imaging Component
# Este script tenta converter HEIC para JPG usando recursos nativos do Windows

$ErrorActionPreference = "Stop"

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "CONVERSOR HEIC PARA JPG - GT DRINKS" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

$imagensPath = "c:\Users\ERICK CARTMAN\Desktop\GT DRINKS\images"
Set-Location $imagensPath

Write-Host "Verificando arquivos HEIC..." -ForegroundColor Yellow
Write-Host ""

$arquivosHeic = Get-ChildItem -Filter "*.HEIC" | Where-Object { $_.Name -match "^IMAGEM \d\.HEIC$" }

if ($arquivosHeic.Count -eq 0) {
    Write-Host "[ERRO] Nenhum arquivo HEIC encontrado!" -ForegroundColor Red
    exit 1
}

Write-Host "Encontrados $($arquivosHeic.Count) arquivos HEIC" -ForegroundColor Green
Write-Host ""

# Tentar usar o conversor do Windows
try {
    # Verificar se o codec HEIF está instalado
    Write-Host "Verificando suporte HEIF do Windows..." -ForegroundColor Yellow
    
    Add-Type -AssemblyName System.Drawing
    
    foreach ($arquivo in $arquivosHeic) {
        $nomeBase = $arquivo.BaseName
        $outputJpg = Join-Path $imagensPath "$nomeBase.jpg"
        
        Write-Host "Processando: $($arquivo.Name)" -ForegroundColor Cyan
        
        try {
            # Tentar carregar usando System.Drawing
            $imagem = [System.Drawing.Image]::FromFile($arquivo.FullName)
            
            # Configurar encoder JPEG
            $encoder = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | 
                Where-Object { $_.MimeType -eq "image/jpeg" } | 
                Select-Object -First 1
            
            $encoderParams = New-Object System.Drawing.Imaging.EncoderParameters(1)
            $encoderParams.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter(
                [System.Drawing.Imaging.Encoder]::Quality, 95)
            
            # Salvar como JPEG
            $imagem.Save($outputJpg, $encoder, $encoderParams)
            $imagem.Dispose()
            
            Write-Host "  [OK] Convertido para: $nomeBase.jpg" -ForegroundColor Green
            
        } catch {
            Write-Host "  [FALHA] System.Drawing nao suporta HEIC: $($_.Exception.Message)" -ForegroundColor Red
            Write-Host "  Tentando metodo alternativo..." -ForegroundColor Yellow
            
            # Método alternativo: usar o app Fotos via COM
            try {
                $shell = New-Object -ComObject Shell.Application
                $folder = $shell.Namespace($imagensPath)
                $item = $folder.ParseName($arquivo.Name)
                
                # Tentar invocar conversão via shell
                Write-Host "  [INFO] Use o metodo manual descrito no guia" -ForegroundColor Yellow
                
            } catch {
                Write-Host "  [FALHA] Metodo alternativo tambem falhou" -ForegroundColor Red
            }
        }
    }
    
} catch {
    Write-Host "[ERRO] Falha na conversao: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host ""
    Write-Host "SOLUCAO: Use o conversor online ou manual" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "Verificando resultados..." -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

$convertidos = 0
$faltam = 0

for ($i = 1; $i -le 7; $i++) {
    $nomeJpg = "IMAGEM $i.jpg"
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
Write-Host "Resultado: $convertidos convertidos, $faltam faltando" -ForegroundColor $(if ($faltam -eq 0) { "Green" } else { "Yellow" })
Write-Host ""

if ($faltam -gt 0) {
    Write-Host "=====================================" -ForegroundColor Red
    Write-Host "CONVERSAO MANUAL NECESSARIA" -ForegroundColor Red
    Write-Host "=====================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "O Windows precisa do codec HEIF instalado." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "SOLUCOES:" -ForegroundColor Cyan
    Write-Host "1. Instalar 'Extensoes de Imagem HEIF' da Microsoft Store" -ForegroundColor White
    Write-Host "2. Usar conversor online: https://convertio.co/pt/heic-jpg/" -ForegroundColor White
    Write-Host "3. Usar app Fotos: Abrir cada HEIC e Salvar Como JPG" -ForegroundColor White
    Write-Host ""
}

Read-Host "Pressione ENTER para fechar"
