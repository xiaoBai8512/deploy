#!/bin/bash
 
WEB_PATH='/home/wwwroot/Vnshop/client'
WEB_USER='root'
WEB_USERGROUP='root'
 
echo "Start deployment xiaobai"
cd $WEB_PATH
echo "pulling source code..."
# git reset --hard origin/release
# git clean -f
git pull
git checkout master
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
npm run bulid
echo "Finished."
