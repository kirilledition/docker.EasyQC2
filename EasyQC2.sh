#! /bin/bash

SCRIPT_PATH=$1
COMMAND="Rscript -e library(EasyQC2);EasyQC2::EasyQC2('${SCRIPT_PATH}')"

RUN_DOCKER="docker run \
    --rm \
    -it \
    --user $(id -u):$(id -g) \
    -v $(pwd):/home \
    -v /home/kirill/Projects/BioageGWAS/data/:/data \
    -v /home/kirill/Projects/BioageGWAS/results/:/results \
    kirill/easyqc2:1.1.1 \
    ${COMMAND}"

$RUN_DOCKER $COMMAND
