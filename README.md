# Test Semantic Release

This is a test project to automate the release process locally or in CI


## Install

```shell
docker run --platform linux/amd64  --rm   -v "$PWD":/data --entrypoint /bin/bash  -it -v $SSH_AUTH_SOCK:${SSH_AUTH_SOCK} -e SSH_AUTH_SOCK=${SSH_AUTH_SOCK} node:slim
apt-get update && apt-get install -y git
npm install @semantic-release/exec -D
npm install @semantic-release/changelog -D
npm install @semantic-release/git -D
npm install @semantic-release/github -D
```

## Local test

run inside docker:
```
cd data
do some commits (feat|fix|chore...)
npx semantic-release -b main --no-ci
```

## Customize

You could customize the .releaserc or publish.sh script to whatever you want.
