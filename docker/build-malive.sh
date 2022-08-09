#!/bin/sh

. version.sh
CODENAMES="${MALIVE_CODENAME}"
for c in ${CODENAMES}; do
  for v in ${VERSIONS}; do
    if [ ${c} = $(echo ${v} | cut -d/ -f1) ]; then
      BASE=$(echo ${v} | cut -d/ -f2)
      IMAGE="malive/malive"
      echo "building image ${IMAGE} from ${BASE}..."
      docker build -t ${IMAGE} - <<EOF
FROM ${BASE}
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade \
 && apt-get -y install --no-install-recommends \
      sudo lsb-release \
      emacs vim mousepad \
      evince gnuplot-x11 \
      curl lftp wget \
      gfortran cmake git liblapack-dev libopenblas-dev mpi-default-dev numactl \
      enscript time tree zip bc xsel parallel \
 && curl -L https://sourceforge.net/projects/materiappslive/files/Debian/sources/setup.sh/download | /bin/sh \
 && apt-get update \
 && rm -rf /var/lib/apt/lists/* \
 && echo "unalias ls" >> /etc/skel/.bashrc
EOF
    fi
  done
done
docker images
docker system df
