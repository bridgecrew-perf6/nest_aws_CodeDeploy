#!/bin/bash
pm2 kill
#create our working directory if it doesnt exist
DIR="/home/ec2-user/nest_ec2_actions"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

