#!/usr/bin/env bash

sudo apt-get update && \
  sudo apt install \
  compton \
  curl \
  exuberant-ctags \
  fonts-firacode \
  fonts-font-awesome \
  fonts-noto-color-emoji \
  fonts-powerline \
  git \
  git-flow \
  golang-go \
  i3 \
  i3lock-fancy \
  j4-dmenu-desktop \
  libplayerctl2 \
  nitrogen \
  pavucontrol \
  pavucontrol-qt \
  powerline \
  silversearcher-ag \
  terminator \
  tmux \
  tmuxp \
  tree \
  unclutter \
  wget \
  xautolock \
  xbacklight \
  xclip \
  zsh

if [ ! hash playerctl 2>/dev/null ]; then
  cd /tmp
  wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/playerctl_2.0.2-1_amd64.deb
  sudo dpkg -i playerctl_2.0.2-1_amd64.deb
  cd -
fi

if [ ! hash nvm 2>/dev/null ]; then
  cd /tmp
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
  cd -
fi

ZSH=${ZSH:-$HOME/.oh-my-zsh}
if [ ! -d "$ZSH" ]; then
  cd /tmp
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  cd -
fi

ZSH_CUSTOM=${ZSH_CUSTOM:-$ZSH/custom}

if [ ! -d "$ZSH_CUSTOM/plugins/k" ]; then
  mkdir -p $ZSH_CUSTOM/plugins
  git clone git@github.com:supercrabtree/k.git $ZSH_CUSTOM/plugins/k > /dev/null
else
  git --git-dir=$ZSH_CUSTOM/plugins/k/.git --work-tree=$ZSH_CUSTOM/plugins/k pull > /dev/null
fi

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  mkdir -p $HOME/.tmux/plugins
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm > /dev/null
else
  git --git-dir=$HOME/.tmux/plugins/tpm/.git --work-tree=$HOME/.tmux/plugins/tpm pull > /dev/null
fi

if ! hash nvim 2>/dev/null ; then
  echo 'aaa'
  curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage > $HOME/opt/nvim
  chmod +x $HOME/opt/nvim
fi
