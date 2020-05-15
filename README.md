# multistage-build-docker

Use multi-stage builds golang http server service docker image. Image size: 13.6MB

## Build

```
docker build . -t multistage:v1.0.0
```

## Run

```
docker run -p 8000:8000 multistage:v1.0.0
```

## Test

```
curl http://localhost:8000
```