# WordPress ready to go demo
This setup installs a local WordPress instance with a DB and uses a theme from https://rarathemes.com/wordpress-themes/school-zone/ (including demo content).

# Using this repo as template
Replace the following variables:
```
${TODO:root_db_user_password}
${TODO:db_user_password}
${TODO:db_user_password}
${TODO:wp_url}
${TODO:wp_user_password}
${TODO:wp_email}
${TODO:service_name}
```

## Environment variables
Env variables are set as part of the images. 

In the DB image:
```
MYSQL_ROOT_PASSWORD=${TODO:root_db_user_password}
MYSQL_DATABASE=demo
MYSQL_USER=olakaiconsulting
MYSQL_PASSWORD=${TODO:db_user_password}
```

In the WordPress image:
```
WORDPRESS_DB_HOST
WORDPRESS_USER=user
WORDPRESS_PASSWORD=${TODO:wp_user_password}
WORDPRESS_EMAIL=${TODO:wp_email}
WORDPRESS_BLOG_NAME='WordPress Demo by Olakai Consulting'
WORDPRESS_DB_NAME=demo
WORDPRESS_DB_PASSWORD=${TODO:db_user_password}
WORDPRESS_DB_USER=olakaiconsulting
```

# Build images
From the `docker` directory:
```
docker image build . -f images/wordpress/Dockerfile -t wordpress-demo-education-wordpress:latest
docker image build . -f images/db/Dockerfile -t wordpress-demo-education-db:latest
```

# Launching docker
From the `docker` directory:
```
docker-compose up
```
# Lightsail configuration
Files are in `lightsail` and you can see `build.sh` to build / launch

## Deployment
Update the `lightsail/conf/lc.json` file with the correct image name and version.

Then use `deploy.sh`

