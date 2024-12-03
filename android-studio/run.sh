#!/bin/bash

docker run -it --env=DISPLAY --device /dev/kvm -v /tmp/.X11-unix:/tmp/.X11-unix \
    --entrypoint /install/android-studio/bin/studio \
    --memory=10g \
    --privileged kodingforkittehs/android-studio $@
