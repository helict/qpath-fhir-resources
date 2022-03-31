Profile: Q4MSPatientCheckInProfile
Parent: Task
Id: Q4MSPatientCheckInProfile
Title: "Check-In eines Patienten"
Description: "Profil zum Check-In eines Patienten zum nächsten Arztbesuch"
* ^url = $q4ms-patient-check-in-sd
* instantiatesCanonical = Canonical(Q4MSCheckInAD)
* basedOn only Reference(CarePlan)
* description 1..1 MS
* for only Reference(Patient)
* for 1..1 MS
* restriction.period 1..1 MS
* input 0..1 MS
  * type.text = "Nächster Besuchstermin"
  * value[x] only Reference(Appointment)