![Logo](https://raw.githubusercontent.com/mhancoc7/repo.ubuntuce.com/main/logo.png)
# UbuntuCE Repo

This is the repo for [UbuntuCE](https://ubuntuce.com/).

It contains all of the UbuntuCE specific pagkages.

Including:
- [UbuntuCE Welcome](https://github.com/mhancoc7/ubuntu-ce-welcome#readme)
- [UbuntuCE Wallpapers](https://github.com/mhancoc7/ubuntu-ce-wallpapers#readme)
- [Host Minder](https://github.com/mhancoc7/hostminder#readme)
- [WorshipExtreme Presenter](https://github.com/mhancoc7/worship-extreme-presenter#readme)

If you are already running Ubuntu you can use the instructions below to add the UbuntuCE repo and the UbuntuCE packages.

## Usage

```bash
curl -s --compressed "https://repo.ubuntuce.com/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/ubuntuce.list "https://repo.ubuntuce.com/ubuntuce.list"
sudo apt update
sudo apt install hostminder ubuntu-ce-wallpapers worship-extreme-presenter
```
