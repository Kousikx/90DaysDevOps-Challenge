#!/bin/bash

set -e

echo "🚀 Starting DevOps Environment Setup..."

# Update system
echo "📦 Updating system..."
sudo apt update -y && sudo apt upgrade -y

# Basic tools
echo "🔧 Installing basic tools..."
sudo apt install -y \
    git curl wget unzip jq \
    build-essential software-properties-common \
    apt-transport-https ca-certificates gnupg lsb-release

# -----------------------------
# Docker Installation
# -----------------------------
echo "🐳 Installing Docker..."
sudo apt remove -y docker docker-engine docker.io containerd runc || true

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add user to docker group
sudo usermod -aG docker $USER

# -----------------------------
# Kubectl Installation
# -----------------------------
echo "☸️ Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

# -----------------------------
# Helm Installation
# -----------------------------
echo "📦 Installing Helm..."
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# -----------------------------
# Terraform Installation
# -----------------------------
echo "🌍 Installing Terraform..."
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com \
$(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update -y
sudo apt install -y terraform

# -----------------------------
# AWS CLI
# -----------------------------
echo "☁️ Installing AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip

# -----------------------------
# Node.js (LTS)
# -----------------------------
echo "🟢 Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# -----------------------------
# Python + pip
# -----------------------------
echo "🐍 Installing Python..."
sudo apt install -y python3 python3-pip

# -----------------------------
# Final Cleanup
# -----------------------------
echo "🧹 Cleaning up..."
sudo apt autoremove -y

# -----------------------------
# Versions Check
# -----------------------------
echo "✅ Installed Versions:"
git --version
docker --version
kubectl version --client
helm version
terraform version
aws --version
node -v
python3 --version

echo "🎉 DevOps setup completed successfully!"

echo "⚠️ IMPORTANT:"
echo "👉 Restart your terminal OR run: newgrp docker"
