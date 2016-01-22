# Terraria Dedicated Server in a Docker Container
It's highly recommended to pull and run a data container:
```
docker pull audiohacked/terraria_datastore
docker run --name terraria_data audiohacked/terraria_datastore
```

Then, pull and run the server container:
```
docker pull audiohacked/terraria
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
