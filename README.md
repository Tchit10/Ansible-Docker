# Quick start

## Build images and run containers

Build docker images and run containers in the background (details defined in [docker-compose.yml](./docker-compose.yml)):

`docker-compose up --scale web=3 -d`

Connect to **master node**:

`docker exec -it ansible-docker_master_1 bash`

Verify if network connection is working between master and managed hosts:

`ping -c 2 ansible-docker_web_1`

## Run script foo adding host's SSH fingerprint

Run a [sample script](./master/ansible/add_ssh.yml) that add host's SSH fingerprint on the master node:

`sh ./add.ssh.sh`

## Ansible playbooks

Run a [sample ansible playbook](./master/ansible/ping_all.yml) that checks connection between master node and managed hosts:

`ansible-playbook -i inventory.yml ping_all.yml`
