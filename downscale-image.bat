@echo off
setlocal

REM Set the input file extension
set INPUT_EXT=png

REM Loop through all input PNG images
for %%F in (*.%INPUT_EXT%) do (
    echo Processing %%F...
    ffmpeg -y -i "%%F" -vf scale=1024:1024 "temp_%%F"
    move /Y "temp_%%F" "%%F" >nul
)

echo Done!
pause