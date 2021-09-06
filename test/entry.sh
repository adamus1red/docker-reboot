#!/bin/sh
#Variables
URL=https://share.modem7.com/nEsO3/fEduWuXa02.mp4
FILEURL=$URL
# Download Video
echo Downloading $URL
echo Downloading $FILEURL
if [ -z "$LICENSE_KEY" ]; then
  cat >&2 <<EOF
A LICENSE_KEY is required to run this container.
You can put more error message here.
EOF
  exit 1
fi
exec "$@"

# curl $URL --output /usr/share/nginx/html/rickroll.mp4

# exec "$@"