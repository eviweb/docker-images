Docker Images
=============
a bunch of docker files.    

### Build images
1. clone this repo `git clone https://github.com/eviweb/docker-images.git`
2. run docker build command `docker build -f docker-images/src/[ID]/Dockerfile -t [TAG] .`    
where:
    - __ID__ is the identifier of the image to build [see Provides section](#provided-docker-files)
    - __TAG__ is the reference tag of the built image

### Use from Docker Hub
The docker images are publicly available from my [Docker Hub account](https://hub.docker.com/u/eviweb/), and are ready to use.    
Simply run the docker pull command `docker pull eviweb/[ID]`, where:    
- __ID__ is the identifier of the image to build [see Provides section](#provided-docker-files)

### Provided Docker Files
#### php53-cli
- Ubuntu Precise Minimal
- php cli 5.3
    
#### php54-cli
- Ubuntu Precise Minimal
- php cli 5.4 from [Ondrej Sury's PPA for PHP 5.4](https://launchpad.net/~ondrej/+archive/ubuntu/php5-oldstable)

#### php55-cli
- Ubuntu Trusty Minimal
- php cli 5.5 from [Ondrej Sury's PPA for PHP 5.5](https://launchpad.net/~ondrej/+archive/ubuntu/php5)

#### php56-cli
- Ubuntu Trusty Minimal
- php cli 5.6 from [Ondrej Sury's PPA for PHP 5.6](https://launchpad.net/~ondrej/+archive/ubuntu/php5-5.6)

#### php70-cli
- Ubuntu Trusty Minimal
- php cli 7.0 from [Ondrej Sury's PPA for PHP 7.0](https://launchpad.net/~ondrej/+archive/ubuntu/php-7.0)

### License
This project is licensed under the following terms: [LICENSE](/LICENSE)
