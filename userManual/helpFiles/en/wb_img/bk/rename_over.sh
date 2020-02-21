#!/bin/bash
for file in *
do
    # separate the file name from its extension
    if [[ $file == *.* ]]; then
      ext="${file##*.}"
      fname="${file%.*}"
      mv "$file" "${fname}_over.$ext"
    else
      mv "$file" "${file}_over"
    fi
done
