Profile: Q4MSTerminvereinbarungProfile
Parent: MessageDefinition
Title: "Terminvereinbarung"
* ^url = $q4ms-terminvereinbarung-sd
* status = $publication-status#draft
* eventCoding from Q4MSTerminanfragekategorieVS (required)
* category = $message-significance-category#currency
* focus
  * code = $resource-type#Appointment
  * min = 1
* responseRequired = $messageheader-response-request#always
