# 🚀 Day 51 – Kubernetes Manifests & My First Pods

Today was a big milestone in my DevOps journey.

Until now, I was mostly learning concepts… but today I actually deployed my first workloads on Kubernetes.

## 💡 What I Learned

I learned how Kubernetes works at the most basic level — using Pods.

I understood that everything in Kubernetes is defined using a YAML file, and it mainly has 4 important parts:
- apiVersion
- kind
- metadata
- spec

This gave me clarity on how Kubernetes reads and executes configurations.

## 🛠️ Tools Used

- Kubernetes (kubectl)
- YAML
- Nginx
- BusyBox
- Redis

## 📚 Key Concepts

- What is a Pod (smallest deployable unit)
- Declarative vs Imperative approach
- Writing manifests from scratch
- Labels and filtering
- Debugging using logs and describe
- Dry-run validation

## ⚙️ Commands I Used

```bash
kubectl apply -f nginx-pod.yaml
kubectl get pods
kubectl describe pod nginx-pod
kubectl logs nginx-pod
kubectl exec -it nginx-pod -- /bin/bash
kubectl run redis-pod --image=redis:latest
kubectl get pod redis-pod -o yaml
kubectl apply --dry-run=client -f nginx-pod.yaml
kubectl delete pod nginx-pod
