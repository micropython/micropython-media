#!/bin/bash
rm */*.thumb.jpg
for file in */*; do convert $file -thumbnail 300 ${file/.jpg/.thumb.jpg}; done
