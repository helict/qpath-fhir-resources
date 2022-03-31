Profile: Q4MSPatientDokumenteBereitstellenProfile
Parent: Task
Id: Q4MSPatientDokumenteBereitstellenProfile
Title: "Dokumente bereitstellen"
Description: "Profil einer Aufgabe zur Bereitstellung von Dokumenten zum nächsten Arztbesuch eines Patienten"
* ^url = $q4ms-patient-dokumente-bereitstellen-sd
* partOf only Reference(Q4MSPatientCheckInProfile)
* for only Reference(Patient)
* for 1..1 MS
* note MS
* restriction.period 1..1 MS
* input 0..* MS
  * type from Q4MSDokumentartenVS (required)
* output 0..* MS
  * type from Q4MSDokumentartenVS (required)
  * value[x] only Reference(Q4MSDokumentProfile)