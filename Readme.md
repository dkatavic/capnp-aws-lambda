# capnp-aws-lambda

This Docker image installs Cap'n Proto dependecies for NodeJS AWS lambda. It installs Cap'n Proto, copies C libraries into ./lib folder and installs dependecies for amazon linux ami. In AWS Lambda, `LD_LIBRARY_PATH` env variable includes `/var/task/lib` path, so libraries will be automatically linked. This image is using latest AWS Lambda NodeJS (6.10.2) and Capnp (0.6.1)

### Install capnp dependecies

To install the dependecies, mount root directory and run the image

```
docker run -it -v $PWD:/var/task/ dkatavic/capnp-aws-lambda
```

### Extending the image

This is using latest AWS Lambda NodeJS (6.10.2) and Capnp (0.6.1), but if you want to change the version, just provide `NODE_VERSION` and `CAPNP_VERSION` Docker build argument