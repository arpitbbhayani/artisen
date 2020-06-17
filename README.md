artisen
===

# Running the server

```sh
uwsgi --http :9000 --wsgi-file artisen/wsgi.py
```

# Building the image

```sh
docker build -t artisen -f Dockerfile .
```

# Running the server using Docker

The command below will run the container in an interactive mode.
```sh
docker run -it -p 9000:9000 artisen
```

To run the container in background and still allow TTY attach
```sh
docker run -it -d -p 9000:9000 artisen
```

To run the container in background with no hot TTY attach
```sh
docker run -d -p 9000:9000 artisen
```

Attaching to existing container
```sh
docker attach --sig-proxy=false container-id
```

Running a shell on the container
```sh
docker exec -it 6b90c947fe82 /bin/sh
```
