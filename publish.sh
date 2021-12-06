#/usr/bin/env sh

# Check if curl, used for POST requests, is installed
[ -z "$(command -v curl)" ] && echo "Please install curl" && exit 1

# Check if jq, used to query JSON files, is installed
[ -z "$(command -v jq)" ] && echo "Please install jq" && exit 1

# POST each FHIR resource file to public HAPI FHIR R4 server
for f in `ls -d ${PWD}/pathways/**/*.json`; do
    let type=$(jq -r '.resourceType' ${f})
    let id=$(jq -r '.id' ${f})
    let res=$(
        curl -sSL \
             -w "%{http_code}" \
             -o /dev/null \
             -d "serverId=home_r4" \
             -d "resource=${type}" \
             -d "resource-create-id=${id}" \
             --data-urlencode "resource-create-body@${f}" \
             -X POST https://hapi.fhir.org/update
    )
    echo "${res}\t${f}"
done

[ $? -eq 0 ] || exit 1
