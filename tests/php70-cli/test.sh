#! /bin/bash
DIR=$(dirname $(readlink -f "$0"))
LIBDIR=$(dirname "${DIR}")/lib

for f in ${LIBDIR}/*.sh; do
    . $f
done

checkDockerfile
buildImage
runTests 'checkPHPVersion' '7.0'
doCleanup
endup
