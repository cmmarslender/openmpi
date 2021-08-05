FROM centos:7

RUN yum -y install wget && \
    yum -y groupinstall "Development Tools"

# Install open-mpi 2.1.1
RUN wget https://download.open-mpi.org/release/open-mpi/v2.1/openmpi-2.1.1.tar.gz && \
    tar -xvzf openmpi-2.1.1.tar.gz && \
    cd openmpi-2.1.1 && \
    ./configure --prefix=/usr/local && \
    make all install
