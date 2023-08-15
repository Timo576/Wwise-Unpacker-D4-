@echo off
fc d4_audio\enUS_Speech\child\wWiseSoundBank\*.wsb d4_audio\enUS_Speech\child\wWiseSoundBank(old)\*.wsb 2>> "changes.txt"
fc d4_audio\base\child\wWiseSoundBank\*.wsb d4_audio\base\child\wWiseSoundBank(old)\*.wsb 2>> "changes.txt"
fc d4_audio\base\payload\wWiseSoundBank\*.wsb d4_audio\base\payload\wWiseSoundBank(old)\*.wsb 2>> "changes.txt"

exit