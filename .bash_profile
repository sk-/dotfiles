export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export HISTSIZE=1000000

export PS1='[$?] \[$(tput bold)\]\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 7)\]\$ \[$(tput sgr0)\]'


if [ -f ~/.bash_aliases ]; then
    source .bash_aliases
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    source `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash 
fi

virtualenvwrapper=`which virtualenvwrapper.sh`
if [ -f $virtualenvwrapper ]; then
    export VIRTUALENVWRAPPER_PYTHON=`which python3`
    source $virtualenvwrapper
fi

if [ -f ~/.profile ]; then
    source ~/.profile
fi

