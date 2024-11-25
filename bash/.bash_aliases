# bash aliases by jltk
# alias functions can be found in the .bashrc file
# https://github.com/dotfiles/bash

# moving
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'

# showing
alias ll='ls -alh'
alias la='ls -A'
alias ls='ls --color=always'

# cleaning
alias cls='clear'
alias re='reset'

# searching
alias searchp='xbps-query -Rs'

# downloading
alias ytdlmp3='youtube-dl --ignore-config -x -o "~/music/%(title)s.%(ext)s" --audio-format mp3'
alias ytdl360p='youtube-dl --format 134+140'
alias ytdl480p='youtube-dl --format 135+140'

# recording
alias scrif='recordmydesktop --fps 24 --no-sound -o scrideo'

# watching
alias yt360p='mpv --ytdl-format=134+140'
alias yt480p='mpv --ytdl-format=135+140'
alias yt720p='mpv --ytdl-format=22'

# shortcuts to run own scripts that are in constant development
alias pyt='cd ~/scripts/ytscraper; python2 ytscraper.py;'
alias notes='cd ~/scripts/notes; python notes.py;'

# translating
alias trans-eng='dict -d fd-eng-deu'
alias trans-deu='dict -d fd-deu-eng'
alias trans-fra='dict -d fd-fra-deu'
alias trans='dict -d all'

# fun
alias gay='toilet -f mono12 --gay'
alias alittlegay='toilet -f future --gay'
alias metal='toilet -f mono9 --metal'

# webdev
alias httppy='python -m http.server'

# connecting
alias gitdocspull='git pull ssh://git@ssh.rp.de/home/rp/docs.git'
