# VS-Code Server
An Easy to Deploy VS-Code Server docker container.

### Credit
Please check out the original developer of the VS-Code Server that this docker image is based on [here](https://github.com/cdr/code-server)

### Setup
Please insure you change the default password of password in the `config.yaml` file before building the image as you will not be able to change it after without having to rebuild the image

## Build and Run
### Build
```
    docker build -t codeserver .
```

### Run
```
    docker run -d -p 8080:8080 codeserver
```