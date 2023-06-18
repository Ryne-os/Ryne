@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

for /d %%x in ("!ProgramData!\Microsoft\Windows\SystemData\*") do (
	for /d %%y in ("%%x\ReadOnly\LockScreen_*") do (
		rd /s /q "%%y" 
	)
)

:WALLRUN

rmdir /q /s "!appdata!\Microsoft\Windows\Themes"
rundll32.exe user32.dll, UpdatePerUserSystemParameters