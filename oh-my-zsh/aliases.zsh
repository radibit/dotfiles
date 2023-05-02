# list handling
alias ll="exa -la --git --icons"

# ip address
alias ip="echo Your ip is; dig +short myip.opendns.com @resolver1.opendns.com;"

# MAC address changer (free wifi hack)
alias freewifi="sudo ifconfig en0 ether `openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`"

# Reload zsh config
alias zshreload="source ~/.zshrc"

# create new server on given port
alias server='open http://localhost:5555 && python -m SimpleHTTPServer'

# list globally installed npm packages
alias npmlg='npm list -g --depth=0'

# cat with syntax highlighting
alias cat="bat"

# verbose file management commands
alias mv="mv -iv"
alias cp="cp -iv"
alias mkdir="mkdir -v"

# check network quality
alias fast="networkQuality"
