@echo off
chcp 65001 > nul

set "output_dir=%CD%"

set /p "filename=Введите имя презентации: "

if not defined filename (
    echo Имя файла не может быть пустым!
    pause
    exit /b
)

if /i not "%filename:~-5%"==".pptx" set "filename=%filename%.pptx"

type nul > "%output_dir%\%filename%"

echo.
echo Файл создан: "%output_dir%\%filename%"
pause