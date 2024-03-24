#!/bin/bash

set -e

mkdir -p /dev/net && mknod /dev/net/tun c 10 200

GP_DIR=/opt/paloaltonetworks/globalprotect

${GP_DIR}/PanMSInit.sh
${GP_DIR}/pre_exec_gps.sh
${GP_DIR}/PanGPS

exec "$@"
