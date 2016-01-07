# Copyright 2015 Sean Nelson <audiohacked@gmail.com>
#!/bin/bash

STEAM=/steamcmd/steamcmd.sh

if [ -z "$AUTH" ]; then
    AUTH="anonymous"
fi

if [ -z "$INSTALL" ]; then
    INSTALL=/terraria
fi

APPID="105600"

# @ShutdownOnFailedCommand 1
# @NoPromptForPassword 1

$STEAM +login $AUTH \
    +force_install_dir $INSTALL \
    +app_update $APPID validate \
    +quit
