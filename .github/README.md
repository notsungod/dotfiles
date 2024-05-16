# my dotfiles

## Installation

!!! This will delete your .bashrc
```
echo ".cfg" >> .gitignore &&
git clone -q --bare https://github.com/notsungod/dotfiles $HOME/.cfg &&
rm .bashrc &&
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout &&
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showuntrackedfiles no &&
git clone https://github.com/gpakosz/.tmux.git &&
ln -s ".tmux/.tmux.conf" "$HOME/.config/tmux/tmux.conf" &&
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm &&
```
