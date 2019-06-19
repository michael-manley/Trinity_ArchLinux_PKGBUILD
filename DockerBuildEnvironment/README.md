# Trinity Build Environment Docker Image

## How to build
All you need to do is run 
```
docker build
```

in this directory and it will create an image for building Trinity with.

## Using the docker image
Here is an example way to run docker for building trinity
```
docker run -it --rm -v `pwd`:/tmp/src <finalimageid>
```

Once running just run
```
su - dev
```
To enter a non-root user

This will mount your source directory in /tmp/src where you can run ./build.
