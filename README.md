# An Nginx Drupal Proxy  Repo


This repo builds an Nginx Drupal Proxy docker image.

This image is based on the Nginx Alpine docker image.   

The proxy configuration file is in etc/nginx/conf.d/drupal.conf. 


## Naming Convention


The naming convention is branched into **Standard** and **Extended** and is 
based on similar projects based on the Alpine Linux distribution, where 
`-alpine` is appended to the end of the tag.  


The **Standard** branch is based on the latest stable version of Nginx 
provided by the Nginx Alpine docker image.   

The **Extended** branch may either be based on the previous stable 
version of Nginx or the cutting edge version of Nginx.   


### Standard Naming Convention


    aviumlabs/nginx-drupal-proxy:<version | latest>-alpine


Where version is either numeric based on the Nginx version or the literal 
'latest'.  


### Extended Naming Convention


    aviumlabs/nginx-drupal-proxy:<version | latest>-nginx<version>-alpine


## Build


### Latest


The image defaults to building the latest version of Nginx.


    $ docker build --no-cache -t aviumlabs/nginx-drupal-proxy:latest-alpine .

    $ docker build --no-cache -t aviumlabs/nginx-drupal-proxy:latest-alpine .


Update the base image:


    $ docker build --pull --no-cache -t aviumlabs/nginx-drupal-proxy:latest-alpine .

 
### Specific Version


To build a specific version of Nginx; edit the Dockerfile and change 
version to the one you want to build:   


## Run


This image is not designed to be run standalone; but can be by editing the 
included etc/nginx/conf.d/drupal.conf file.  

__Comment out the line `fastcgi_pass drupal:9000;` and rebuild the image.__


Run the docker image to confirm alpine version:


    $ docker run -it --rm aviumlabs/nginx-drupal-proxy:latest-alpine /bin/ash

    # cat /etc/alpine-release


>
> 3.19.1
>


### Run Nginx Drupal Proxy


    $ docker run -p 8080:80 -it --rm aviumlabs/nginx-drupal-proxy:latest-alpine


## Template Repo


This repo is a template repo.  
GitHub documentation for using a template repository is here:  


    https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template



## Companion Project


There is a companion project to this project for building a Drupal
project integrated with PostgreSQL.  


    https://github.com/aviumlabs/drupal-compose.git


The aviumlabs/drupal-compose repo is also a template repository.   


The services included are:  
- PostgreSQL 16.2  
- Drupal 10.2.6 or later  
- Nginx 1.26.0 or later


## Project Notes


### Docker Hub


Internal notes for pushing images to Docker Hub.  


    $ docker push aviumlabs/nginx-drupal-proxy:<tagname>-alpine  

 
    $ docker push aviumlabs/nginx-drupal-proxy:latest-alpine  
