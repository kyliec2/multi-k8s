sudo -i
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
kubectl get pods -A
kubectl get nodes
nano pod.yml
kubectl apply -f pod.yml
kubectl create namespace test
kubectl apply -f pod.yml
kubectl get pod
kubectl get pod -n test
kubectl get event -n test
kubectl get node -o wide
kubectl run app --image=mylandmarktech/java-web-app --port=8080
kubectl get all
kubectl get pod
kubectl run webapp --image=mylandmarktech/hello --port=80
kubectl get pod
kubectl get pod -o yaml
kubectl describe pod app
kubectl get pod -n test
kubectl get pod -n default
kubectl apply -f pod.yml --dry-run=client
nano pod.yml
kubectl apply -f pod.yml --dry-run=client
nano pod.yml
kubectl apply -f pod.yml --dry-run=client
cp pod.yml app.yml
nano app.yml
kubectl apply -f app.yml --dry-run=client
kubectl apply -f app.yml
kubectl get pod -n test
kubectl get pod 
kubectl get pod -n default
kubectl get pods --show-labels
cat .kube/config
clear
kubectl config set-context --current --namespace=test
kubectl get pod 
kubectl get pod -n test
kubectl config set-context --current --namespace=default
kubectl config set-context --current --namespace=test
nano app.yml
clear
nano webapp.yml
kubectl apply -f webapp.yml
alias k=kubectl
k get all
kubectl describe pod webapp
kubectl create secret docker-registry dockerhubcred --docker-server=docker.io --docker-username=mylandmarktech --docker-password=Mercy000014
kubectl create secret docker-registry dhcred --docker-server=docker.io --docker-username=mylandmarktech --docker-password=Mercy000014
k get secret
nano webapp.yml
kubectl apply -f webapp.yml
k get all
kubectl describe pod webapp
k delete pod webapp
kubectl apply -f webapp.yml
k get all
k get po
k delete pod webapp
clear
sudo adduser eksadmin
sudo echo "eksadmin  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/eksadmin
sudo su - eksadmin
ls
alias k=kubectl
alias ks=kubectl-system
k get deployments
k -n ks logs server-deployment
k -n kube-system logs server-deployment
ls k8s
k -n test logs server-deployment
cat /k8s/server-deployment.yaml
kubectl get namespaces
kubectl config set-context --current --namespace=default
nano helm.sh
sh helm.sh 
helm
ls
helm create myapp
ls
ls myapp/
tree myapp
sudo apt install tree
ls
ls myapp/
tree myapp/
cd myapp/
ls
cat Chart.yaml 
cat values.yaml 
cd charts/
ls
cd ..
ls
cd templates/
ls
cat deployment.yaml 
ls
cat hpa.yaml 
cat ingress.yaml 
ls
cat service.yaml 
cat serviceaccount.yaml 
cd tests/
ls
cat test-connection.yaml 
cd
ls
cd myapp/
ls
cd templates/
ls
helm show values myapp
cd ..
helm show values myapp
ls
helm template values myapp
cd myapp/
ls
nano values.yaml 
nano templates/deployment.yaml 
nano values.yaml 
helm ls
helm repo ls
helm install app myapp
helm install myapp
helm install app
helm install app myapp/
helm install webapp myapp/
nano values.yaml 
ls
cd templates/
ls
nano deployment.yaml 
nano values.yaml 
cd ..
nano values.yaml 
cd ..
helm install myapp
helm show valus myapp
helm show values myapp
cd myapp/
nano values.yaml 
helm install javaweb myapp/
nano values.yaml 
k describe pod
nano values.yaml 
helm install app myapp/
helm install japp myapp/
ls
cd
ls
helm ls
helm
cat helm.sh 
nano templates/deployment.yaml 
cd myapp/
nano templates/deployment.yaml 
helm repo ls
nano values.yaml 
cd ..
helm install app myapp
helm ls 
k get all
kubectl get --namespace default svc -w app-myapp
ls
cd simpleweb/
ls
cd ..
cd k8s/
ls
nano worker-deployment.yaml 
nano server-deployment.yaml 
kubectl create secret generic pgpassword --from-literal PGPASSWORD=12345asdf
kubectl get secrets
nano postgres-deployment.yaml 
nano server-deployment.yaml 
nano postgres-deployment.yaml 
alias k=kubectl
k apply -f k8s
cd ..
k apply -f k8s
cd k8s/
nano server-deployment.yaml 
nano worker-deployment.yaml 
cd ..
k apply -f k8s
cd k8s/
nano k8s
nano postgres-deployment.yaml 
nano server-deployment.yaml 
nano postgres-deployment.yaml 
cd ..
k apply -f k8s
helm
cd k8s/
helm upgrade --install ingress-nginx ingress-nginx \ --repo https://kubernetes.github.io/ingress-nginx \ --namespace ingress-nginx --create-namespace
helm upgrade --install ingress-nginx ingress-nginx   --repo https://kubernetes.github.io/ingress-nginx   --namespace ingress-nginx --create-namespace
k get service
k delete svc nginx-nginx-ingress
helm upgrade --install ingress-nginx ingress-nginx   --repo https://kubernetes.github.io/ingress-nginx   --namespace ingress-nginx --create-namespace
k get service
k get po
k delete pod nginx-nginx-ingress-dd8b6dd6-xjk2j
helm upgrade --install ingress-nginx ingress-nginx   --repo https://kubernetes.github.io/ingress-nginx   --namespace ingress-nginx --create-namespace
helm upgrade --install ingress-nginx ingress-nginx   --repo https://kubernetes.github.io/ingress-nginx   --namespace ingress-nginx --create-namespace ingress-nginx
kubectl get pods --namespace=ingress-nginx
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.2.0/deploy/static/provider/cloud/deploy.yaml
k get pod
ls
cd k8s/
ls
cd ..
k get pod
kubectl get pod
cd k8s/
kubectl get pods --namespace=ingress-nginx
kubectl wait --namespace ingress-nginx   --for=condition=ready pod   --selector=app.kubernetes.io/component=controller   --timeout=120s
nano ingress-service.yaml
cd ..
kubectl apply -f k8s
kubeadm ip
kubectl get pod -o wide
kubectl get service ingress-nginx-controller --namespace=ingress-nginx
kubeadm dashboard
kubectl proxy --help
curl localhost:8001/api/v1/pods
curl localhost:5000/api/v1/pods
kubectl proxy
cd k8s/
alias k=kubectl
k get ns
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml
Accessing the Dashboard UI
kubectl proxy
cd k8s/
nano dash-admin-user.yaml
kubectl apply -f dash-admin-user.yaml
nano dash-clusterole.yaml
kubectl apply -f dash-clusterole.yaml
kubectl proxy
