Profile: Q4MSPatientAnliegenEintragProfile
Parent: Observation
Id: Q4MSPatientAnliegenEintragProfile
Title: "Anliegen eines Patienten"
Description: "Profil eines Eintrags in der Liste von Anliegen eines Patienten zur Diskussion beim nächsten Arztbesuch"
* ^url = $q4ms-patient-anliegen-eintrag-sd
* status = $observation-status#preliminary
* category = $observation-category#social-history
* code = $loinc#75310-3 "Gesundheitliche Bedenken"
* subject only Reference(Patient)
* effective[x] only dateTime or Period
* performer only Reference(Patient)
* value[x] only string