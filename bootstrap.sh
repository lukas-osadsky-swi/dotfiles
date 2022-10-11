#!/bin/bash
YADM=$HOME/bin/yadm

# install yadm
mkdir -p $HOME/bin
wget "https://github.com/TheLocehiliosan/yadm/raw/master/yadm" -qO $YADM
chmod 755 $YADM

# clone dotfiles
$YADM clone https://github.com/jiriskacel/dotfiles -b yadm/linux --no-bootstrap
$YADM checkout --ours HEAD -- $HOME
$YADM bootstrap
