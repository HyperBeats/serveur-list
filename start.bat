@echo off

set url=https://raw.githubusercontent.com/HyperBeats/serveur-list/main/favourites.json
set destination=players2
set final_file=favourites.json

curl -o "%destination%\%final_file%" "%url%"

:: CHECK
if %errorlevel% neq 0 (
    echo Erreur lors du téléchargement.
    pause
    exit /b 1
)

echo DONE
start "" h2m-mod.exe
pause