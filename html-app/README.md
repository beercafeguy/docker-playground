#### DEPLOY HTML app in nginx using docker

* Build the image from Dockerfile <br>
`docker build -t beercafeguy/html_app:v1 .`
* Push the image to registry <br>
`docker push beercafeguy/html_app:v1`
* Run the image using docker run <br> 
`docker run -d --name html_app -p 8086:80 beercafeguy/html_app:v1`
