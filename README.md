# test-semantic-release


install:

```shell
docker run --platform linux/amd64  --rm   -v "$PWD":/data --entrypoint /bin/bash  -it -v $SSH_AUTH_SOCK:${SSH_AUTH_SOCK} -e SSH_AUTH_SOCK=${SSH_AUTH_SOCK} node:slim
apt-get update && apt-get install -y git
npm install @semantic-release/exec -D
npm install @semantic-release/changelog -D
npm install @semantic-release/git -D
npm install @semantic-release/github -D
```

run inside docker:
```
cd data
npx semantic-release
```

