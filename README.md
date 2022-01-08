<!--
reference: https://www.makeareadme.com/
reference: https://commonmark.org/
-->

[![Cirrus CI - Base Branch Build Status](https://img.shields.io/cirrus/github/whiletruedoio/container-template?logo=Cirrus-ci)](https://cirrus-ci.com/github/whiletruedoio/container-template)
[![Docker Image Version](https://img.shields.io/docker/v/whiletruedoio/template?logo=Docker&label=Release&sort=semver)](https://hub.docker.com/r/whiletruedoio/template)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/whiletruedoio/container-template?logo=GitHub&label=Release&sort=semver)](https://github.com/whiletruedoio/container-template/releases)
[![GitHub issues](https://img.shields.io/github/issues/whiletruedoio/container-template)](https://github.com/whiletruedoio/container-template/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/whiletruedoio/container-template)](https://github.com/whiletruedoio/container-template/pulls)
[![GitHub license](https://img.shields.io/github/license/whiletruedoio/container-template)](https://github.com/whiletruedoio/container-template/blob/main/LICENSE)

# Container Template

Template and example for new container repositories.

## Motivation

Starting with containers can be intense and working towards best-practices is
often taking a lot of time. This learning can be a lot easier, if a project is
providing some pracices on its own and guiding new developers.

## Description

The code in this repository is not intended to be used directly. Instead, it
is providing some common scenarios and examples that may be handy, if one wants
to develop containers.

### Container

The container template can be used with [Docker](https://docker.com),
[Podman](https://podman.io) or similar container engines and container
orchestration. You will also find the container images in our
[Docker Hub organization](https://hub.docker.com/u/whiletruedoio/template).

#### Run

You can run the image with a simple command.

```sh
# with Podman
$ podman container run -dt -p 8080:80 docker.io/whiletruedoio/template:latest

# with Docker
$ docker container run -dt -p 8080:80 docker.io/whiletruedoio/template:latest
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

#### Build

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
$ podman image build \
    -t docker.io/whiletruedoio/template:latest \
    -f container/Containerfile \
    container/

# with Docker
$ docker image build \
    -t docker.io/whiletruedoio/template:latest \
    -f container/Containerfile \
    container/
```

Afterwards, you can run it the same way as described in the above section.

### Kubernetes

The [Kubernetes](https://kubernetes.io) example demonstrates the usage of
Kubernetes deployments and scenarios. All of them can be used on a
[k3s](https://k3s.io) cluster without any further tuning.

TODO: kubernetes deployment and documentation

## Contribute

Thank you so much for considering to contribute! We are happy, when someone is
joining the hard work.

### Issues

Issues and Pull Requests are handled on a regular basis. Please be aware, that
we may reach out to you, ask you to provide additional resources or want to
discuss the issue a little, before planning it.

- [Bugs and Feature Requests](https://github.com/whiletruedoio/container-template/issues)
- [Pull Requests](https://github.com/whiletruedoio/container-template/pulls)

### Develop

Providing code to this repository is pretty straight forward. Open an issue,
so we can discuss the bug/feature and start working on it afterwards. You just
need to open the pull request afterwards and that's it.

It is also strongly recommended to read the
[Contribution Guideline](https://github.com/whiletruedoio/.github/blob/main/docs/CONTRIBUTING.md)
beforehand.

### Changelog

We are maintaining a [changelog](CHANGELOG.md) for repositories. Normally, the
developers will update the changelog, according to
[keepachangelog.com](https://keepachangelog.com/).

### Test

To ensure a high quality and functionality, we want to carefully test our
software. The provided code is automatically tested as described in the
[.cirrus.yml](.cirrus.yml).

## License

Except otherwise noted, all work is [licensed](LICENSE) under a
[BSD-3-Clause License](https://opensource.org/licenses/BSD-3-Clause).

## Contact

Please feel free to reach out to us and the community. We also recommend to read
and understand the
[Code of Conduct](https://github.com/whiletruedoio/.github/blob/main/docs/CODE_OF_CONDUCT.md)
beforehand.

- Site: <https://while-true-do.io>
- Blog: <https://blog.while-true-do.io>
- Code: <https://github.com/whiletruedoio>
- Chat: [libera.chat #whiletruedoio](https://web.libera.chat/gamja/#whiletruedo)
- Mail: [hello@while-true-do.io](mailto:hello@while-true-do.io)
