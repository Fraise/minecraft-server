#!/bin/bash

if [ "$1" == "" ]; then
    echo "Please specify the port to expose."
fi

docker run -d --rm --name minecraft-server -e EULA=TRUE -p $1:25565 -v $(pwd):/data fraise/minecraft-server:1.5.2
