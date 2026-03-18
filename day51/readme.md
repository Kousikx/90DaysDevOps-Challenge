# Day 51 – Kubernetes Manifests & First Pods

## 🚀 What I Learned

Today I learned how to create Kubernetes resources using YAML manifests and deploy my first Pods.

I now understand:

- Structure of a Kubernetes manifest
- How to deploy Pods using kubectl
- Difference between declarative and imperative approaches
- How to debug and interact with running Pods
- How labels help organize resources

---

## 🧱 Kubernetes Manifest Structure

Every Kubernetes manifest has 4 main fields:

### 1. apiVersion
Defines which Kubernetes API version to use  
Example: v1 (for Pods)

### 2. kind
Defines the resource type  
Example: Pod

### 3. metadata
Contains identity details like:
- name
- labels

### 4. spec
Defines the desired state:
- containers
- images
- ports
- commands

---

## 🛠️ My Pod Manifests

---

### 🔹 1. Nginx Pod

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
  labels:
    app: nginx
spec:
  containers:
  - name: nginx
    image: nginx:latest
    ports:
    - containerPort: 80
