@echo off
set "sourceFile=todo.txt"
set "lookupFile=completed.txt"
set "soundfileFolder=..\d4_audio\base\payload"
rem can be flipped for performance if req
set "destinationFolder=%soundfileFolder%\done"

if not exist "%destinationFolder%" mkdir "%destinationFolder%"

for /f "usebackq delims=" %%A in ("%sourceFile%") do (
    findstr /c:"%%A" "%lookupFile%" > nul
    if not errorlevel 1 (
        move "%soundfileFolder%\wWiseSoundBank\%%A" "%destinationFolder%\"
        echo Moved file: %%A
    )
)

echo All relevant files moved.
pause

