Instance: Q4MSTerminanfrage
InstanceOf: Q4MSTerminvereinbarungProfile
Usage: #definition
Title: "Terminanfrage MessageDefinition"
* status = #draft
* date = "2021-12-21"
* parent = Canonical(Q4MSTerminvereinbarungActivity)
* eventCoding = $q4ms-terminanfragekategorie#booking
* focus
  * code = #Appointment
  * min = 1