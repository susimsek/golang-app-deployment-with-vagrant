# Golang App Deployment With Vagrant
> Golang App Deployment With Vagrant
>
<img src="https://github.com/susimsek/golang-app-deployment-with-vagrant/blob/main/images/golang-app-deployment-with-vagrant.png" alt="Golang App Deployment With Vagrant" width="100%" height="100%"/> 

##  Project Link
```sh
https://github.com/susimsek/golang-echo-graphql-example
```

## Prerequisites for Docker-Compose Deployment

* Docker 19.03+
* Docker Compose 1.25+

## Installation for Docker-Compose Deployment

```sh
docker-compose up -d 
```

## Prerequisites for Kubernetes Deployment

* Kubernetes 1.12+
* Helm 3.1.0
* PV provisioner support in the underlying infrastructure

## Installation for Kubernetes Deployment

```sh
helm install app helm-chart/app
```

## Installation Using Vagrant for Docker-Compose Deployment

<img src="https://github.com/susimsek/golang-app-deployment-with-vagrant/blob/main/images/vagrant-docker-compose-installation.png" alt="Golang Vagrant Docker Compose Installation" width="100%" height="100%"/> 

### Prerequisites for Docker-Compose Deployment

* Vagrant 2.2+
* Virtualbox or Hyperv

```sh
vagrant up
```

```sh
vagrant ssh
```

```sh
cd vagrant/docker-compose-setup
```

```sh
sudo chmod u+x *.sh
```

```sh
./install-prereqs.sh
```

```sh
exit
```

```sh
vagrant ssh
```

```sh
docker-compose up -d
```

You can access the Playground from the following url.

http://192.168.12.11:9000/playground

## Installation Using Vagrant for Kubernetes Deployment

<img src="https://github.com/susimsek/golang-app-deployment-with-vagrant/blob/main/images/vagrant-k8s-installation.png" alt="Golang Vagrant Kubernetes Installation" width="100%" height="100%"/> 

### Prerequisites for Kubernetes Deployment

* Vagrant 2.2+
* Virtualbox or Hyperv

```sh
vagrant up
```

```sh
vagrant ssh
```

```sh
cd vagrant/kubernetes-setup
```

```sh
sudo chmod u+x *.sh
```

```sh
./install-prereqs.sh
```

```sh
exit
```

```sh
vagrant ssh
```

```sh
helm install app helm-chart/app
```

You can access the Playground from the following url.

http://app.info/playground

## Golang App Used Technologies

* Golang 1.16.3
* Echo
* Query & Mutation & Subscription Example
* Gqlgen
* Gqlparser
* Go Uuid
* Air
