# Container Template: web

A very simple template to get started with container builds.

## Description

The example is made out of 2 simple files. The [Containerfile](./Containerfile)
and a simple [website](./src/index.html).

## Run

You can run the image with a simple command.

```sh
# with Podman
$ podman run -dt -p 8080:80 docker.io/whiletruedoio/container-template-web:latest

# with Docker
$ docker run -dt -p 8080:80 docker.io/whiletruedoio/container-template-web:latest
```

Afterwards, you can check if it is running.

```sh
$ curl localhost:8080
<!DOCTYPE html>

<h1>Container Template Web</h1>
<p>Just a simple web container, provided by
    <a href="https://while-true-do.io">while-true-do.io</a>
</p>
```
## Build

To build the image on your own, you will need the repository first.

```sh
# Clone
$ git clone https://github.com/whiletruedoio/container-template.git

# Change into directory
$ cd container-template
```

Now you can make changes to the files or just build the image on your own.

```sh
# with Podman
$ podman build -t docker.io/whiletruedoio/container-template-web:latest -f container/web/Containerfile

# with Docker
$ docker build -t docker.io/whiletruedoio/container-template-web:latest -f container/web/Containerfile
```

Afterwards, you can run it the same way as described above.
