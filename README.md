<h1 align="center">
<br>
  <img src="https://cdn.iconscout.com/icon/free/png-512/postgresql-5-569524.png" alt="postgres" width="120">
<br>
<br>
Postgres and Pgweb with Docker Compose
</h1>

<p align="center">simples way to run postgres in docker</p>


## Overview

This repo is just do store a simple way to run postgres and pgweb with docker

## Prerequisites

To run this in your machine you will need to have [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

### Installing

**Cloning the Repository**

```bash
$ git clone https://github.com/codingwithmath/postgres-docker

$ cd postgres-docker
```

### Guides
in our ```docker-compose.yml``` file we'll have our postgres image. It's important to noticy that we configure our database **name**, **user** and **password**:

```yaml
environment: 
    - POSTGRES_DB=postgres
    - POSTGRES_USER=postgres
    - POSTGRES_PASSWORD=postgres
    - TZ=GMT
```
if you need to make changes in the file, that's the moment.

## Running
If you have your enviorement properly configured you can run:

```bash
$ sudo docker-compose up
```
or
```bash
$ sudo docker-compose up -d
```
### Migrations
after your containers is up and running you'll be able to execute your migrations

first, we are going to copy our migrations to the ```data/postgres``` folder created when we init our containers

```
$ sudo cp migrations/{YOUR_MIGRATIONS} data/postgres
```
_in my case:_

```bash
$ sudo cp migrations/*up.sql data/postgres   
```
after that, we can run our migrations:

```
$ sudo docker-compose exec postgres psql -U {YOUR_POSTGRES_USER} -d {YOUR_POSTGRES_DB} -1 -f /var/lib/postgresql/data/YOUR_MIGRATION.sql
```
_in my case:_
```bash
$ sudo docker-compose exec postgres psql -U postgres -d postgres -1 -f /var/lib/postgresql/data/001_create_table_up.sql
```

### Pgweb
after running all comands above you'll can now see everything in ```http://localhost:8081```

## Refs
[Brincando com o PostgreSQL - [PT-BR]](https://jtemporal.com/brincando-com-postgresql/)
[pgweb](https://github.com/sosedoff/pgweb)
