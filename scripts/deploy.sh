#!/bin/bash
docker build --build-arg GITHUB_PAT=${GITHUB_PAT} tlworker -t tlverse/tlworker
docker push tlverse/tlworker