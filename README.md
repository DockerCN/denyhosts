# docker-denyhosts

DenyHosts running in CentOS docker container.

Running custa/docker-denyhosts:
------

##### 1. for CentOS host:

	docker run -d --restart=always --name denyhosts \
		-v /var/log/secure:/var/log/secure -v /etc/hosts.deny:/etc/hosts.deny \
		custa/docker-denyhosts

##### 2. for Ubuntu host:

	docker run -d --restart=always --name denyhosts \
		-v /var/log/auth.log:/var/log/secure -v /etc/hosts.deny:/etc/hosts.deny \
		custa/docker-denyhosts
