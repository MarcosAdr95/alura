FROM wordpress:6.8.1-php8.1-apache

# Copia os arquivos do repositório para dentro do container
COPY ./ /usr/src/wordpress/