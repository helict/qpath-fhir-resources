Profile: Q4MSPatientCheckInProfile
Parent: Task
Id: Q4MSPatientCheckInProfile
Title: "Check-In eines Patienten"
Description: "Profil zum Check-In eines Patienten zum nächsten Arztbesuch"
* ^url = $q4ms-patient-check-in-sd
* instantiatesCanonical = Canonical(Q4MSCheckInAD)
* basedOn only Reference(CarePlan)
* description 1..1 MS
* for only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* for 1..1 MS
* executionPeriod MS // IST
* restriction.period 0..1 MS // SOLL (0..1, da bei apply noch leer, wird erst bei schedule gesetzt)
* input 0..1 MS
  * type.text = "Besuchstermin"
  * value[x] only Reference(Appointment)