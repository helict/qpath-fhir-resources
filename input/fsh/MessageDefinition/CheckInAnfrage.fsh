Instance: Q4MSCheckInAnfrageMD
InstanceOf: Q4MSCheckInNachrichtProfile
Usage: #definition
Title: "Check-In-Anfrage"
Description: "Definition einer Check-In-Anfrage"
* url = $q4ms-check-in-anfrage-md
* name = "Q4MSCheckInAnfrageMD"
* status = $publication-status#draft
* date = "2022-03-31T09:00:00Z"
* eventCoding = $q4ms-nachrichtenereignisse#check-in-request
* focus.code = $resource-type#Task
* focus.min = 1
* focus.max = "1"
* allowedResponse.message = Canonical(Q4MSCheckInAntwortMD)
