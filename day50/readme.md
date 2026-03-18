# Day 50 – Kubernetes Architecture & Cluster Setup

## 🚀 Kubernetes Story (My Understanding)

Kubernetes was created to solve the problem of managing containers at scale. While Docker can run containers, it cannot manage hundreds of containers across multiple machines efficiently.

Kubernetes was originally developed by Google and inspired by their internal system called Borg.

The name "Kubernetes" comes from Greek, meaning "helmsman" or "ship pilot", which represents controlling and managing containers.

---

## 🏗️ Kubernetes Architecture (Simplified)

### 🔹 Control Plane (Master Node)

- **API Server** → Entry point for all commands (kubectl talks here)
- **etcd** → Stores cluster data (state of pods, nodes, configs)
- **Scheduler** → Decides where pods should run
- **Controller Manager** → Ensures actual state = desired state

---

### 🔹 Worker Node

- **kubelet** → Communicates with API server and runs pods
- **kube-proxy** → Handles networking between pods
- **Container Runtime** → Runs containers (Docker/containerd)

---

## 🔄 What Happens When I Run:

### kubectl apply -f pod.yaml

1. Request goes to API Server  
2. API Server stores config in etcd  
3. Scheduler selects a node  
4. kubelet creates the pod  
5. Container runtime runs the container  

---

### ❗ Failure Scenarios

- API Server down → cluster becomes unusable  
- Worker node down → pods rescheduled to other nodes  

---

## ⚙️ Tool Chosen

I used **kind (Kubernetes in Docker)**

### Why?
- Lightweight
- Fast setup
- Uses Docker (already familiar)
- Perfect for local DevOps practice

---

## 🛠️ Setup Commands

```bash
# Create cluster
kind create cluster --name devops-cluster

# Verify
kubectl cluster-info
kubectl get nodes
