# dotfiles
Dotfile repository. Deployment and per-host conditionals handled by [yadm](https://github.com/TheLocehiliosan/yadm).

### Bootstrap:
* bash:
```
mkdir ~/bin 2>/dev/null
curl -fLo ~/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x ~/bin/yadm
```
* pwsh:
```
mkdir ~/bin -ea 0
Invoke-WebRequest https://github.com/TheLocehiliosan/yadm/raw/master/yadm -OutFile ~/bin/yadm
Invoke-WebRequest https://github.com/jiriskacel/dotfiles/raw/yadm/windows/bin/yadm.bat -OutFile ~/bin/yadm.bat
```
