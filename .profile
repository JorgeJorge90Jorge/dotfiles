export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=~/.rbenv/bin:$PATH
export PATH=~/.pyenv/bin:$PATH
export PATH=~/bin:$PATH

function current_git_branch {
  git branch 2> /dev/null | ack '^\* (.*?)$' --output '$1' -h
}

alias g="git"
alias be="bundle exec"
alias bzk="bazooka"


[[ -f `which rbenv` ]] && eval "$(rbenv init -)"
[[ -f `which pyenv` ]] && export PYENV_ROOT=/usr/local/opt/pyenv && eval "$(pyenv init -)"

