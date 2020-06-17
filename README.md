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

```sh
docker run -it -p 9000:9000 artisen
```
