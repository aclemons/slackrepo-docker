# Slackrepo Docker Image

# Quick reference

- **Maintained by**:

  [aclemons](https://github.com/aclemons)

# Supported tags and respective `Dockerfile` links

- [`latest`, `slack-15.0`](https://github.com/aclemons/slackrepo-docker/blob/master/Dockerfile) - latest slackware stable release
- [`slack-current`](https://github.com/aclemons/slackrepo-docker/blob/master/Dockerfile) - slackware current

# Quick reference (cont.)

- **Where to file issues**:
  [https://github.com/aclemons/slackrepo-docker/issues](https://github.com/aclemons/slackrepo-docker/issues)

- Supported architectures:
  amd64, armv7, arm64v8, i386 (varies per Slackware release)

# What is slackrepo?

slackrepo is a tool for making and managing package repositories on Slackware, by building from repositories of SlackBuilds.

It was originally built by [idlemoor](https://github.com/idlemoor/slackrepo).

> [slackrepo](https://github.com/aclemons/slackrepo)

# How to use

Running slackrepo in a docker image means you always have a clean environment. You probably want to bind mount some directories so that the the output ends up on the host. Something like this should get you started:

```sh
mkdir -p $HOME/slackrepo
docker run --rm -it --cap-add SYS_ADMIN -v $HOME/slackrepo:/var/lib/slackrepo/SBo aclemons/slackrepo /bin/bash -ls
```

Then build as your normally would with slackrepo:

```sh
slackrepo build my-package
```

If you want to build i586 or arm packages, you can pass `--platform linux/386` or `--platform linux/arm` in your docker run invocation.

# License

The Docker image creation scripts contained under the repository slackrepo-docker are licensed under the MIT license.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
