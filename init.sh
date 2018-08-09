#!/bin/bash

DIR=$(cd $(dirname $0); pwd -P)
source ${DIR}/servers.cnf

find . -name "*.conf" | xargs sed -i.bak s/_CM_/${CM}/g
find . -name "*.conf" | xargs sed -i.bak s/_SH_/${SH}/g
find . -name "*.conf" | xargs sed -i.bak s/_IDX_/${IDX}/g
find . -name "*.conf" | xargs sed -i.bak s/_HF_/${HF}/g
find . -name "*.conf" | xargs sed -i.bak s/_UF_/${UF}/g
find . -name "*.conf" | xargs sed -i.bak s/_DS_/${DS}/g
find . -name "*.conf" | xargs sed -i.bak s/_LM_/${LM}/g
find . -name "*.conf" | xargs sed -i.bak s/_SECRET_/${SECRET}/g

find . -name "*.bak" | xargs rm -f
