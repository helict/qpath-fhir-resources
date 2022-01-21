# QPath4MS FHIR Implementation Guide

### Looking for the readable FHIR Implementation Guide?


Please visit [FHIR Implementation Guide](https://build.fhir.org/ig/helict/qpath4ms-ig/)

To interprete/compile FHIR Shorthand (FSH) files use [SUSHI](https://github.com/FHIR/sushi) command line tool
(reverse conversion with [GoFSH](https://github.com/FHIR/GoFSH)). To generate the complete QPath4MS FHIR IG run 
`_updatePublisher.sh` (optionally) and `_genonce.sh` script on the repository.

### How is the FHIR Implementation Guide built and provided?

The QPath4MS FHIR IG is built using the [Auto IG Builder](https://github.com/FHIR/auto-ig-builder), which
uses webhooks to trigger the build process on new commits. A build summary will also be made available 
[here](https://fhir.github.io/auto-ig-builder/builds.html) as well as referenced via Zulip FHIR chat 
[notifications](https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification/topic/ig-build)
