#/usr/bin/env sh

# Todo: Check arguments
SERVER_ID=${1:-home}
BASE_URL=${2:-http://localhost:8080/cqf-ruler}
ACTION=${3:-create}
PREFIX="[$(basename $0)] "

echo "${PREFIX}Set server id:\t${SERVER_ID}"
echo "${PREFIX}Set base url:\t${BASE_URL}"
echo "${PREFIX}Set action:\t${ACTION}\n"

# Check if curl, used for POST requests, is installed
[ -z "$(command -v curl)" ] && echo "Please install curl" && exit 1

# Check if jq, used to query JSON files, is installed
[ -z "$(command -v jq)" ] && echo "Please install jq" && exit 1

# POST each FHIR resource file to public HAPI FHIR R4 server
for path in `ls -d ${PWD}/pathways/**/*.json`; do
    type="$(jq -r '.resourceType' ${path})"
    id="$(jq -r '.id' ${path})"
    status=$(
        curl -sSL \
             -w "%{http_code}" \
             -o /dev/null \
             -d "serverId=${SERVER_ID}" \
             -d "resource=${type}" \
             -d "resource-create-id=${id}" \
             --data-urlencode "resource-create-body@${path}" \
             -X POST ${BASE_URL}/${ACTION}
    )
    echo "${PREFIX}${status}\t${id}\t${type}\t${path}"
done

[ $? -eq 0 ] || exit 1
