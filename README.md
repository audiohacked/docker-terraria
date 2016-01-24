# Terraria Dedicated Server in a Docker Container
Pull the image:
```
docker pull audiohacked/terraria:1.3.0.8
```

It's highly recommended to run a data container:
```
docker run --name terraria_data audiohacked/terraria:1.3.0.8 true
```

Then, run the server container:
```
docker run -dit --name terraria \
    --volumes-from terraria_data \
    -p 7777:7777 \
    audiohacked/terraria:1.3.0.8
```

Or, just run the server container without the separate data container:
```
docker run -dit --name terraria \
    -p 7777:7777 \
    audiohacked/terraria:1.3.0.8
```
