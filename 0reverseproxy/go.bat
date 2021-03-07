:: https://davemateer.com/wordpress/2018/05/31/Wordpress-in-AKS.html
:: https://github.com/kubernetes/ingress-nginx/releases

::call az aks get-credentials -n aks -g aksrg
kubectl create -f namespace.yaml -f configmap.yaml
kubectl create -f default-backend.yaml 
kubectl create -f ingress-nginx.yaml -f ingress-nginx-svc.yaml 

