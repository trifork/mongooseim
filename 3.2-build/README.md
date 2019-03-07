# mongooseim 3.2

As of Mar 7th 2019, this is the latest stable version of MongooseIM. The changes with respect to the version from the docker image [mongooseim/mongooseim:3.2.0](https://hub.docker.com/r/mongooseim/mongooseim) are:

- Untar the mongooseim.tar.gz so that we can access all the mongooseim files if we later want to build on top of this image.
- Change the `/start.sh` script so we remove the untar step.
