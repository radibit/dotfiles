#!/usr/bin/env sh

echo ""
echo "####################################"
echo "# Running global node and npm setup"
echo "####################################"
echo ""

echo $'installing node via n'
curl -L https://git.io/n-install | bash
echo $'installed n\n'

# loading n
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

echo $'updating npm\n'
npm i -g npm@latest

echo -e "\n\nGlobal installed npm modules"
echo "==================================="


echo "Installing pure-prompt"
npm i -g pure-prompt
echo "Installing wifi"
npm i -g manage-wifi-cli
echo "Installing wifi-password-cli"
npm i -g wifi-password-cli
echo "Installing imagemin-cli"
npm i -g imagemin-cli
echo "Installing svgo"
npm i -g svgo
echo "Installing alfred-npms"
npm i -g alfred-npms
echo "Installing Alfred fkill"
npm i -g alfred-fkill
