# Docker for GlobalProtect VPN Client
## Introduction

Dockerfile to create a Docker container image for GlobalProtect VPN Client.

## Getting started

### Installation

You can build the image yourself.

```bash
cd 6.1.2/
docker build . --platform=linux/amd64 -t globalprotect-client:6.1.2
```

### Quickstart

Start GlobalProtect Client using:

```bash
docker run -it -d --rm --name globalprotect-client --cap-add NET_ADMIN globalprotect-client:6.1.2

docker exec -it globalprotect-client bash
```

Connect VPN:

```bash
./globalprotect connect --portal myportal.example.com
```
