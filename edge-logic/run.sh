#!/bin/bash

# Run a simple classification on the supplied image. 
# If the model or labels are not available, the container 
# will exit and try again.
python3 src/classify_image.py \
--model /models/model.tflite \
--labels /models/labels.txt \
--input images/parrot.jpg

# Run balena-idle after our py3 script exits so the container keeps running
balena-idle