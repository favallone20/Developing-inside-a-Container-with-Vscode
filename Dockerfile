FROM ubuntu:22.04

LABEL MANTAINER="f.avallone1998@gmail.com"

RUN apt-get update && apt-get install -y build-essential \
sudo \
cmake \
libboost-all-dev \
cppcheck \
clang \
python3 python3-pip \
&& pip3 install conan \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN sudo apt-get update

RUN mkdir -p /home/workspace

ENTRYPOINT ["/bin/bash"]