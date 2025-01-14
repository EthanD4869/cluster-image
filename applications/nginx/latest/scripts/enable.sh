#!/usr/bin/env bash
set -e
cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1

NAME=${NAME:-"nginx"}
NAMESPACE=${NAMESPACE:-"nginx"}

function enable(){
  helm upgrade -i ${NAME} ../charts/nginx -n ${NAMESPACE} --create-namespace ${HELM_OPTS}
}
enable
