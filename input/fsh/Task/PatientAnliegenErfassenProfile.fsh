Profile: Q4MSPatientAnliegenErfassenProfile
Parent: Task
Id: Q4MSPatientAnliegenErfassenProfile
Title: "Anliegen erfassen"
Description: "Profil einer Aufgabe zur Erfassung von Anliegen eines Patienten zur Diskussion beim nächsten Arztbesuch"
* ^url = $q4ms-patient-anliegen-erfassen-sd
* partOf only Reference(Q4MSPatientCheckInProfile)
* for only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* for 1..1 MS
* note MS
* restriction.period 1..1 MS
* output 0..1 MS
  * type.text = "Meine Anliegen"
  * value[x] only Reference(Q4MSPatientAnliegenListeProfile)