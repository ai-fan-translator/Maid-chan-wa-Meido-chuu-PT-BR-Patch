@echo off
chcp 65001 >nul
setlocal
cd /d "%~dp0"

echo ========================================
echo  Restaurar japones original
echo ========================================
echo.

if not exist "data.xp3.bak_jp" (
  echo ERRO: Backup data.xp3.bak_jp nao encontrado.
  echo Instale o patch com INSTALAR.bat primeiro ^(ele cria o backup^).
  echo.
  pause
  exit /b 1
)

copy /Y "data.xp3.bak_jp" "data.xp3" >nul
if exist "data.xp3.index.bak_jp" (
  copy /Y "data.xp3.index.bak_jp" "data.xp3.index" >nul
)

echo.
echo Japones restaurado.
echo.
pause
