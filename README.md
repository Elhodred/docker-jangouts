# Before deploying:

Enter into apache diretory and create the certificates:

> openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt

Edit docker-compose.yaml and change the variable IP with the ip of your server.

# Deploy it:

> docker-compose up -d
