FROM yummygooey/raspbian-buster:latest

RUN : \
  && apt-get update \
  && apt-get install -y \
    build-essential \
    cmake \
    git \
  && :

RUN apt-get install -y \
    libgcrypt20-dev \
    zlib1g-dev \
    libargon2-0-dev \
    libc6-dev \
    libqrencode-dev \
    libqt5concurrent5 \
    libqt5core5a \
    libqt5dbus5 \
    libqt5gui5 \
    libqt5network5 \
    libqt5svg5-dev \
    libqt5widgets5 \
    libqt5x11extras5-dev \
    libquazip5-dev \
    libsodium-dev \
    libstdc++-6-dev \
    libx11-dev \
    libxi-dev \
    libxtst-dev \
    libykpers-1-dev \
    zlib1g-dev
  

RUN : \
  && git clone https://github.com/keepassxreboot/keepassxc.git \
  && cd keepassxc \
  && git pull \
  && git checkout master \
  && mkdir build \
  && cd build \
  && cmake -DWITH_XC_ALL=ON .. \
  && make \
  :

