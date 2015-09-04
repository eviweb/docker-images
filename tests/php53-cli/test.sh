#! /bin/bash
DIR=$(dirname $(readlink -f "$0"))
DOCKERFILE="${DIR/tests/src}/Dockerfile"
NAME=${DIR##*/}
TAG="test/${NAME}:test"
TEMPNAME="${NAME}-test-temp"
RESULT=0

if [ ! -e "${DOCKERFILE}" ]; then
    echo "File not found: ${DOCKERFILE}"
    exit 1
fi

echo "Build the image"
docker build -f "${DOCKERFILE}" -t "${TAG}" --rm=true .

echo "Run Tests"
docker run --name="${TEMPNAME}" "${TAG}" php --version | grep 5.3 &> /dev/null
RESULT=$?

if [ "${RESULT}" == "0" ]; then
    echo "  > Passed";
else
    echo "  > Failed";
fi

echo "Clean up"
docker rm "${TEMPNAME}"
docker rmi "${TAG}"

exit ${RESULT}
