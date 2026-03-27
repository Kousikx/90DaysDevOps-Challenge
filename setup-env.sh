#!/bin/bash

# =============================================================
#  Automated DevOps Environment Setup Script
#  Author  : Koushik H Halder
#  Purpose : Automates full DevOps toolchain installation
#            (Docker, kubectl, kind, Git, Node.js, Python, etc.)
#  Usage   : chmod +x setup_env.sh && ./setup_env.sh
# =============================================================

set -euo pipefail

# ──────────────────────────────────────────
# COLORS
# ──────────────────────────────────────────
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
CYAN="\033[0;36m"
NC="\033[0m" # No Color

# ──────────────────────────────────────────
# LOGGING HELPERS
# ──────────────────────────────────────────
log_info()    { echo -e "${GREEN}[INFO]${NC}  $1"; }
log_warn()    { echo -e "${YELLOW}[WARN]${NC}  $1"; }
log_error()   { echo -e "${RED}[ERROR]${NC} $1"; exit 1; }
log_section() { echo -e "\n${CYAN}========== $1 ==========${NC}"; }

# ──────────────────────────────────────────
# PRE-FLIGHT CHECKS
# ──────────────────────────────────────────
log_section "Pre-flight Checks"

if [[ "$EUID" -eq 0 ]]; then
  log_warn "Running as root. Recommended to run as a sudo-enabled user."
fi

if ! command -v apt-get &>/dev/null; then
  log_error "This script requires a Debian/Ubuntu system with apt-get."
fi

log_info "System check passed."

# ──────────────────────────────────────────
# SYSTEM UPDATE
# ──────────────────────────────────────────
log_section "System Update"
sudo apt-get update -y && sudo apt-get upgrade -y
log_info "System updated successfully."

# ──────────────────────────────────────────
# INSTALL CORE DEPENDENCIES
# ──────────────────────────────────────────
log_section "Core Dependencies"
CORE_PACKAGES=(
  curl wget git unzip zip
  ca-certificates gnupg lsb-release
  software-properties-common apt-transport-https
  build-essential jq tree htop net-tools
)

sudo apt-get install -y "${CORE_PACKAGES[@]}"
log_info "Core packages installed."

# ──────────────────────────────────────────
# GIT CONFIGURATION
# ──────────────────────────────────────────
log_section "Git Configuration"
GIT_NAME="Koushik H Halder"
GIT_EMAIL="kousikx300@gmail.com"   # <-- update this

git config --global user.name  "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global init.defaultBranch main
git config --global core.editor nano

log_info "Git configured for: $GIT_NAME <$GIT_EMAIL>"

# ──────────────────────────────────────────
# DOCKER
# ──────────────────────────────────────────
log_section "Docker Installation"

if command -v docker &>/dev/null; then
  log_warn "Docker already installed: $(docker --version)"
else
  # Remove old versions
  sudo apt-get remove -y docker docker-engine docker.io containerd runc 2>/dev/null || true

  # Add Docker GPG key
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
    | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg

  # Add Docker repo
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
    https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" \
    | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

  sudo apt-get update -y
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

  # Allow current user to run docker without sudo
  sudo usermod -aG docker "$USER"
  log_info "Docker installed: $(docker --version)"
fi

# ──────────────────────────────────────────
# KUBECTL
# ──────────────────────────────────────────
log_section "kubectl Installation"

if command -v kubectl &>/dev/null; then
  log_warn "kubectl already installed: $(kubectl version --client --short 2>/dev/null || kubectl version --client)"
else
  KUBECTL_VERSION=$(curl -s https://dl.k8s.io/release/stable.txt)
  curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
  sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
  rm -f kubectl
  log_info "kubectl installed: $(kubectl version --client --short 2>/dev/null || true)"
fi

# ──────────────────────────────────────────
# KIND (Kubernetes IN Docker)
# ──────────────────────────────────────────
log_section "kind Installation"

if command -v kind &>/dev/null; then
  log_warn "kind already installed: $(kind version)"
else
  KIND_VERSION=$(curl -s https://api.github.com/repos/kubernetes-sigs/kind/releases/latest \
    | grep '"tag_name"' | cut -d'"' -f4)
  curl -Lo ./kind "https://kind.sigs.k8s.io/dl/${KIND_VERSION}/kind-linux-amd64"
  chmod +x ./kind
  sudo mv ./kind /usr/local/bin/kind
  log_info "kind installed: $(kind version)"
fi

# ──────────────────────────────────────────
# PYTHON 3 & PIP
# ──────────────────────────────────────────
log_section "Python3 & pip"

if command -v python3 &>/dev/null; then
  log_warn "Python3 already installed: $(python3 --version)"
else
  sudo apt-get install -y python3 python3-pip python3-venv
  log_info "Python3 installed: $(python3 --version)"
fi

# ──────────────────────────────────────────
# NODE.JS (via NodeSource LTS)
# ──────────────────────────────────────────
log_section "Node.js Installation"

if command -v node &>/dev/null; then
  log_warn "Node.js already installed: $(node --version)"
else
  curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
  sudo apt-get install -y nodejs
  log_info "Node.js installed: $(node --version) | npm: $(npm --version)"
fi

# ──────────────────────────────────────────
# DIRECTORY STRUCTURE SETUP
# ──────────────────────────────────────────
log_section "Project Directory Structure"

BASE_DIR="$HOME/github-actions-practice/2026"
DIRS=(
  "$BASE_DIR"
  "$HOME/projects"
  "$HOME/scripts"
  "$HOME/logs"
)

for dir in "${DIRS[@]}"; do
  mkdir -p "$dir"
  log_info "Created: $dir"
done

# ──────────────────────────────────────────
# SHELL ALIASES (appended to ~/.bashrc)
# ──────────────────────────────────────────
log_section "Shell Aliases"

ALIAS_BLOCK="
# ── DevOps Aliases (added by setup_env.sh) ──
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kgn='kubectl get nodes'
alias kaf='kubectl apply -f'
alias kdf='kubectl delete -f'
alias d='docker'
alias dps='docker ps'
alias dimg='docker images'
alias dc='docker compose'
alias gs='git status'
alias gp='git push'
alias gl='git log --oneline --graph --all'
alias devops='cd ~/github-actions-practice/2026'
"

if ! grep -q "DevOps Aliases" "$HOME/.bashrc" 2>/dev/null; then
  echo "$ALIAS_BLOCK" >> "$HOME/.bashrc"
  log_info "Aliases added to ~/.bashrc"
else
  log_warn "Aliases already present in ~/.bashrc — skipping."
fi

# ──────────────────────────────────────────
# VERIFICATION SUMMARY
# ──────────────────────────────────────────
log_section "Installation Summary"

tools=("git" "docker" "kubectl" "kind" "python3" "pip3" "node" "npm")
for tool in "${tools[@]}"; do
  if command -v "$tool" &>/dev/null; then
    echo -e "  ${GREEN}✔${NC} $tool — $($tool --version 2>&1 | head -1)"
  else
    echo -e "  ${RED}✘${NC} $tool — NOT FOUND"
  fi
done

# ──────────────────────────────────────────
# DONE
# ──────────────────────────────────────────
echo ""
log_info "Environment setup complete!"
log_warn "Run 'source ~/.bashrc' or open a new terminal to apply aliases."
log_warn "Log out and log back in for Docker group permissions to take effect."
echo ""
