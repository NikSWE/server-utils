#!/bin/sh

if ! command -v zsh 1>/dev/null 2>&1
then
    echo "Error: zsh is not installed"
    exit 1
fi
