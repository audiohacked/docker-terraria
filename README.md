# Terraria Dedicated Server in a Docker Container
Pull image:
```
docker pull audiohacked/terraria:stable
```

It's highly recommended to run a data container:
```
docker run --name terraria_data audiohacked/terraria:stable
```

Then, pull and run the server container:
```
docker run -dit --name terraria \
    --volumes-from terraria_data \
    -p 7777:7777 \
    audiohacked/terraria:stable
```

Or, just run the server container without the separate data container:
```
docker run -dit --name terraria \
    -p 7777:7777 \
    audiohacked/terraria:stable
```
