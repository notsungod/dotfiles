#
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
export QT_SCALE_FACTOR=2.5
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias x='sudo $(history -p !!)'
alias n=nvim
alias nt='nvim ~/Documents/vault/personal/TODO.md'
alias l='ls --color=auto -lah'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
fcd() {
    cd "$(find -type d | fzf)"
}
open() {
    o="$(find -type f | fzf)"
    cd "${o%/*}/" && n $o
}
export MANPAGER='nvim +Man!'
export EDITOR=vim
alias config='/usr/bin/git --git-dir=/home/user/.cfg/ --work-tree=/home/user'
