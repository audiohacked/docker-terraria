# Copyright 2015 Sean Nelson <audiohacked@gmail.com>
#!/bin/bash

# FPATH=/home/steam/terraria-server-linux-1308
FPATH=/terraria
WPATH=/terraria
FNAME=serverconfig.txt

if [ -e "$FPATH/$FNAME" ]; then
    mv ${FPATH}/${FNAME} ${FPATH}/serverconfig_`date +%Y%m%d_%H%M%S`.txt
    echo "Settings file found. Replacing."
    echo "maxplayers=${SERVER_PLAYERS}"              > ${FPATH}/${FNAME}
    echo "world=${WPATH}/Worlds/${WORLD_NAME}.wld"  >> ${FPATH}/${FNAME}
    echo "port=${SERVER_PORT}"                      >> ${FPATH}/${FNAME}
    if [ ! -z ${SERVER_PASSWORD} ]; then
        echo "password=${SERVER_PASSWORD}"          >> ${FPATH}/${FNAME}
    fi
    echo "motd=${MOTD}"                             >> ${FPATH}/${FNAME}
    echo "worldpath=${WPATH}/Worlds"                >> ${FPATH}/${FNAME}
    echo "autocreate=${WORLD_SIZE}"                 >> ${FPATH}/${FNAME}
    echo "difficulty=${WORLD_DIFFICULTY}"           >> ${FPATH}/${FNAME}
    echo "worldname=${WORLD_NAME}"                  >> ${FPATH}/${FNAME}
    echo "banlist=banlist.txt"                      >> ${FPATH}/${FNAME}
    echo "secure=1"                                 >> ${FPATH}/${FNAME}
else
    echo "Settings file not found. Creating."
    echo "maxplayers=${SERVER_PLAYERS}"              > ${FPATH}/${FNAME}
    echo "world=${WPATH}/Worlds/${WORLD_NAME}.wld"  >> ${FPATH}/${FNAME}
    echo "port=${SERVER_PORT}"                      >> ${FPATH}/${FNAME}
    if [ ! -z ${SERVER_PASSWORD} ]; then
        echo "password=${SERVER_PASSWORD}"          >> ${FPATH}/${FNAME}
    fi
    echo "motd=${MOTD}"                             >> ${FPATH}/${FNAME}
    echo "worldpath=${WPATH}/Worlds"                >> ${FPATH}/${FNAME}
    echo "autocreate=${WORLD_SIZE}"                 >> ${FPATH}/${FNAME}
    echo "difficulty=${WORLD_DIFFICULTY}"           >> ${FPATH}/${FNAME}
    echo "worldname=${WORLD_NAME}"                  >> ${FPATH}/${FNAME}
    echo "banlist=banlist.txt"                      >> ${FPATH}/${FNAME}
    echo "secure=1"                                 >> ${FPATH}/${FNAME}
fi
