FROM n8nio/n8n:latest

COPY start.sh /start.sh

ENTRYPOINT ["/start.sh"]
