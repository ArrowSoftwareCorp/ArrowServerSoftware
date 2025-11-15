# Create all required directories
sudo mkdir -p ./srv/caddy/config
sudo mkdir -p ./srv/caddy/data
sudo mkdir -p ./srv/www/arrowsoftware.net
#sudo mkdir -p /srv/www/docs.example.com
#sudo mkdir -p /srv/www/another-domain.com

# Set permissions
sudo chown -R $USER:$USER /srv/caddy /srv/www
sudo chmod 700 ./srv/caddy/config
sudo chmod 700 ./srv/caddy/data
sudo chmod 700 ./srv/www