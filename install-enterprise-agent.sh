#!/bin/bash



### Workaround
#
# The install_thousandeyes.sh uses 'tput' command which expects to be run on console.
# If no TERM variable is set, this error message appears and messes up exit status, which
# is reported as deployment failure in Azure:
#   "tput: No value for $TERM and no -T specified"
#
export TERM=xterm



### Args
#
ACCOUNT_GROUP_TOKEN="$1"
ENABLE_BROWSER_BOT_ARG=`echo "$2" | tr '[:upper:]' '[:lower:]'`
if [ "$ENABLE_BROWSER_BOT_ARG" == "true" ]; then
    ENABLE_BROWSER_BOT_FLAG="-b"
else
    ENABLE_BROWSER_BOT_FLAG=""
fi



#### Just in case
#
apt-get -y update
apt-get -y upgrade



### Install
#
curl -Os https://downloads.thousandeyes.com/agent/install_thousandeyes.sh
chmod +x install_thousandeyes.sh
./install_thousandeyes.sh   -f   $ENABLE_BROWSER_BOT_FLAG   $ACCOUNT_GROUP_TOKEN > /tmp/install_thousandeyes_overall.log 2>&1
