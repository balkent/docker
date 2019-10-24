# Projet Docker Web (Juste for working in my project)

php:7.2-apache  
mysql:5.7 

> git clone git@github.com:QuentinBALCEREK/docker.git [project_name]

> cd [project_name]

## Configuration
> cp docker/sf_mysql.env.dist docker/sf_mysql.env

> cp docker/sf_mail.env.dist docker/sf_mail.env

> cp docker/sf.env.dist docker/sf.env  
  
> sed -i -e "s/project_name/[project_name]/g" docker/docker-compose.yml  
  
> sed -i -e "s/project_name/[project_name]/g" .env

## Test
> <?php echo "coucou"; ?> >> app/index.php

> docker-compose -f docker/docker-compose.yml build

> docker-compose -f docker/docker-compose.yml up -d
