#!/bin/bash
# https://sylabs.io/guides/latest/user-guide/quick_start.html

# Ensure repositories are up-to-date
sudo apt-get update
# Install debian packages for dependencies
sudo apt-get install -y \
   build-essential \
   libseccomp-dev \
   pkg-config \
   squashfs-tools \
   cryptsetup



## Install Go language
export VERSION=1.17.2 OS=linux ARCH=amd64 # Replace the values as needed
wget https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz # Downloads the required Go package
sudo tar -C /usr/local -xzvf go$VERSION.$OS-$ARCH.tar.gz # Extracts the archive
rm go$VERSION.$OS-$ARCH.tar.gz # Deletes the ``tar`` file
export PATH=/usr/local/go/bin:$PATH
go version
which go



## Install libnvidia-container-tools
# https://nvidia.github.io/libnvidia-container/
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | \
    sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg

curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt-get update
sudo apt install -y libnvidia-container-tools



## Download SingularityCE from a release
export VERSION=3.9.7 # adjust this as necessary
wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-ce-${VERSION}.tar.gz
tar -xzf singularity-ce-${VERSION}.tar.gz
cd singularity-ce-${VERSION}



## Compile and Install it
./mconfig
make -C builddir
sudo make -C builddir install



## Verify the installation
singularity --version
which singularity



## Delete source files
rm -rf ./singularity-ce-${VERSION} ./singularity-ce-${VERSION}.tar.gz



## EOF
