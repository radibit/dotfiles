#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Setting global mac configs"
echo "#############################"
echo ""

echo "show hidden files by default"
defaults write com.apple.Finder AppleShowAllFiles -bool true

echo "Enable automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

echo "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15

echo "Set a default location for screenshots"
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots

echo "Remove delay when taking a screenshot"
defaults write com.apple.screencapture show-thumbnail -bool false

echo "Hide 'recent applications' from dock"
defaults write com.apple.dock show-recents -bool false