@ECHO OFF

::Echo
::sdp - shows full dir path
::nx - won't show dir path

::FOR /F
::Loop command: against a set of files - conditionally perform a command against each item.
::delims=xxx   The delimiter character(s) (default = a space)

::Dir
::/w	Displays the listing in wide format, with as many as five file names or directory names on each line.
::/b	Displays a bare list of directories and files, with no additional information. /b overrides /w.
::/s	Lists every occurrence of the specified file name within the specified directory and all subdirectories.

::Show all tsx files from directory with full path
for /f "delims=" %%f IN ('dir /b /s ".\Test Scripts\*.tsx"') do echo %%~sdpnxf

::Show all tsx files from directory without full path
for /f "delims=" %%f IN ('dir /b /s ".\Test Scripts\*.tsx"') do echo %%~nxf 
pause