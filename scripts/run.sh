#!/bin/bash
. ./config.cfg

# docker run -it --rm -p 1313:1313 -v ${repo_mount_path}:/usr/share/blog --name ${image} ${container}
echo "$(pwd)/site"

case "$(uname -s)" in
	MINGW*)
		winpty docker run -it --rm -p 1313:1313 -v "/$(pwd)/site:/usr/share/blog" \
			--name "${container}" "${image}"
		;;
	*)
		docker run -it --rm -p 1313:1313 -v "$(pwd)/site:/usr/share/blog" \
			--name "${container}" "${image}"
		;;
esac
