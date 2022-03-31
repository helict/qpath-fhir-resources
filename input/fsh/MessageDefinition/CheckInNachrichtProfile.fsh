Profile: Q4MSCheckInNachrichtProfile
Parent: MessageDefinition
Title: "Check-In-Nachricht"
Description: "Profile einer Check-In-Nachricht"
* ^url = $q4ms-check-in-nachricht-sd
* status = $publication-status#draft
* parent = Canonical(Q4MSCheckInAD)
* eventCoding from Q4MSNachrichtenereignisseVS (required)
* category = $message-significance-category#consequence
* focus.code = $resource-type#Task
* focus.min = 1
* focus.max = "1"
