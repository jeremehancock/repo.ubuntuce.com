<h1><img src="https://raw.githubusercontent.com/mhancoc7/repo.ubuntuce.com/main/logo.png" height="50" /> UbuntuCE Repo</h1>

This is the repo for [UbuntuCE](https://ubuntuce.com/).

It contains all of the UbuntuCE specific pagkages.

Including:
- [UbuntuCE Welcome](https://github.com/mhancoc7/ubuntu-ce-welcome#readme)
- [UbuntuCE Wallpapers](https://github.com/mhancoc7/ubuntu-ce-wallpapers#readme)
- [Host Minder](https://github.com/mhancoc7/hostminder#readme)
- [WorshipExtreme Presenter](https://github.com/mhancoc7/worship-extreme-presenter#readme)

If you are already running Ubuntu you can use the instructions below to add the UbuntuCE repo and the UbuntuCE packages.

## Usage

#### Add UbuntuCE Repo Key
`curl -s --compressed "https://repo.ubuntuce.com/KEY.gpg" | sudo apt-key add -`

#### Add UbuntuCE Repo
`sudo curl -s --compressed -o /etc/apt/sources.list.d/ubuntuce.list "https://repo.ubuntuce.com/ubuntuce.list"`

#### Update Packages
`sudo apt update`

#### Install UbuntuCE Packages
`sudo apt install hostminder ubuntu-ce-wallpapers ubuntu-ce-welcome worship-extreme-presenter`

##### UbuntuCE is packaged with additional packages outside of the UbuntuCE Repo.

## Add Additional Packages included in UbuntuCE

#### Enable Universe/Multiverse Repos
`sudo add-apt-repository universe`
`sudo add-apt-repository multiverse`

#### Add CrossWire PPA
`sudo add-apt-repository ppa:pkgcrosswire/ppa`

#### Update Packages
`sudo apt update`

#### Install Xiphos, BibleTime, Bibledit, Bibledit-Desktop, Sword WEB, Sword KJC, OpenLP
`sudo apt install xiphos bibletime sword-text-web sword-text-kjv bibledit bibledit-desktop python3-distutils openlp`

#### Setup CleanBrowsing
`sudo apt install resolvconf`
`sudo systemctl enable --now resolvconf.service`
`sudo echo "nameserver 185.228.168.168" >> /etc/resolvconf/resolv.conf.d/head`
`sudo echo "nameserver 185.228.169.168" >> /etc/resolvconf/resolv.conf.d/head`
`sudo resolvconf -u`

Note: Setting up CleanBrowsing will be making changes to your system's network settings. The above commands work on a default Ubuntu installation. 

