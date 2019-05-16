#!/bin/bash
. config.cfg

docker run -it --rm -p 1313:1313 -v ${repo_mount_path}:/usr/share/blog --name ${image} ${container}
