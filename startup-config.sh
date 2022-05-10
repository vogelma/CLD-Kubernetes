kubectl create -f redis-svc.yaml
kubectl create -f redis-pod.yaml
kubectl create -f api-svc.yaml
kubectl create -f api-pod.yaml
kubectl create -f frontend-pod.yaml
kubectl port-forward frontend 8001:8080