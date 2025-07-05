#!/bin/sh

# Opsional: Aktifkan login username/password
export N8N_BASIC_AUTH_ACTIVE=true
export N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER}
export N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD}

# Jalankan n8n
n8n start
