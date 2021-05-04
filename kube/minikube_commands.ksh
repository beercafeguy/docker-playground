minikube start --no-vtx-check  --vm-driver virtualbox

minikube start --no-vtx-check  --driver docker --alsologtostderr -v=1
minikube status

minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

kubectl get nodes
kubectl get services
kubectl get deployment

kubectl create deployment nginx-depl --image nginx

kubectl get replicase


kubectl edit deployment nginx-depl
kubectl describe pod mongo-depl-5fd6b7d4b4-9gsql
kubectl logs mongo-depl-5fd6b7d4b4-9gsql 
kubectl exec -it mongo-depl-5fd6b7d4b4-9gsql -- bin/bash

kubectl delete deployment nginx-depl
kubectl delete deployment mongo-depl

kubectl apply -f <filename.yaml
kubectl apply -f nginx-deployment.yaml

kubectl get pod -o wide (more details of pod)

# Setup mongo

kubectl apply -f mongo-secret.yaml
minikube service mongo-express-service # to create tunnel

minikube service mongo-express-service
kubectl cluster-info

kubectl get namespaces
kubectl get ingress -n mynamespace
