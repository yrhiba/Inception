# Inception

A Docker infrastructure project that sets up a small-scale web hosting environment using WordPress, NGINX, and MariaDB.

## Overview

This project involves creating a virtualized infrastructure using Docker containers with the following components:

- NGINX server with TLSv1.2/TLSv1.3
- WordPress with php-fpm
- MariaDB database
- Custom Docker network
- Persistent volumes for WordPress files and database

## Requirements

- Docker and Docker Compose
- Virtual Machine environment
- Make

## Infrastructure

- All services run in separate containers
- NGINX container acts as the only entry point (port 443)
- Custom domain name setup (login.42.fr)
- Environment variables stored in .env file
- Containers auto-restart on crash
- All Docker images built from Alpine or Debian

## Setup

1. Clone the repository
2. Configure your .env file in the srcs directory
3. Run `make` to build and start the infrastructure

## Author

Yahya RHIBA
