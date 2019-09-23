#!/bin/bash

BASH_ALIASES_FILE_NAME=~/.bash_aliases

if ! grep -Fq "alias code" "$BASH_ALIASES_FILE_NAME"; then
    echo 'alias code="GTK_IM_MODULE=xim code"'  >> ~/.bash_aliases
fi