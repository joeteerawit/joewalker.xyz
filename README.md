# Joewalker

## Steps

```bash
mkdir -p /root/wordpress/{wordpress-data,postgres-data}
chmod +x init-letsencrypt.sh
./init-letsencrypt.sh
docker-compose up -d
```