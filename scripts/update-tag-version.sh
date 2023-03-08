#!/bin/bash

if [ $# -lt 4 ]; then
    echo "Usage: $0 CHART_NAME USER_NAME USER_EMAIL LAST_TAG"
    exit 1
fi

CHART_NAME=$1
USER_NAME=$2
USER_EMAIL=$3
LAST_TAG=$4

sed -i "s/tag: .*/tag: '${LAST_TAG}'/" charts/${CHART_NAME}/values.yaml
sed -i "s/appVersion: .*/appVersion: ${LAST_TAG}/" charts/${CHART_NAME}/Chart.yaml
git config user.name "${USER_NAME}"
git config user.email "${USER_EMAIL}"
git commit -am "Update chart version to $LAST_TAG"
git push
