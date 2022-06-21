Profile: Q4MSPatientMedikationAktualisierenProfile
Parent: Task
Id: Q4MSPatientMedikationAktualisierenProfile
Title: "Medikation aktualisieren"
Description: "Profil einer Aufgabe zur Aktualisierung der aktuellen Medikation eines Patienten zum nächsten Arztbesuch"
* ^url = $q4ms-patient-medikation-aktualisieren-sd
* partOf only Reference(Q4MSPatientCheckInProfile)
* for only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* for 1..1 MS
* note MS
* restriction.period 1..1 MS
* output 0..1 MS
  * type.text = "Meine Medikation"
  * value[x] only Reference(Q4MSPatientMedikationListeProfile)