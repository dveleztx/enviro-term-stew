#!/bin/zsh
###############################################################################
# Script      : prezto-config.sh
# Author      : David Velez
# Date        : 11/03/2019
# Description : Prezto Zsh Framework Configuration
###############################################################################

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
