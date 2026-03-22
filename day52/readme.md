# 🚀 Day 52 – Namespaces & Deployments (Real Kubernetes Begins)

Today felt like a real shift in my DevOps journey.

Yesterday I created Pods… but today I understood why Pods alone are not enough.

## 💡 What I Learned

I learned how Kubernetes actually manages applications using Deployments.

Instead of manually handling Pods, Deployments ensure:
- Pods are always running
- Failed pods are recreated automatically
- Scaling is easy
- Updates happen without downtime

I also learned about Namespaces, which help organize environments like:
- dev
- staging
- production

## 🛠️ Tools Used

- Kubernetes (kubectl)
- YAML
- Nginx

## 📚 Key Concepts

- Namespaces (resource isolation)
- Deployment vs Pod
- Replicas and scaling
- Self-healing (auto recreation)
- Rolling updates
- Rollbacks

## ⚙️ Commands I Used

```bash
kubectl create namespace dev
kubectl run nginx-dev --image=nginx -n dev
kubectl apply -f nginx-deployment.yaml
kubectl get pods -n dev
kubectl scale deployment nginx-deployment --replicas=5 -n dev
kubectl set image deployment/nginx-deployment nginx=nginx:1.25 -n dev
kubectl rollout undo deployment/nginx-deployment -n dev
kubectl delete namespace dev
