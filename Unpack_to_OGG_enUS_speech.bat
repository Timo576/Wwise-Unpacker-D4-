("Tools\quickbms.exe" "Tools\wavescan.bms" "d4_audio\enUS_speech\child\wWiseSoundBank" "Tools\Decoding_enUS_speech"
FOR %%b IN ("d4_audio\enUS_speech\child\wWiseSoundBank\*.wsb") DO ("Tools\bnkextr.exe" "%%b")
FOR %%c IN (Tools\Decoding_enUS_speech\*.wsb) DO ("Tools\ww2ogg.exe" "%%c" --pcb Tools\packed_codebooks_aoTuV_603.bin & DEL "%%c")
FOR %%d IN (Tools\Decoding_enUS_speech\*.OGG) DO ("Tools\revorb.exe" "%%d" & MOVE "%%d" "OGG_enUS_speech")) > "batch_enUS_speech.log" 2>&1

@echo off

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

echo Unpack finished! Files should be in the 'OGG_enUS_speech' folder

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
