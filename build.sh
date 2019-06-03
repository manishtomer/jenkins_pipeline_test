#!/bin/bash

docker build -t tomermanish/react-test -f ./client/Dockerfile.dev ./client

docker run tomermanish/react-test npm run test -- --coverage --watchAll=false

docker build -t tomermanish/multi-client ./client

