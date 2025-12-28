# image-template

This repository nas been copied from the UBLUE [bootc](https://github.com/bootc-dev/bootc) template image. 
This template is the recommended way to make customizations to any image published by the Universal Blue Project.

# How to Use

To get started on your first bootc image, simply read and follow the steps in the next few headings.
If you prefer instructions in video form, TesterTech created an excellent tutorial, embedded below.

[![Video Tutorial](https://img.youtube.com/vi/IxBl11Zmq5w/0.jpg)](https://www.youtube.com/watch?v=IxBl11Zmq5wE)

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
- irssi
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

Now working on my own look and feel and including the Brewfile.
