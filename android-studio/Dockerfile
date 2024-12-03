FROM ubuntu:24.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openjdk-17-jdk
RUN apt-get install -y curl sudo wget unzip bzip2 libdrm-dev
RUN apt-get install -y libxkbcommon-dev libgbm-dev libasound-dev libnss3
RUN apt-get install -y libxcursor1 libpulse-dev libxshmfence-dev
RUN apt-get install -y xauth xvfb x11vnc fluxbox wmctrl libdbus-glib-1-2 socat
RUN apt-get install -y virt-manager

COPY android-studio-2024.2.1.12-linux.tar.gz /install/install.tar.gz
RUN tar -xvf /install/install.tar.gz -C /install