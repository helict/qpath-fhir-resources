#!/usr/bin/env sh

PREFIX="[$(basename $0)] "
OUTPUT_DIR=${PWD}/.bundle
BUNDLE=${OUTPUT_DIR}/Bundle.json

# Check if curl, used for POST requests, is installed
[ -z "$(command -v curl)" ] && echo "${PREFIX}Please install curl" && exit 1

# Check if jq, used to query JSON files, is installed
[ -z "$(command -v jq)" ] && echo "${PREFIX}Please install jq" && exit 1

# Check if output directory exists; if not create it
[ ! -d ${OUTPUT_DIR} ] && mkdir ${OUTPUT_DIR} && echo "${PREFIX}Create output directory ${OUTPUT_DIR}"

# Read all FHIR JSON resource files and combine them to one FHIR Bundle
echo "${PREFIX}Process FHIR resources and create transaction FHIR Bundle ${BUNDLE}"
find ${PWD}/resources/ -iname *.json -exec cat {} \; | \
  sed -r 's/"definitionCanonical": "http:\/\/qpath.ukdd.de\/fhir\/(.*)"/"definitionCanonical": "\1"/g' | \
    jq '{ resource: (.), request: { method: "POST", url: .resourceType } }' | \
      jq '[inputs] | { resourceType: "Bundle", type: "transaction", entry: . }' > ${BUNDLE}

# Publish the created Bundle
BASE_URL=${1:-http://localhost:8080/cqf-ruler-r4}
SERVER_ID=${2:-home}
ACTION=${3:-transaction}

echo "${PREFIX}POST transaction FHIR bundle ${BUNDLE} to ${BASE_URL} [y/n]?"
read continue

if [[ "${continue}" == "y" ]]; then
  echo "${PREFIX}Set server id:\t${SERVER_ID}"
  echo "${PREFIX}Set base url:\t${BASE_URL}"
  echo "${PREFIX}Set server action:\t${ACTION}"
  
  # POST each FHIR resource file to public HAPI FHIR R4 server
  curl -sSL \
       -w "${PREFIX}HTTP Response Status: %{http_code}\n" \
       -o ${PWD}/.bundle/Bundle.log \
       -d "serverId=${SERVER_ID}" \
       --data-urlencode "transactionBody@${BUNDLE}" \
       -X POST ${BASE_URL}/${ACTION}
fi

[ $? -eq 0 ] || exit 1
