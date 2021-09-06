#!/bin/sh
#Variables
URL=https://share.modem7.com/nEsO3/fEduWuXa02.mp4
FILEURL=$URL
# Download Video
echo Downloading $URL
echo Downloading $FILEURL
curl $URL --output /usr/share/nginx/html/rickroll.mp4
exec "$@"