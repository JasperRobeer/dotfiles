# Dotfiles

A backup of my dotfiles and various configurations of my Arch Linux device.

## Repository

My collection of dotfiles is stored in a bare Git reposity in my home directory.
The `dotfiles` git alias is created to manage the dotfiles.
Basic setup:

```shell
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

The clone the directory onto a new machine:

```shell
git clone --bare https://github.com/JasperRobeer/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

Checking out the repository might give errors about already existing dotfiles
in your home directory.
Remove these files, or back them up, before proceeding with `dotfiles checkout`.

The bare repository setup is based on a blogpost at
[atlassian.com](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

## Terminal

I run rxvt-unicode with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
and a customized prompt.

<p align="center">
  <img src="terminal.png">
</p>

## Package Tracking

I keep track of the packages that I have installed on my system using
`pacman -Qqettn` (native) and `pacman -Qqettm` (foreign) in the
[Packages/](./Packages/) directory.
The `update.sh` script automatically updates the package lists.
