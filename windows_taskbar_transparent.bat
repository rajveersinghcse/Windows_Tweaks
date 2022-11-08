@echo off
cls
:OPTIONS
echo Enter transparency value between 0 and 255:
set /P opacity=">>
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v TaskbarAcrylicOpacity /t REG_DWORD /d %opacity% /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v ColorPrevalence /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v EnableTransparency /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
taskkill /f /im explorer.exe && start explorer.exe
echo Taskbar's Transperancy changed successfully
