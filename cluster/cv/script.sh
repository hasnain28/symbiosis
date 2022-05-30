#!/bin/bash
tag="$1"
file="$2"
msg="$3"
# -i tag is used to implement changes in file
yq eval -i '.spec.values.deployment.image.tag ="'${tag}'"' "${file}"
git add "${file}"
git commit -m "${msg}"
git push 
