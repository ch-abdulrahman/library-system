FROM php:apache
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install nano
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
EXPOSE 80