# .bashrc of jltk

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# using git-prompt.sh
source /usr/share/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# if wanna use colors in PS1 gotta contain them in \[ \] brackets
PS1="\w\$(__git_ps1 ' [%s]') $ "
# show name of current folder in window title
PROMPT_COMMAND='echo -ne "\033]0;$(basename ${PWD})\007"'
# show name of opened program in window title
trap 'echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"' DEBUG

# check window sizes after command
shopt -s checkwinsize

# set fzf colors
export FZF_DEFAULT_OPTS='--color bg+:0,hl+:6 --color pointer:1,info:6'

# call aliases file
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

# call dircolors file
if [ -f $HOME/.dircolors ] ; then
    eval $(dircolors -b $HOME/.dircolors) 
fi

# function aliases
# streams
# $ twitch 480p twitchname
twitch () { mpv --ytdl-format=$1 https://twitch.tv/$2 & }

# git
# $ gitpush "commit message"
gitpush () {
    sleep 1 && echo "Adding all new and modified files."
    git add .
    sleep 1 && echo "Committing with given message."
    git commit -m "$1"
    sleep 1 && echo "Pushing to set remote origin (branch: master)."
    git push origin master
}
