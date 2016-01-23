# Terraria Dedicated Server in a Docker Container
To pull the image:
```
docker pull audiohacked/terraria
```

It's highly recommended run a data container:
```
docker run --name terraria_data audiohacked/terraria true
```

Then, run the server container:
```
docker run -dit --name terraria \
    --volumes-from terraria_data \
    -p 7777:7777 \
    audiohacked/terraria
```

Or, just run the server container without the separate data container:
```
docker pull audiohacked/terraria
docker run -dit --name terraria \
    -p 7777:7777 \
    audiohacked/terraria
```
