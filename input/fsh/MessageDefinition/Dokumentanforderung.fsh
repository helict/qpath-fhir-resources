Profile: Q4MSDokumentanforderungProfile
Parent: MessageDefinition
Title: "Dokumentanforderung"
* ^url = $q4ms-dokumentanforderung-sd
* status = $publication-status#draft
* eventCoding from Q4MSDokumentanforderungkategorieVS (required)
* category = $message-significance-category#currency
* focus
  * code = $resource-type#DocumentReference
  * min = 1
* responseRequired = $messageheader-response-request#always
