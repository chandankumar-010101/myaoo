#!/bin/bash -ve
rm -rf js/package
mkdir -p js
cd js/ && curl -L 'https://gitlab.com/famedly/company/frontend/libraries/olm/-/jobs/artifacts/master/download?job=build:js' > olm.zip && cd ../
cd js/ && unzip olm.zip && cd ../
cd js/ && rm olm.zip && cd ../
cd js/ && mv javascript package && cd ../
