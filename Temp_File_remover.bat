@echo off 

echo is clearing system junk files, please wait... 
 
del /f /s /q %systemdrive%\*.tmp 

del /f /s /q %systemdrive%\*._mp 

del /f /s /q %systemdrive%\*.log 

del /f /s /q %systemdrive%\*.gid 

del /f /s /q %systemdrive%\*.chk  

del /f /s /q %systemdrive%\*.old 

del /f /s /q %systemdrive%\recycled\*.* 

del /f /s /q %windir%\*.bak 

del /f /s /q %windir%\prefetch\*.* rd /s /q %windir%\temp & md %windir%\temp 

echo clear system garbage is complete! 
