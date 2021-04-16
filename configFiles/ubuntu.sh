#!/usr/bin/bash

utilities='vim neovim git wget gparted apt-transport-https net-tools htop tree curl screenfetch neofetch synaptic ufw'
fun='cowsay fortune thefuck lolcat'
emacs='emacs emacs-goodies-el'
gnome='gnome-tweaks gnome-shell-extensions'
java='default-jre openjdk-11-jdk javacc openjdk-11-jre openjdk-11-doc openjdk-8-jdk ecj libcommons-math-java libcommons-math-java-doc'
dev='libffi-dev liblzma-dev libexpat1-dev libbz2-dev libdb5.3-dev libgdbm-dev libsqlite3-dev ubuntu-make build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev'
zsh='zsh zsh-common zsh-dev zsh-doc zsh-syntax-highlighting zsh-theme-powerlevel9k'
python='ipython3 python3 python3-pip black python3-dev python3-matplotlib python3-numpy'
other='fish'
docker='docker.io docker-engine docker-compose'
webdev='apache2 nodejs npm'
chess='stockfish polyglot uci2wb xboard gnuchess'
vbox='virtualbox menu vde2 virtualbox-guest-additions-iso menu-l10n qemu-kvm qemu vde2-cryptcab'
cpp='libgtest-dev cmake gcc g++ clang-format-10'
video='vlc gimp ffmpeg'
docker='docker docker-compose docker-doc docker.io"

declare -A installList

#############################################
# Comment out lines below here you don't want

installList[utilities]=$utilities
installList[fun]=$fun
#installList[emacs]=$emacs
#installList[gnome]=$gnome
installList[java]=$java
installList[dev]=$dev
#installList[zsh]=$zsh
installList[python]=$python
installList[other]=$other
installList[webdev]=$webdev
#installList[chess]=$chess
#installList[vbox]=$vbox
installList[cpp]=$cpp
installList[docker]=$docker
#installList[video]=$video
# Comment out lines above here you don't want
#############################################


###########################
# updating/upgrading system
echo
echo ' -- updating -- '
echo
sudo apt update
sudo apt upgrade -y
echo
echo ' -- installing figlet -- '
echo
sudo apt install -y figlet
figlet 'installing extra goodies'
sudo apt install -y ubuntu-restricted-extras
sudo apt install -y software-properties-common
figlet 'updating again'
sudo apt update
sudo apt upgrade -y
# updating/upgrading system
###########################


############################################################
# installs all packages included in 'installList' dictionary
for pkgName in "${!installList[@]}"; do
    figlet $pkgName
    echo "installing the following packages:"
    pkgList=${installList[$pkgName]}
    echo $pkgList
    echo
    sudo apt install -y $pkgList
done
# installs all packages included in 'installList' dictionary
############################################################

##################
### Extra software
figlet 'installing Extras'

#sudo npm install -g @angular/cli angular/common @angular-devkit/build-angular


# Visual Studio Code
#snap install code --classic

# Discord
#snap install discord

# Flatpack icons
#sudo add-apt-repository ppa:alexlarsson/flatpak
#sudo apt update
#sudo apt install -y flatpak
#sudo apt install -y gnome-software-plugin-flatpak
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
### Extra software
##################

#############
# Cleaning up
figlet 'Cleaning up'
sudo apt -y autoclean
sudo apt -y clean
sudo apt -y autoremove
# Cleaning up
#############

#######
# To Do
figlet 'ToDo'
echo "Software & update --> enable everything"
echo "disable suspend & power saver"
# To Do
#######
