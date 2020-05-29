FROM williamyeh/ansible:debian9

RUN apt-get update && apt-get install -y nano python net-tools telnet curl python-pip
