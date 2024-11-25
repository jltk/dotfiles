#!/usr/bin/env bash
file="$HOME/.todo"
menu() {
    clear
    echo -e '\e[90m
    ██████  ██████  ████    ██████
   ▒▒▒██▒  ▒██▒▒██ ▒██▒ ██ ▒██▒▒██
     ▒██   ▒██████ ▒████▒  ▒██████
     ▒▒    ▒▒▒▒▒▒  ▒▒▒▒    ▒▒▒▒▒▒
    \e[0m'
    linenr=0
    while IFS= read -r line; do
        let linenr++
        printf "    \e[30m━┅\e[0m %s \e[90m$linenr\e[0m\n" "$line"
    done < "$file"
    echo
}
if [[ -f "$file" ]]; then
    if [[ -z $1 ]]; then
        menu
    elif [[ $1 = "add" || $1 = "--add" || $1 = "-a" || $1 = "a" ]]; then
        echo $2 >> $file
        menu
    elif [[ $1 = "delete" || $1 = "--del" || $1 = "-d" || $1 = "d" ]]; then
        sed -e $2'd' -i $file
        menu
    elif [[ $1 = "help" || $1 = "--help" || $1 == "-h" || $1 = "h" ]];then
        menu
        echo -e '\e[1m
    Stores todos in ~/.todo file. Delete by line number.
    \e[1;90m
    todo --add "todo", add, -a, a
         --del 4, delete, -d, d
         --help, help, -h, h
    \e[0m'
    fi
else
    touch "$file"
fi
exit
