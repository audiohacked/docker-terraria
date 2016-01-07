# Copyright 2015 Sean Nelson <audiohacked@gmail.com>
#! /bin/bash
arch=$(uname -m)

./settings.sh
cd ./${TERRARIA_SERVER_PATH} && \
./TerrariaServer.bin.${arch} -config /terraria/serverconfig.txt
