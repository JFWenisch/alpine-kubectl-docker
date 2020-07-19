# alpine-kubectl-docker
Alpine based container using latest version of kubectl. Manual build is recommended.
  

## Installation
### Build docker image manually

  

```

git pull https://github.com/JFWenisch/alpine-kubectl-docker.git

docker build -t jfwenisch/alpine-kubectl .

```


### Pull docker image from dockerhub

  

```

docker pull jfwenisch/alpine-kubectl

```

## Usage

```

docker run jfwenisch/alpine-kubectl --help

```

