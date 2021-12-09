#/usr/bin/env sh

SERVER_ID=home
BASE_URL=http://localhost:8080/cqf-ruler-r4

# Check if curl, used for POST requests, is installed
[ -z "$(command -v curl)" ] && echo "Please install curl" && exit 1

# Check if jq, used to query JSON files, is installed
[ -z "$(command -v jq)" ] && echo "Please install jq" && exit 1

# POST each FHIR resource file to public HAPI FHIR R4 server
for f in `ls -d ${PWD}/pathways/**/*.json`; do
    type="$(jq -r '.resourceType' ${f})"
    id="$(jq -r '.id' ${f})"
    res=$(
        curl -sSL \
             -w "%{http_code}" \
             -o /dev/null \
             -d "serverId=${SERVER_ID}" \
             -d "resource=${type}" \
             -d "resource-create-id=${id}" \
             --data-urlencode "resource-create-body@${f}" \
             -X POST ${BASE_URL}/create
    )
    echo "${res}\t${id}\t${type}\t${f}"
done

[ $? -eq 0 ] || exit 1
