touch /var/www/html/app/config/parameters.yml

echo "parameters:" > /var/www/html/app/config/parameters.yml
echo "    database_host: ${DATABASE_HOST}" >> /var/www/html/app/config/parameters.yml
echo "    database_port: ${DATABASE_PORT}" >> /var/www/html/app/config/parameters.yml
echo "    database_name: ${DATABASE_NAME}" >> /var/www/html/app/config/parameters.yml
echo "    database_user: ${DATABASE_USER}" >> /var/www/html/app/config/parameters.yml
echo "    database_password: ${DATABASE_PASSWORD}" >> /var/www/html/app/config/parameters.yml
echo "    mailer_transport: ${MAILER_TRANSPORT}" >> /var/www/html/app/config/parameters.yml
echo "    mailer_host: ${MAILER_HOST}" >> /var/www/html/app/config/parameters.yml
echo "    mailer_user: ${MAILER_USER}" >> /var/www/html/app/config/parameters.yml
echo "    mailer_password: ${MAILER_PASSWORD}" >> /var/www/html/app/config/parameters.yml
echo "    secret: ${SECRET}" >> /var/www/html/app/config/parameters.yml