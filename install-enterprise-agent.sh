#!/bin/bash



### Args
#
ACCOUNT_GROUP_TOKEN="$1"



#### Just in case
#
#apt-get -y update
#apt-get -y upgrade



### Install
#
curl -Os https://downloads.thousandeyes.com/agent/install_thousandeyes.sh
chmod +x install_thousandeyes.sh
echo "$ACCOUNT_GROUP_TOKEN" > /token.txt
#./install_thousandeyes.sh -f -b $ACCT_GROUP_TOKEN
