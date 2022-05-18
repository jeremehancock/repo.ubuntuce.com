#!/bin/bash

echo "Start Fresh"
rm InRelease
rm Packages
rm Packages.gz
rm Release
rm Release.gpg
rm KEY.gpg

echo "Create GPG Key"
gpg --armor --export "support@ubuntuce.com" > KEY.gpg

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
