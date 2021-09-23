#!/bin/bash
rm */*.thumb.jpg
for file in */*; do convert $file -thumbnail 200 ${file/.jpg/.thumb.jpg}; done
