FROM n8nio/n8n:latest

# Beralih ke user root untuk memberi permission
USER root

# Salin skrip ke direktori yang aman dan bisa dieksekusi
COPY start.sh /usr/local/bin/start.sh

# Set permission agar skrip bisa dijalankan
RUN chmod +x /usr/local/bin/start.sh

# Kembali ke user default “node” untuk keamanan
USER node

# Jalankan skrip saat container start
ENTRYPOINT ["/usr/local/bin/start.sh"]
