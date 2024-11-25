#!/bin/bash
# get bash aliases and functions to run them from rofi
# used on rofi command keybind in hlwm config

# fetch bash aliases
alias | awk -F'[ =]' '{print $2}'
# fetch bash functions
compgen -A function
