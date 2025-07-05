FROM n8nio/n8n:latest

USER root  # Tambahkan ini untuk memastikan punya akses root saat copy dan chmod

COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

USER node  # Kembalikan ke user default milik n8n (aman & stabil)

ENTRYPOINT ["/usr/local/bin/start.sh"]
