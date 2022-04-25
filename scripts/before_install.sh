#!/bin/bash
REPOSITORY=/home/ec2-user

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 14

#create our working directory if it doesnt exist
DIR="/home/ec2-user/nest_ec2_actions"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
  cd $REPOSITORY
  sudo pm2 kill
  sudo rm -rf nest_ec2_actions
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

