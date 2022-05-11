#!/usr/bin/env bash

# will only work on osx

# this script is used as a preinstall hook in the package.json
# and should illustrate that the lifecycle hooks are executed with the user
# permissions and in the background

USERNAME=$(whoami);
MESSAGE=$(cat <<EOF
Hello ${USERNAME}! I have now full control of your system!
EOF
)
osascript -e "display notification \"${MESSAGE}\"";