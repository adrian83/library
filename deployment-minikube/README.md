## Running in Minikube

#### Install Minikube: https://minikube.sigs.k8s.io/docs/start/

#### Install Kubectl: https://kubernetes.io/docs/tasks/tools/

#### Install Helm: https://helm.sh/

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
helm install mongodb bitnami/mongodb
```

#### Build Docker images:
```
docker build -t library-backend ../library-be
docker build -t library-frontend ../library-fe
```

#### Load Docker images to Minicube:
```
minikube image load library-backend
minikube image load library-frontend

minikube image ls --format table
```

#### Deployment:
```
kubectl apply -f mongodb-service.yaml
kubectl apply -f be-deployment.yaml
kubectl apply -f be-service.yaml
kubectl apply -f fe-deployment.yaml
kubectl apply -f fe-service.yaml

kubectl get events --sort-by='.lastTimestamp'
```




