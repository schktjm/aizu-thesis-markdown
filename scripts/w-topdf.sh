readonly filename=$1
docker run -it --rm -v "`pwd`":/workdir  plass/mdtopdf /bin/sh -c "./scripts/w-mdtokuee.sh ${filename}"
