FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    bison \
    flex \
    libgmp-dev \
    libmpc-dev \
    libmpfr-dev \
    texinfo \
    git \
    wget \
    xz-utils \
	xxd \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables (persist across all layers)
ENV PREFIX=/opt/cross
ENV TARGET=sh4-elf
ENV PATH=$PREFIX/bin:$PATH

WORKDIR /src

# Build binutils
RUN wget https://ftp.gnu.org/gnu/binutils/binutils-2.35.tar.xz && \
    tar -xf binutils-2.35.tar.xz && \
    cd binutils-2.35 && mkdir build && cd build && \
    ../configure --target=$TARGET --prefix=$PREFIX --with-sysroot --disable-nls --disable-werror && \
    make -j$(nproc) && make install && \
    cd /src && rm -rf binutils-2.35 binutils-2.35.tar.xz

# Build GCC (stage 1)
RUN wget https://ftp.gnu.org/gnu/gcc/gcc-10.2.0/gcc-10.2.0.tar.xz && \
    tar -xf gcc-10.2.0.tar.xz && \
    cd gcc-10.2.0 && ./contrib/download_prerequisites && \
    mkdir build && cd build && \
    ../configure --target=$TARGET --prefix=$PREFIX --disable-nls --enable-languages=c,c++ --without-headers && \
    make all-gcc -j$(nproc) && make install-gcc && \
    cd /src && rm -rf gcc-10.2.0 gcc-10.2.0.tar.xz

WORKDIR /workspace