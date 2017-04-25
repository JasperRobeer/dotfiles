# dotfiles

My collection of dotfiles is stored in a bare Git reposity in my home directory.
An alias is created to manage the dotfiles: `dotfiles`.
Basic setup:

```
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```
