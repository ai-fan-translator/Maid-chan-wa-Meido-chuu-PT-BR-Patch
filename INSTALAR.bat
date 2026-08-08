@echo off
chcp 65001 >nul
setlocal
cd /d "%~dp0"

echo ========================================
echo  Maid-chan wa Meido-chuu - Patch PT-BR
echo ========================================
echo.

if not exist "メイドちゃんは迷途ちゅう.exe" (
  if not exist "*.exe" (
    echo ERRO: Coloque esta pasta DENTRO da pasta do jogo
    echo ^(onde esta o executavel principal^) e rode de novo.
    echo.
    pause
    exit /b 1
  )
)

if not exist "_pt_files\data.xp3" (
  echo ERRO: Pasta _pt_files incompleta.
  pause
  exit /b 1
)

if not exist "data.xp3.bak_jp" (
  echo Criando backup JP: data.xp3.bak_jp
  copy /Y "data.xp3" "data.xp3.bak_jp" >nul
) else (
  echo Backup JP ja existe: data.xp3.bak_jp
)

if not exist "data.xp3.index.bak_jp" (
  if exist "data.xp3.index" (
    echo Criando backup JP: data.xp3.index.bak_jp
    copy /Y "data.xp3.index" "data.xp3.index.bak_jp" >nul
  )
) else (
  echo Backup JP ja existe: data.xp3.index.bak_jp
)

echo Aplicando arquivos PT...
copy /Y "_pt_files\data.xp3" "data.xp3" >nul
copy /Y "_pt_files\data.xp3.index" "data.xp3.index" >nul

echo.
echo Patch instalado.
echo Rode o jogo pelo exe principal ^(nao use startup.exe^).
echo Para voltar ao japones: RESTAURAR_JP.bat
echo.
pause
