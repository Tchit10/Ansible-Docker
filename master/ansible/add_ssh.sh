#!/bin/bash
ssh-keygen

echo "Please enter the root passord for hosts :"
read -r USERPASS

ssh-keyscan -H ansible-docker_db_1 >> ~/.ssh/known_hosts
sshpass -p "$USERPASS" ssh-copy-id root@ansible-docker_db_1

for i in 1 2 3
do
	ssh-keyscan -H ansible-docker_web_$i >> ~/.ssh/known_hosts
done

for i in 1 2 3
do
	sshpass -p "$USERPASS" ssh-copy-id root@ansible-docker_web_$i
done
