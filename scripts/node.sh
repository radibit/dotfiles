#!/usr/bin/env sh

echo ""
echo "####################################"
echo "# Running global node and npm setup"
echo "####################################"
echo ""

get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
	grep '"tag_name":' |                                            # Get tag line
	sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

LATEST_NVM_TAG=$(get_latest_release "nvm-sh/nvm")

echo "Installing nvm ($LATEST_NVM_TAG)"
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_NVM_TAG/install.sh" | bash
printf "Installed nvm\n"