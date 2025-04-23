#!/bin/bash

function update_thumb {
    ext=$1
    rm */*.thumb.$ext
    for file in */*.$ext; do
        echo "Processing $file"
        convert $file -thumbnail 300 ${file/.$ext/.thumb.$ext}
    done
}

update_thumb jpg
update_thumb png
