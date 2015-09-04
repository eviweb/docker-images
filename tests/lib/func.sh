#! /bin/bash
DOCKERFILE="${DIR/tests/src}/Dockerfile"
NAME=${DIR##*/}
TAG="test/${NAME}:test"
TEMPNAME="${NAME}-test-temp"
RESULT=0

function checkDockerfile()
{
    if [ ! -e "${DOCKERFILE}" ]; then
        echo "File not found: ${DOCKERFILE}"
        exit 1
    fi
}

function buildImage()
{
    echo "Build the image"
    docker build -f "${DOCKERFILE}" -t "${TAG}" --rm=true .
}

function runTests()
{
    local test="$1"
    shift
    echo "Run Tests"
    $test $@
    RESULT=$?

    if [ "${RESULT}" == "0" ]; then
        echo "  > Passed";
    else
        echo "  > Failed";
    fi
}

function doCleanup()
{
    echo "Clean up"
    docker rm "${TEMPNAME}"
    docker rmi "${TAG}"
}

function endup()
{
    exit ${RESULT}
}

function checkPHPVersion()
{
    echo "Check for PHP version: $1"
    docker run --name="${TEMPNAME}" "${TAG}" php --version | grep "PHP $1" &> /dev/null
}
