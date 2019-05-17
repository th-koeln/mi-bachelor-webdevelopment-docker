#!/bin/bash
. ./config.cfg

function remove_image {
    if [ "$(docker images -q $1)" ]
    then
        echo "Remove image \"$1\""
        docker rmi "$1"
    fi
}

remove_image "${image}"
