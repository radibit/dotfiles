
#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing various programs from brew from brew.sh"
echo "#############################"
echo ""

echo "Installing Homebrew"
brew -v >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing git"
brew install git

echo "Installing bat"
# a better `cat`
brew install bat

echo "Installing exa"
# modern replacement for 'ls'
brew install exa

echo "Installing pure"
# Pretty, minimal and fast ZSH prompt
brew install pure

echo "Installing php"
brew install php
