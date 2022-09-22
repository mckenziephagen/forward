#!/bin/bash

. "/home/users/mphagen/miniconda3/etc/profile.d/conda.sh"

PORT=$1
NOTEBOOK_DIR=${2:-${SCRATCH}}

conda activate jupyter-env

cd $NOTEBOOK_DIR

jupyter-lab . --no-browser --port=$PORT
