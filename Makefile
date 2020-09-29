
start-minikube:
	minikube delete 
	minikube start --memory 8192


# docker running within minikube
docker-env:
	minikube docker-env 

# map local to  minikube docker daemon 
eval:
	eval $(minikube docker-env)

# build image for Dockerfile 
build:
	docker build -t myjenkins .

apply:
	kubectl apply -f jenkins.yaml
	# kubectl get all 

ip:
	minikube ip 
	# or setup to minikube /etc/hosts for this ip

# http://<minikube ip>:31000
# http://http://minikube:31000
