#!/bin/bash

# Add repos.
echo ""
echo "------------"
echo "Adding repos..."
echo "------------"
echo ""
sudo add-apt-repository -y ppa:christian-boxdoerfer/fsearch-daily
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
# Apt update and upgrade.
echo ""
echo "------------"
echo "Updating repos..."
echo "------------"
echo ""
sudo apt update
echo ""
echo "------------"
echo "Upgrading packages..."
echo "------------"
echo ""
sudo apt-get -y upgrade
# Install apt packages.
echo ""
echo "------------"
echo "Installing apt packages..."
echo "------------"
echo ""
sudo apt-get -y install default-jre  # Java.
sudo apt-get -y install fsearch
sudo apt-get -y install libreoffice
sudo apt-get -y install speedcrunch
sudo apt-get -y install gimp
sudo apt-get -y install okular
sudo apt-get -y install snap
sudo apt-get -y install dpkg
sudo apt-get -y install wget
# Install snap packages.
echo ""
echo "------------"
echo "Installing snap packages..."
echo "------------"
echo ""
sudo snap install foobar2000
sudo snap install vlc
sudo snap install spotify
# Install packages that need download.
echo ""
echo "------------"
echo "Downloading and installing .deb packages..."
echo "------------"
echo ""
cd /tmp/
# GeoGebra.
wget -O geogebraLatest.deb http://www.geogebra.org/download/deb.php?arch=amd64
sudo dpkg -i geogebraLatest.deb
sudo apt-get -f install
# Notify about things not installed.
echo ""
echo ""
echo ""
echo ""
echo ""
echo "------------"
echo "Maple has to be installed manually..."
echo "Go to: https://www.maplesoft.com/download/"
echo "Maple Gym package also has to be installed manually..."
echo "ordbogen.com has to be installed manually..."
echo "Go to: https://www2.ordbogen.com/downloads/"
echo "Danish language pack for LibreOffice has to be installed manually..."
echo "Go to: https://extensions.libreoffice.org/extensions/stavekontrolden-danish-dictionary"
echo "------------"
