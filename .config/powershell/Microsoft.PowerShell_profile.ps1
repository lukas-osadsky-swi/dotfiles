if (Test-Path env:windir) {
  $user = $env:USERNAME
  $name = $env:COMPUTERNAME
} else {
  $user = $env:USER
  $name = $env:NAME
}

Set-PSReadLineKeyHandler -Chord ctrl+w -Function BackwardKillWord

Import-Module posh-git
$GitPromptSettings.DefaultPromptPrefix.Text = `
  $(Write-Prompt $user -fore $([ConsoleColor]::DarkGray)) +
  $(Write-Prompt '@' -fore $([ConsoleColor]::Gray)) +
  $(Write-Prompt $name -fore $([ConsoleColor]::Green)) +
  $(Write-Prompt ':' -fore $([ConsoleColor]::Gray))
$GitPromptSettings.DefaultPromptPath.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::White

function dev {
  Import-Module C:\source\orion\tools\DevDevelopment.psm1 -Force -ErrorAction SilentlyContinue
  Import-Module ~\source\orion\tools\DevDevelopment.psm1 -Force -ErrorAction SilentlyContinue
}
if ($PSVersionTable.PSVersion.Major -ge 6) { dev };
