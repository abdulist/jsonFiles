@echo off
setlocal enabledelayedexpansion

rem Supported input extensions
set extensions=jpg jpeg bmp tiff gif webp

for %%e in (%extensions%) do (
    for %%f in (*%%e) do (
        echo Converting: %%f
        ffmpeg -y -i "%%f" "%%~nf.png"
    )
)

echo Done!
pause
