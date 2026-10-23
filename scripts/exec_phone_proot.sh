#!/bin/bash
SERIAL="RZCY80G86FP"
CMD="$*"
if [ -z "$CMD" ]; then
    CMD="uname -a && cat /etc/os-release"
fi
adb -s "$SERIAL" shell "run-as com.radriloniuma sh -c 'mkdir -p /data/user/0/com.radriloniuma/cache/proot-tmp && export PROOT_TMP_DIR=/data/user/0/com.radriloniuma/cache/proot-tmp && /data/user/0/com.radriloniuma/files/proot -0 -r /data/user/0/com.radriloniuma/files/ubuntu-fs -b /dev -b /proc -w /root /bin/bash -c \"export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin; $CMD\"'"
