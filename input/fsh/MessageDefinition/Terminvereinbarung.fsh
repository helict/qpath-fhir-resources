Profile: Q4MSTerminvereinbarungProfile
Parent: MessageDefinition
Title: "Terminvereinbarung"
Description: "Profile einer Terminvereinbarung"
* ^url = $q4ms-terminvereinbarung-sd
* status = $publication-status#draft
* eventCoding from Q4MSTerminanfragekategorieVS (required)
* category = $message-significance-category#currency
* focus.code = $resource-type#Appointment
* focus.min = 1
