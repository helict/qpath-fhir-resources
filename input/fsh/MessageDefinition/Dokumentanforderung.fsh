Profile: Q4MSDokumentanforderungProfile
Parent: MessageDefinition
Title: "Dokumentanforderung"
Description: "Profile einer Dokumentanforderung"
* ^url = $q4ms-dokumentanforderung-sd
* status = $publication-status#draft
* eventCoding from Q4MSDokumentanforderungkategorieVS (required)
* category = $message-significance-category#consequence
* focus.code = $resource-type#Task
* focus.min = 1
