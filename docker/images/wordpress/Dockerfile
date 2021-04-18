FROM wordpress

ENV WORDPRESS_USER=user
ENV WORDPRESS_PASSWORD=${TODO:wp_user_password}
ENV WORDPRESS_EMAIL=${TODO:wp_email}
ENV WORDPRESS_BLOG_NAME='WordPress Demo by Olakai Consulting'

# Assumes the following vars exist:
# WORDPRESS_DB_HOST
ENV WORDPRESS_DB_NAME=demo
ENV WORDPRESS_DB_PASSWORD=${TODO:db_user_password}
ENV WORDPRESS_DB_USER=olakaiconsulting

# Assumes that context is root
ADD files/wordpress/wp-content /var/www/html/wp-content/
