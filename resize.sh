#!/bin/bash

FILES=$(ls onafroidicidans/img/*.jpg | grep -v small)

for file in $FILES
do
    echo "Processing image $file..."   
    FILENAME=$(basename $file)
    /usr/bin/convert -thumbnail 200 $file onafroidicidans/img/small_$FILENAME 
done
