("Tools\quickbms.exe" "Tools\wavescan.bms" "d4_audio\base\payload\wWiseSoundBank" "Tools\Decoding_payload"
FOR %%b IN ("d4_audio\base\payload\wWiseSoundBank\*.wsb") DO ("Tools\bnkextr.exe" "%%b")
FOR %%c IN (Tools\Decoding_payload\*.WAV) DO ("Tools\ww2ogg.exe" "%%c" --pcb Tools\packed_codebooks_aoTuV_603.bin & DEL "%%c")
FOR %%d IN (Tools\Decoding_payload\*.OGG) DO ("Tools\revorb.exe" "%%d" & MOVE "%%d" "OGG_payload")) > "batch_payload.log" 2>&1

@echo off

IF EXIST "F:\D4data\Sounds\Game Files\*.wsb" (
    ECHO There are incomplete files. Please check "Game Files" folder.
)

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ((  '####@@!!$$    ))
echo        `#####@@!$$`  ))
echo     ((  '####@!!$:
echo    ((  ,####@!!$:   ))
echo        .###@!!$:
echo        `##@@!$:
echo         `#@!!$
echo   !@#    `#@!$:       @#$
echo    #$     `#@!$:       !@!
echo             '@!$:
echo         '`\   '!$: /`'
echo            '\  '!: /'
echo              '\ : /'
echo   -.'-/\\\-.'//.-'/:'\.'-.JrS'.'-=_\\
echo ' -.'-.\\'-.'//.-'.`-.'_\\-.'.-\'.-//
echo      Watch out, it's the tornado!

echo.
echo -------------------------------------------------------------

echo Unpack finished! Files should be in the 'OGG_payload' folder

echo -------------------------------------------------------------
echo.

:choice

set /P c=Should I delete BNKs and PCKs from the 'Game Files' folder [Y/N]?
if /I "%c%" EQU "Y" goto :yes
if /I "%c%" EQU "N" goto :hella_no
goto :choice

:yes

FOR %%e IN ("Game Files\*.PCK") DO (DEL "%%e")
FOR %%f IN ("Game Files\*.BNK") DO (DEL "%%f")

echo Files deleted, enjoy your unpacked audio! -/u/Vextil ;)
pause
exit

:hella_no

echo BNKs and PCKs kept, enjoy your unpacked audio! -/u/Vextil ;)

pause
exit

pause
