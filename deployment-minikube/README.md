## Running in Minikube

### Install 
- Minikube: https://minikube.sigs.k8s.io/docs/start/
- Kubectl: https://kubernetes.io/docs/tasks/tools/
- Helm: https://helm.sh/

#### Start Minikube cluster:
```
minikube start --memory 4096 --cpus 2
```

#### Enable ingress addon:
```
minikube addons enable ingress
```

#### Install MongoDB in your cluster:
```
helm repo add bitnami https://charts.bitnami.com/bitnami

helm install mongodb --set auth.rootPassword=root_lib_pass,auth.username=lib_user,auth.password=lib_pass,auth.database=admin bitnami/mongodb --version 12.1.31 --set image.tag=5.0.14


```

#### Build Backend Docker image:
```
docker build -t library-backend ../library-be
```

#### Load Backend Docker image to Minicube:
```
minikube image load library-backend
```

#### Deploy Backend Deployment and Service:
```
kubectl apply -f be-deployment.yaml
kubectl apply -f be-service.yaml
```

#### Expose Backend Service:
```
minikube service library-be-service
```

#### Build Frontend Docker image (use Backend Service IP address):
```
docker build --build-arg="BE_HOST=http://<backend-service-ip>:7070" -t library-frontend ../library-fe 
```

#### Load Frontend Docker image to Minicube:
```
minikube image load library-frontend
```

#### Deploy Frontend Deployment and Service:
```
kubectl apply -f fe-deployment.yaml
kubectl apply -f fe-service.yaml
```

#### Expose Frontend Service:
```
minikube service library-fe-service
```

### Misc:


##### Remove old Docker images:
```
minikube image rm docker.io/library/library-backend
minikube image rm docker.io/library/library-frontend
```

##### List Docker images:
```
minikube image ls --format table
```

##### Load Docker images:
```
minikube image load library-backend
minikube image load library-frontend
```

##### Show Minikube events:
```
kubectl get events --sort-by='.lastTimestamp'
```

#### Uninstall MongoDB
```
helm uninstall mongodb
```

#### Remove Minikube cluster
```
minikube delete
```