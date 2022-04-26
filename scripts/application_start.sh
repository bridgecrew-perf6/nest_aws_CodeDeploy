#!/bin/bash
REPOSITORY=/home/ec2-user/nest_ec2_actions

#give permission for everything in the nest_ec2_actions directory
sudo chmod -R 777 /home/ec2-user/nest_ec2_actions

#navigate into our working directory where we have all our github files
cd /home/ec2-user/nest_ec2_actions

#install node modules
npm run build
npm run start:prod
#start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null & 