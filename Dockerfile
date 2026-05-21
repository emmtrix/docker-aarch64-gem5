FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive
ENV GEM5_VERSION=v25.1.0.0
ENV GEM5_DIR=/opt/gem5

RUN apt-get update && apt-get install -y \
	build-essential \
	git \
	m4 \
	scons \
	zlib1g \
	zlib1g-dev \
	python3 \
	python3-dev \
	python-is-python3 \
	libprotobuf-dev \
	protobuf-compiler \
	libprotoc-dev \
	libgoogle-perftools-dev \
	libboost-all-dev \
	pkg-config \
	wget \
	curl \
	ca-certificates \
	mc

#RUN git clone --depth 1 --branch ${GEM5_VERSION} https://github.com/gem5/gem5.git ${GEM5_DIR}

#RUN cd ${GEM5_DIR} && scons build/ARM/gem5.opt -j"$(nproc)"

#RUN apt-get install -y make gcc g++ g++-12-aarch64-linux-gnu

WORKDIR /local
