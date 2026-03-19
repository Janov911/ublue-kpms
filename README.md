# KPMS Bazzite image template for 

This repository has been copied from the UBLUE [bootc](https://github.com/bootc-dev/bootc) template image. 
This template is the recommended way to make customizations to any image published by the Universal Blue Project.

I have customized it to suit my preferences for workstations, both on the desktop and the handhelds I use.

## Switch to Your Image
From your bootc system, run the following command substituting in your Github username and image name where noted.
```
sudo bootc switch ghcr.io/<username>/<image_name>
```

This should queue your image for the next reboot, which you can do immediately after the command finishes. You have officially set up your custom image! See the following section for an explanation of the important parts of the template for customization.

this version has been expanded to include a lot of CLI items f.e. embedded versions of:

- stow
- ansible
- asciiquarium
- autojump
- bat
- cmatrix
- dbus-devel
- eureka
- eza
- fd-find
- feh
- firejail
- git-crypt
- gnome-boxes
- gnome-tweaks
- irssi
- kitty
- konsole
- lolcat
- lsd
- lua
- neovim
- neomutt
- newsboat
- nextcloud-client
- pcre
- podman-compose
- podman-docker
- ranger
- ripgrep
- task
- taskopen
- tealdeer
- trash-cli
- unbound
- vit
- zoxide



My own look and feel will be included in the build file over time, and I will also add a brewfile with additional applications.
