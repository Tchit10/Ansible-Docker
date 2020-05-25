#!/bin/bash
ssh-keyscan -H ansible-docker_db_1 >> ~/.ssh/known_hosts

for i in 1 2 3
do
	ssh-keyscan -H ansible-docker_web_$i >> ~/.ssh/known_hosts
done
