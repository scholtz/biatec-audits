kubectl apply -f deployment-main.yaml -n biatec
kubectl delete configmap biatec-audits-main-conf -n biatec
kubectl create configmap biatec-audits-main-conf --from-file=conf -n biatec
kubectl rollout restart deployment/biatec-audits-main-deployment -n biatec
kubectl rollout status deployment/biatec-audits-main-deployment -n biatec
