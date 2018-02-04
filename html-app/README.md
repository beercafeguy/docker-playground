#### DEPLOY HTML app in nginx using docker

* docker build -t beercafeguy/html_app:v1 .
* docker push beercafeguy/html_app:v1
* docker run -d --name html_app -p 8086:80 beercafeguy/html_app:v1
