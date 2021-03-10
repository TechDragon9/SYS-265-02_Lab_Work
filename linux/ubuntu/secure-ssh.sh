# Secure-SSH
# Author: Aaron
# Status: In progress

#!/bin/bash/

echo Starting $0 please wait a moment.

# Check if passed in variable/argument works 
if [[ $1 == "" ]]; then
  echo "you haven't entered a name for the user! Please try again."
  exit -2
fi

# add a new user to system
adduser $1
usermod -aG sshd $1

# add Public key (either from curl or local)

