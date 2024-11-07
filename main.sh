#!/bin/bash

link=$LINK

if curl -L -O "$link"; then
    filename=$(basename "$link")
    echo "Downloaded: $filename"
else
    echo "Download failed for $link" >&2
    exit 1
fi

filesize=$(du -h "$filename" | cut -f 1)
echo "Size: $filesize"

str_md5=$(md5sum "$filename" | cut -d ' ' -f 1)
str_sha1=$(sha1sum "$filename" | cut -d ' ' -f 1)
str_sha256=$(sha256sum "$filename" | cut -d ' ' -f 1)
echo "MD5: $str_md5"
echo "SHA1: $str_sha1"
echo "SHA256: $str_sha256"