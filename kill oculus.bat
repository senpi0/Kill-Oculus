@echo off


title KIll Oculus


:OCCheck
tasklist /FI "IMAGENAME eq OVRServiceLauncher.exe"|find ":" >nul
IF ERRORLEVEL 1 (
	taskkill /IM OVRServiceLauncher.exe /T /F 
	goto OCCheck
)
IF ERRORLEVEL 0 (
	goto end
)


:end
exit