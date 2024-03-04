#!/bin/bash

# build karsajobs with tag latest and ghcr.io/gabriellafran22/karsajobs:latest (this tag will be used to upload to github package)
sudo docker build -t gabriellafran22/karsajobs:latest -t ghcr.io/gabriellafran22/karsajobs:latest .
# push to github package, login is not needed because i have exported my github personal access token by running these comments
# export CR_PAT=YOUR_TOKEN
# echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
sudo docker push ghcr.io/gabriellafran22/karsajobs:latest
