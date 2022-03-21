#!/usr/bin/env bash

sudo pacman -S gcc \
    python3.10 \
    ghc \
    rust \
    sbcl \
    vim \
    xclip \
    cmake \
    bitwarden \
    stow \
    alacritty \
    qemu \
    qemu-arch-extra

yay -S discord \
    lux \
    ttf-iosevka \

git clone https://github.com/rhbhendron/dotfiles ~/.dotfiles
git clone https://github.com/emacs-mirror/emacs
git clone https://github.com/hlissner/doom-emacs ~/.doom-emacs
cd ~/.dotfiles
stow .
cd ~/emacs
./autogen.sh
./configure --with-native-compilation
make
make install
make clean
cd ~/.doom-emacs
bin/doom install
