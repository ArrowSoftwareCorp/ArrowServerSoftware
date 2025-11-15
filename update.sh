# Copy Caddyfile to server dir
sudo cp -v ./Caddyfile /srv/caddy/config/Caddyfile
echo '<html><body><h1>Hello from Caddy!</h1><p>Pod is running successfully.</p></body></html>' | sudo tee /srv/www/example.com/index.html
