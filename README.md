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

