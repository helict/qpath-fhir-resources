Profile: Q4MSPatientMedikationListeProfile
Parent: List
Id: Q4MSPatientMedikationListeProfile
Title: "Liste der aktuellen Medikation"
Description: "Profil einer Liste der aktuellen Medikation eines Patienten zur Vorlage beim nächsten Arztbesuch"
* ^url = $q4ms-patient-medikation-liste-sd
* status = $list-status#current
* mode = $list-mode#snapshot
* code = $list-example-use-codes#medications
* subject only Reference(Patient)
* source only Reference(Patient)
* entry 0..* MS
  * item only Reference(Q4MSMedicationStatementProfile)