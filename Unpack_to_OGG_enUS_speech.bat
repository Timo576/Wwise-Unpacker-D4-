("Tools\quickbms.exe" "Tools\wavescan.bms" "d4_audio\enUS_speech\child\wWiseSoundBank" "Tools\Decoding_enUS_speech"
FOR %%b IN ("d4_audio\enUS_speech\child\wWiseSoundBank\*.wsb") DO ("Tools\bnkextr.exe" "%%b")
FOR %%c IN (Tools\Decoding_enUS_speech\*.wsb) DO ("Tools\ww2ogg.exe" "%%c" --pcb Tools\packed_codebooks_aoTuV_603.bin & DEL "%%c")
FOR %%d IN (Tools\Decoding_enUS_speech\*.OGG) DO ("Tools\revorb.exe" "%%d" & MOVE "%%d" "OGG_enUS_speech")) 2>> "Conversion_verification\batch_enUS_speech.log"

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
echo credit -/u/Vextil
pause
exit

pause
