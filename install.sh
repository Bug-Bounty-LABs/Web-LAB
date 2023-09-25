#! /usr/bin/env bash


# we need docker , docker composer,



detect_docker(){
    if ! command -v docker &> /dev/null
    then
        echo "Docker could not be found"
        exit 1
    fi
}



# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh

# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin