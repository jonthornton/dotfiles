# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export EDITOR=vi
export VISUAL=vi

function parse_git_branch_and_add_brackets {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/'
}

export PS1="\n\[\033[36m\][\t] \[\033[36m\]\u\[\033[36m\]@\h:\[\033[35m\][\w]\[\033[36m\]\$(parse_git_branch_and_add_brackets) \n:\[\033[0m\] "

