#!/bin/bash

echo "Create Packages & Packages.gz"
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

echo "Create Release, Release.gpg & InRelease"
apt-ftparchive release . > Release
gpg --default-key "support@ubuntuce.com" -abs -o - Release > Release.gpg
gpg --default-key "support@ubuntuce.com" --clearsign -o - Release > InRelease

echo "Commit & push"
git add -A
git commit -m update
git push
