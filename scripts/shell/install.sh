packages=$(cat packages | tr '\n' ' ')

sudo pacman -Syu
sudo pacman -S $packages

