#!/bin/bash
SCRIPT=$(basename $0)

if [ -f /.dockerenv ]; then
    echo "⚡ $SCRIPT"

    YADM=$(which yadm 2>/dev/null || echo "$HOME/bin/yadm")
    $YADM config local.os Docker
    $YADM alt

    echo "✔ $SCRIPT"
fi
