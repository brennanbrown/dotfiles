#!/bin/bash
#
# This script automates the setup and installation of various software applications,
# development tools, and utilities suitable for an academic environment on Ubuntu.
#

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install essential software
echo "Installing essential software..."
sudo apt install -y vim tmux

# Install LaTeX and related tools
echo "Installing LaTeX and related tools..."
sudo apt install -y texlive-full bibtex2html dvisvgm latexmk texlive-fonts-recommended texlive-latex-extra

# Install scientific software and tools
echo "Installing scientific software and tools..."
sudo apt install -y python3-scipy python3-numpy python3-matplotlib python3-sympy
sudo apt install -y octave
sudo apt install -y r-base

# Install reference management tools
echo "Installing reference management tools..."
sudo apt install -y zotero

# Install writing and productivity tools
echo "Installing writing and productivity tools..."
sudo apt install -y libreoffice
sudo snap install obsidian

# Install academic search tools
echo "Installing academic search tools..."
sudo apt install -y jabref

# Install version control tools
echo "Installing version control tools..."
sudo apt install -y git

# Install cloud storage and sync tools
echo "Installing cloud storage and sync tools..."
sudo apt install -y insync

# Install virtual machine and container tools
echo "Installing virtual machine and container tools..."
sudo apt install -y virtualbox
sudo apt install -y docker.io

# Install LaTeX and related tools
sudo apt install -y texlive-full bibtex2html

# Install writing and editing tools
sudo apt install -y libreoffice pandoc
sudo snap install obsidian --classic

# Install reference management tools
sudo apt install -y zotero

# Install spellchecking and grammar tools
sudo apt install -y hunspell-en-ca languagetool

# Configure LanguageTool for LibreOffice
mkdir -p ~/.config/libreoffice/4/user/linguisticdatao
wget -O ~/.config/libreoffice/4/user/linguisticdatao/languagetool.okolyx https://languagetool.org/download/LanguageTool-stable.okolyx

# Install academic fonts
echo "Installing academic fonts..."
sudo apt install -y fonts-lmodern texlive-fonts-extra

# Refresh font cache
echo "Refreshing font cache..."
fc-cache -f -v

echo "Academic setup complete!"
