# READ ME

## Install Docker

Update your package index:

```bash
sudo apt-get update
```

Install necessary packages to allow apt to use a repository over HTTPS:

```bash
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
```

Add Docker’s official GPG key:

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Add Docker's official APT repository:

```bash
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```

Update your package index again:

```bash
sudo apt-get update
```

Install Docker CE:

```bash
sudo apt-get install docker-ce
```

Verify Docker installation:

```bash
sudo docker --version
```
## Pull PostgreSQL Docker Image

Pull the official PostgreSQL Docker image from Docker Hub.

```bash
sudo docker pull postgres
```

## Run PostgreSQL Container

Run a PostgreSQL container with the following command:

```bash
sudo docker run --name postgres-db -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
```

## Access PostgreSQL

You can now access the PostgreSQL database using the psql command-line tool or any PostgreSQL client.
Using ‍‍‍‍‍‍‍‍‍‍`psql`:

1. Install PostgreSQL client:

```bash
sudo apt-get install postgresql-client
```

2. Access the PostgreSQL database:

```bash
psql -h localhost -p 5432 -U postgres
```