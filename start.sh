#!/bin/sh

echo "==========[ DEBUG INFO ]=========="
echo "Tanggal & Waktu     : $(date)"
echo "Hostname            : $(hostname)"
echo "User                : $(whoami)"
echo "Current Directory   : $(pwd)"
echo "File list           :"
ls -lah

echo "Environment Vars    :"
env | grep N8N_

echo "==================================="
echo "🚀 Starting n8n with basic auth..."
echo "==================================="

# Aktifkan login username/password (opsional)
export N8N_BASIC_AUTH_ACTIVE=true
export N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER}
export N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD}

echo "n8n path: $(which n8n)"
n8n --version

# Jalankan n8n
n8n start
