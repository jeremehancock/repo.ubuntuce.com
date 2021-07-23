# Ubuntu CE Repo

## Usage

```bash
curl -s --compressed "https://repo.ubuntuce.com/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/ubuntuce.list "https://repo.ubuntuce.com/ubuntuce.list"
sudo apt update
sudo apt install hostminder ubuntu-ce-wallpapers
```
