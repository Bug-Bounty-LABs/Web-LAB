#! /usr/bin/env bash


# we need docker , docker composer,

install_dep(){
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
}


detect_docker(){
    if ! command -v docker &> /dev/null
    then
        echo "Docker could not be found"
        exit 1
    fi
}


install_docker(){
    if [ -x "$(command -v docker)" ]; then
        echo "Docker already installed, skipping."
    else
        curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
        echo "Docker installed!"
    fi
}

install_dockercompose(){
    if [ -x "$(command -v docker-compose)" ]; then
        echo "docker-compose already installed, skipping."
    else
        curl -L "https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        chmod +x /usr/local/bin/docker-compose
        ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
        echo "docker-compose installed!!!"
    fi
}

