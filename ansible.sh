#!/bin/bash
IMAGE=ansible

docker build -t $IMAGE . && \
docker run --rm -it \
    --name ansible \
    -v $(pwd):/ansible \
    -v /home/e/.ssh:/root/.ssh \
    -e ANSIBLE_HOST_KEY_CHECKING='False' \
    -e ANSIBLE_REMOTE_USER='ansible' \
    $IMAGE ansible-playbook --forks 1 -i hosts site.yml
