Profile: Q4MSDokumentenanfrageProfile
Parent: MessageDefinition
Title: "Dokumentenanfrage"
Description: "Profile einer Dokumentenanfrage"
* ^url = $q4ms-dokumentenanfrage-sd
* status = $publication-status#draft
* parent = Canonical(Q4MSDokumenteAnfragenAD)
* eventCoding from Q4MSNachrichtenereignisseVS (required)
* category = $message-significance-category#consequence
* focus.code = $resource-type#Task
* focus.min = 1
* focus.max = "1"
