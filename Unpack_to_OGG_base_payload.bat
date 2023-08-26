("Tools\quickbms.exe" "Tools\wavescan_d4payload.bms" "d4_audio\base\payload\wWiseSoundBank" "Tools\Decoding_payload"
FOR %%b IN ("d4_audio\base\payload\wWiseSoundBank\*.wsb") DO ("Tools\bnkextr.exe" "%%b")
FOR %%c IN (Tools\Decoding_payload\*.WAV) DO ("Tools\ww2ogg.exe" "%%c" --pcb Tools\packed_codebooks_aoTuV_603.bin & DEL "%%c")
FOR %%d IN (Tools\Decoding_payload\*.OGG) DO ("Tools\revorb.exe" "%%d" & MOVE "%%d" "OGG_payload")) 2>> "Conversion_verification\batch_payload.log"

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

echo Unpack finished! Files should be in the 'OGG_payload' folder

echo -------------------------------------------------------------
echo credit -/u/Vextil
pause
exit

pause
