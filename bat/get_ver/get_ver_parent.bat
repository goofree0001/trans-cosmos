rem @echo off

set "LIST_FILE=ip_list.txt"

for /f "tokens=*" %%i in (%LIST_FILE%) do (
    cmd /c "%%i\temp\get_ver_cliant.bat"
    type %%i\temp\ver.txt >> %USERPROFILE%\Desktop\ver.csv
)

pause
