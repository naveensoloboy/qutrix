# Use official PHP with Apache image
FROM php:8.2-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory to match Windows XAMPP (if needed)
WORKDIR /var/www/html

# Copy project files into the container
COPY . /var/www/html/

# Ensure correct file permissions (important for Windows users)
RUN chown -R www-data:www-data /var/www/html

# Expose Apache port
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
