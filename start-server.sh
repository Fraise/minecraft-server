#!/bin/bash

docker run --rm --name minecraft-server -e EULA=TRUE -p 12012:25565 -v $(pwd):/data fraise/minecraft-server:latest