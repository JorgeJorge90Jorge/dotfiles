source ~/.profile

source $(brew --prefix)/etc/bash_completion
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

export PATH="$HOME/.git-radar:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

export PS1="\u@\h \w\$(git-radar --bash --fetch | sed 's/git://' | sed 's/30m/33m/g') ∫ "

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export DOCKER_HOST=tcp://localhost:2375
