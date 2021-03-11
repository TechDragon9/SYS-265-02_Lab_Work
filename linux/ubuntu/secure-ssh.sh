# Secure-SSH
# Author: Aaron
# Status: In progress

#!/bin/bash

echo Starting $0 please wait a moment.

# Check if passed in variable/argument works 
if [[ $1 == "" ]]; then
  echo "you haven't entered a name for the user! Please try again."
  exit -2
fi

# add a new user to system
sudo adduser $1

# add Public key (copied form repo)
sudo mkdir /home/$1/.ssh
sudo cp SYS-265-02_Lab_Work/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh

# Ending script
echo Ending $0.
