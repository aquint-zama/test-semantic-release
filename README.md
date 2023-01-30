# test-semantic-release


install:

```shell
docker run --platform linux/amd64  --rm   -v "$PWD":/data --entrypoint /bin/bash  -it -v $SSH_AUTH_SOCK:${SSH_AUTH_SOCK} -e SSH_AUTH_SOCK=${SSH_AUTH_SOCK} node:slim
apt-get update && apt-get install -y git
```

run inside docker:
```
cd data
npx semantic-release
```

