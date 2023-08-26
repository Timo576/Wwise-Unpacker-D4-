("Tools\quickbms.exe" "Tools\wavescan.bms" "d4_audio\base\child\wWiseSoundBank" "Tools\Decoding_child"
FOR %%b IN ("d4_audio\base\child\wWiseSoundBank\*.wsb") DO ("Tools\bnkextr.exe" "%%b")
FOR %%c IN (Tools\Decoding_child\*.wsb) DO ("Tools\ww2ogg.exe" "%%c" --pcb Tools\packed_codebooks_aoTuV_603.bin & DEL "%%c")
FOR %%d IN (Tools\Decoding_child\*.OGG) DO ("Tools\revorb.exe" "%%d" & MOVE "%%d" "OGG_child")) 2>> "Conversion_verification\batch_child.log"

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

echo Unpack finished! Files should be in the 'OGG_child' folder

echo -------------------------------------------------------------
echo credit -/u/Vextil
pause
exit

pause