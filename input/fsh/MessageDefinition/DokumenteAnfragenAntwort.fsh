Instance: Q4MSDokumenteAnfragenAntwortMD
InstanceOf: Q4MSDokumentenanfrageProfile
Usage: #definition
Title: "Dokumente anfragen Antwort MessageDefinition"
Description: "Definition einer Antwortnachricht zur Anfrage von Dokumenten"
* url = $q4ms-dokumente-anfragen-antwort-md
* name = "Q4MSDokumenteAnfragenAntwortMD"
* status = $publication-status#draft
* date = "2022-03-03T10:00:00+01:00"
* eventCoding = $q4ms-nachrichtenereignisse#document-request
* focus.code = $resource-type#Task
* focus.min = 1
* focus.max = "1"
