$YADM = "$env:USERPROFILE\bin\yadm"
$YADM_BAT = "$YADM.bat"

# install yadm
New-Item -ItemType Directory (Split-Path -Parent $YADM) | Out-Null
Invoke-WebRequest "https://github.com/TheLocehiliosan/yadm/raw/master/yadm" -OutFile $YADM
@'
@echo off

for %%I in ("git.exe") do for %%J in ("%%~$PATH:I") do set GitFolder=%%~dpJ..\
set ShellExe=%GitFolder%bin\sh.exe

"%ShellExe%" %~dp0yadm %*
'@ | Out-File -Encoding ascii $YADM_BAT

# clone dotfiles
& $YADM_BAT clone "https://github.com/jiriskacel/dotfiles" -b "yadm/windows" --no-bootstrap
& $YADM_BAT checkout --ours HEAD -- $HOME
& $YADM_BAT bootstrap
