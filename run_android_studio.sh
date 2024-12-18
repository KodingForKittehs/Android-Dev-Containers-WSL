#!/bin/bash

mkdir -p studio-data/profile/AndroidStudio2022.3.1.20
mkdir -p studio-data/profile/android
mkdir -p studio-data/profile/gradle
mkdir -p studio-data/profile/java
chmod a+rwx studio-data
chmod a+rwx studio-data/*
docker volume create --name=android_studio
sudo docker run -i --rm --env=DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/studio-data:/studio-data -v android_studio:/androidstudio-data \
    --privileged --group-add plugdev deadolus/android-studio $@
