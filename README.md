# Nginx + PHP docker configuration for WD NAS
I needed authentication and HTTPS for running COPS on my WD PR-4100 so I've decided to create a generic nginx + PHP 
setup using docker for this. Feel free to use this as you wish (remove PHP if not required or add a different container)

To set this up for your NAS you have to edit the environment variables in env.sh and place COPS (or any other PHP
content you want) in your WEB_ROOT.

All the configuration for nginx lives in the config directory. nginx.conf and conf.d/* will be added to the nginx
container replacing the default configuration. Anything in config/custom_conf will be attached to /config inside the
container so you can place extra configuration you might need in there (like .htpasswd or SSL keys).

A recent version of Docker + docker-compose is required to deploy the docker-compose.yml file.

Enjoy! 
