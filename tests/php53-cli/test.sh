#! /bin/bash
DIR=$(dirname $(readlink -f "$0"))
LIBDIR=$(dirname "${DIR}")/lib

for f in ${LIBDIR}/*.sh; do
    . $f
done

checkDockerfile
buildImage
runTests 'checkPHPVersion' '5.3'
doCleanup
endup
