@echo off

type nul > file1.tsx

for /f "delims=" %%f IN ('dir /b /s ".\Test Scripts\*.tsx"') do (
	echo %%~sdpnxf

	type "%%f" >> file1.tsx
	type nul >> file1.tsx

)

pause
