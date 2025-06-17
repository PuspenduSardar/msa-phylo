#!/bin/bash
# run_pipeline.sh

# User-configurable parameters
THREADS=86
MEMORY="200G"

export THREADS
export MEMORY

bash align.sh
bash trim.sh
bash tree.sh
echo "Pipeline completed. Check the 'output/' directory."
