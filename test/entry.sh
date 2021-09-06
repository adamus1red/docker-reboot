#!/bin/sh
#Variables
URL=https://share.modem7.com/nEsO3/fEduWuXa02.mp4
FILEURL=$URL
# Download Video
curl $URL --output /usr/share/nginx/html/rickroll.mp4
exec "$@"