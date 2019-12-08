
#!/usr/bin/env sh

echo ""
echo "#############################"
echo "# Installing various programs from brew from brew.sh"
echo "#############################"
echo ""

echo "Installing Node.js"
brew install node

echo "Installing bat"
# a better `cat`
brew install bat

echo "Installing exa"
# modern replacement for 'ls'
brew install exa

echo "Installing GNU Privacy Guard"
# sign GitHub commit
brew install gnupg

echo "Installing Yarn"
# dependency management
brew install yarn
