# docker-mumble-server

Alpine Linux mumble server docker image.

GitHub action is setup so this image is __updated every week__.

_docker run_:

```sh
docker run -p 64738:64738/tcp -p 64738:64738/udp ghcr.io/speedy37/docker-mumble-server/mumble-server:latest
```

_docker-compose.yml_:

```yml
version: '2'
services:
  mumble-server:
    image: "ghcr.io/speedy37/docker-mumble-server/mumble-server:latest"
    restart: unless-stopped
    ports:
    - "64738:64738/tcp"
    - "64738:64738/udp"
    volumes:
    - "./speedy.mumble/config:/config:ro"
    - "./speedy.mumble/data:/data"
```
