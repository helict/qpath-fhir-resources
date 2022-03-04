Instance: Q4MSDokumenteAnfragenMD
InstanceOf: Q4MSDokumentenanfrageProfile
Usage: #definition
Title: "Dokumente anfragen MessageDefinition"
Description: "Definition einer Nachricht zur Anfrage von Dokumenten"
* url = $q4ms-dokumente-anfragen-md
* name = "Q4MSDokumenteAnfragenMD"
* status = $publication-status#draft
* date = "2022-03-03T10:00:00+01:00"
* eventCoding = $q4ms-nachrichtenereignisse#document-request
* focus.code = $resource-type#Task
* focus.min = 1
* focus.max = "1"
* allowedResponse.message = Canonical(Q4MSDokumenteAnfragenAntwortMD)
