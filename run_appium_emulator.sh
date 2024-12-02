#!/bin/bash

docker run --rm -it -p 6080:6080 -p 4723:4723 -e EMULATOR_DEVICE="Samsung Galaxy S10" \
  -e WEB_VNC=true -e APPIUM=true --device /dev/kvm \
  --name android-container budtmo/docker-android:emulator_12.0
