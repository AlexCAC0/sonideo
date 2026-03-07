@echo off
setlocal
chcp 65001 > nul
echo Sincronizando audios con canciones.json...

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "$path = 'assets/audio'; " ^
    "if (-Not (Test-Path $path)) { Write-Error 'No se encuentra la carpeta assets/audio'; exit }; " ^
    "$files = Get-ChildItem -Path $path -File -Include *.mp3, *.wav, *.m4a | ForEach-Object { " ^
    "    @{ nombre = $_.BaseName; ruta = 'assets/audio/' + $_.Name } " ^
    "}; " ^
    "$json = ConvertTo-Json -InputObject $files -Depth 10; " ^
    "[System.IO.File]::WriteAllText('assets/canciones.json', $json, [System.Text.Encoding]::UTF8); " ^
    "Write-Host '¡Sincronización de audio completada con éxito!'"

pause
