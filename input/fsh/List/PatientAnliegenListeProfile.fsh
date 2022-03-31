Profile: Q4MSPatientAnliegenListeProfile
Parent: List
Id: Q4MSPatientAnliegenListeProfile
Title: "Liste von Anliegen"
Description: "Profil einer Liste von Anliegen eines Patienten zur Diskussion beim nächsten Arztbesuch"
* ^url = $q4ms-patient-anliegen-liste-sd
* status = $list-status#current
* mode = $list-mode#snapshot
* code = $list-example-use-codes#problems
* subject only Reference(Patient)
* source only Reference(Patient)
* entry 0..* MS
  * item only Reference(Q4MSPatientAnliegenEintragProfile)