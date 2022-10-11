#!/bin/bash
SCRIPT=$(basename $0)

if which pwsh >/dev/null 2>&1; then
    echo "⚡ $SCRIPT"

    pwsh -NoProfile -c 'Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force'

    echo "✔ $SCRIPT"
fi
