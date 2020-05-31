# This configuration guide contains

1. zsh script that will automatically configure barebones for it to become usable(later project)
2. Important chrome extensions list
3. VSCode extensions list

## setting up MAC GTK theme

     sudo apt install git\
     sudo add-apt-repository universe\
     sudo apt-get update\
     sudo apt install gnome-tweak-tool\
     sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf

Head to [Mojave-gtk-theme](https://github.com/vinceliuice/Mojave-gtk-theme) and download the zip file. unzip and run ```./install.sh```
For icons [McMojave-circle](https://github.com/vinceliuice/McMojave-circle) : same as above

[To enable Shell in Gnome tweak tool](http://ubuntuhandbook.org/index.php/2017/05/enable-shell-theme-in-gnome-tweak-tool-in-ubuntu/)
Remove Ubuntu default dock and install plank

     sudo apt remove gnome-shell-extension-ubuntu-dock\
     sudo add-apt-repository ppa:ricotz/docky\
     sudo apt-get update\
     sudo apt-get install plank
Add plank on startup apps in tweaks app

## install zsh and oh-my-zsh
     
     sudo apt-get install zsh\
     sudo apt install curl\
     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
     
making it default

    chsh -s /bin/zsh
Make agnoster the default theme of zsh by modifying .zshrc file. Powerline fonts are required

      sudo apt-get install fonts-powerline
      
![because there is arya](https://cloud.githubusercontent.com/assets/2618447/6316862/70f58fb6-ba03-11e4-82c9-c083bf9a6574.png)
 
 
    



     
     

    
