#!/usr/bin/env bash
set -e

# Import Microsoft GPG key
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Add Azure CLI repo
echo -e "[azure-cli]
name=Azure CLI
baseurl=https://packages.microsoft.com/yumrepos/azure-cli
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo

# Install Azure CLI
dnf install -y azure-cli