Instance: Q4MSTerminanfrage
InstanceOf: Q4MSTerminvereinbarungProfile
Usage: #definition
Title: "Terminanfrage"
Description: "Profile einer Terminanfrage"
* url = $q4ms-terminanfrage-md
* name = "Q4MSTerminanfrage"
* status = $publication-status#draft
* date = "2021-12-21"
* parent = Canonical(Q4MSTerminvereinbarungAD)
* eventCoding = $q4ms-terminanfragekategorie#booking
* focus.max = "1"
* responseRequired = $messageheader-response-request#always
