#!/bin/bash

#
# Copyright 2019-Present A-Team Digital Solutions
#
# A-Team Moto-Common Telegram Notification Bot Addon
#
# Bot Version: 0.04"
# Bot Update Date: 12-28-2023"
#


# Telegram Bot Variables - **User Adaptable**
export CHANNEL_ID=''
export BOT_TOKEN=''


# Device Specific Thread Topic Variables - **User Adaptable**
export OSAKA_THREAD_ID='5744'


# if the first argument is "-h" for help.
# display the usage information
if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` \"text message\""
  exit 0
fi

# Warn if the first argument is empty.
if [ -z "$1" ]; then
    echo "Add message text as the second argument"
    exit 0
fi

# Warn if more than one argument is passed to the script.
if [ "$#" -ne 1 ]; then
    echo "You can pass only one argument. For string with spaces, put it on quotes"
    exit 0
fi

# send a POST request to Telegram's API
# The '-s' = "silent" mode
# redirect outputs to /dev/null
curl -s --data "text=$1" --data "chat_id=$CHANNEL_ID" --data "message_thread_id=$OSAKA_THREAD_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' > /dev/null. follow instructions to create bot and get token to access the HTTP API.
