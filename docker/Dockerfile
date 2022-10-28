FROM ubuntu:22.10

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV SC_VERSION=3.12.2

RUN apt update -q && \
	apt install -qy apt-utils \
	build-essential       \
	bzip2 \
	ca-certificates \
	cmake \
	git \
	jackd2 \
	libasound2-dev \
	libavahi-client-dev \
	libcwiid-dev \
	libfftw3-dev \
	libicu-dev \
	libjack-jackd2-dev \
	libreadline6-dev \
	libsndfile1-dev \
	libudev-dev \
	libxt-dev \
	pkg-config \
	unzip \
	wget

RUN mkdir -p /tmp/sc && \
    cd /tmp/sc && \
    wget https://github.com/supercollider/supercollider/releases/download/Version-$SC_VERSION/SuperCollider-$SC_VERSION-Source.tar.bz2 -O sc.tar.bz2 && \
    tar xvf sc.tar.bz2

RUN cd /tmp/sc/SuperCollider-$SC_VERSION-Source && \
    mkdir -p build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE="Release" \
          -DBUILD_TESTING=OFF \
          -DSUPERNOVA=OFF \
          -DNATIVE=OFF \
          -DSC_WII=OFF \
          -DSC_QT=OFF \
          -DSC_ED=OFF \
          -DSC_EL=OFF \
          .. && \
    make -j && \
    make install

#RUN apt install -qy libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
#
#ENV SC_JACK_DEFAULT_OUTPUTS=gst-launch-1.0
