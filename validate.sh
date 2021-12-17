#!/usr/bin/env sh

# Check if ajv-cli for JSON schema validation is installed
[ -z "$(command -v ajv)" ] && echo "Please install ajv-cli: https://www.npmjs.com/package/ajv-cli" && exit 1

ajv -s fhir-schemas/fhir.schema.json \
    -d "${PWD}/resources/**/*.json" \
    --remove-additional=failing \
    --all-errors \
    --messages=true

[ $? -eq 0 ] || exit 1

# Check if java runtime is installed
[ -z "$(command -v java)" ] && echo "Please install java runtime environment: https://openjdk.java.net/install" && exit 1

# Download FHIR validator if not exist and validate FHIR resources
[ ! -f ./validator_cli.jar ] && wget -q https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar

# Validate FHIR resources
java -jar validator_cli.jar ${PWD}/resources/examples/*.json ${PWD}/resources/pathways/Basismonitoring/*.json \
     -version 4.0.1 \
     -debug

[ $? -eq 0 ] || exit 1
