#!/bin/bash

# Domain configuration
domain="joewalker.xyz"
domains=($domain www.$domain)
email="$WORDPRESS_EMAIL" # Will be loaded from .env
staging=0 # Set to 1 for testing to avoid rate limits

# Load environment variables from .env file
export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
email=$EMAIL

# Path settings
data_path="./certbot"
rsa_key_size=4096

# Warning if existing certificates are found
if [ -d "$data_path" ]; then
  read -p "Existing certificates found for $domain. Continue and replace? (y/N) " decision
  if [ "$decision" != "Y" ] && [ "$decision" != "y" ]; then
    exit
  fi
fi

# Create required directories
mkdir -p "$data_path/conf/live/$domain"
mkdir -p "$data_path/www"

# Start nginx to handle ACME challenge
docker-compose up --force-recreate -d nginx

# Request the SSL certificate
docker-compose run --rm --entrypoint "\
  certbot certonly --webroot -w /var/www/certbot \
    --email $email \
    $([ $staging = 1 ] && echo "--staging") \
    -d $domain -d www.$domain \
    --rsa-key-size $rsa_key_size \
    --agree-tos \
    --force-renewal" certbot

# Reload nginx to apply the new certificate
docker-compose exec nginx nginx -s reload