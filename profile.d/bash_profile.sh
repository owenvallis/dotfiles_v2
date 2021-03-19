#!/bin/bash

# custom prompt
PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# set ag as finder for fzf
# include hidden files (--hidden) and only print filenames that match the
# pattern (-g)
export FZF_DEFAULT_COMMAND='ag --hidden -g ""'
