cd %~dp0
copy "FE8_clean.gba" "FE_Hack.gba"
cd %~dp0Engine Hacks\src\Makefile
make build
cd "%~dp0Event Assembler"
Core A FE8 "-output:%~dp0FE_Hack.gba" "-input:%~dp0Buildfile.event" "-symOutput:%~dp0Symbols.txt"
pause