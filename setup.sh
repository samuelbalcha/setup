#!/bin/bash
# Simple setup.sh for configuring Ubuntu 14.04 LTS EC2 instance.
# Update, install (Curl, Node, NPM, Express, Git, NVM, Jshint, Repl, Emacs, Herokutoolbelt, MySql & Dotfiles.

#Update
sudo apt-get update

#Curl
sudo apt-get install -y curl

#Node
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs

#NPM npm:node-package manager
sudo apt-get install npm

#Express
npm install -g express

#link express
npm link express

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-get -qq update
sudo apt-get install -y emacs24-nox emacs24-el emacs24-common-non-dfsg

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#MySQL
sudo apt-get install mysql-server


# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi
git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sf dotfiles/.emacs.d .
