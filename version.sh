DEBIAN10_VERSION="10.12.0"
DEBIAN11_VERSION="11.4.0"
UBUNTU18_VERSION="18.04"
UBUNTU20_VERSION="20.04"
UBUNTU22_VERSION="22.04"
DEBIAN_VERSIONS="buster/debian:$(echo ${DEBIAN10_VERSION} | cut -d. -f1,2) bullseye/debian:$(echo ${DEBIAN11_VERSION} | cut -d. -f1,2) bionic/ubuntu:${UBUNTU18_VERSION} focal/ubuntu:${UBUNTU20_VERSION} jammy/ubuntu:${UBUNTU22_VERSION}"

MA3_CODENAME="buster"
MA3_VERSION="3.4b0"
CE3_VERSION="3.4b0"
MA4_CODENAME="bullseye"
MA4_VERSION="4.0a1"
CE4_VERSION="4.0a1"
