This repo is the for the reference of all my work which I do on docker.

**My Articles on docker:**
* [Docker Volume management](https://github.com/beercafeguy/docker-playground/wiki/Docker-Volume-management)

**Docker common hacks**

* Get help for any tool. <br>
`docker --help` <br>
`docker run --help` <br>
`docker build --help` <br>
`docker volume --help` <br>

* Checking logs for a container. <br>
`docker logs <container name>` <br>
`docker logs fedora-host` <br>

* Detaching from a running container: <br>
**On Windows:** Ctrl + P + Q <br>
**On Unix:** exit <br>

* Attaching on a container or running a command on container
`docker exec -it <container name> bash` <to attach> <br>
`docker exec -it <container name> ls -l` <br>

* Inspect a container <br>
`docker inspect <name of container>` <br>

* On -p option of run one can specify ip address as well. <br>
`docker run -d --name redis-host -p 127.0.0.1:6379:6379 redis` <br>

* If we don't assign host port number with -p option during run, it assignes a random port number on host machine which can be checked using `docker port` command. <br>
`docker run -d --name redis-host -p 6379 redis` <br>
`docker port <container name> <port no>` <br>
`docker port redis-host 6379` <br>

* Docker containers are stateless by nature.
* Mention multiple ports or renge of ports in Dockerfile EXPOSE command.
`EXPOSE 80 433` or `EXPOSE 8080-8090 `

* If we don't want to used cached info, use `--no-cache=true` with docker build.

