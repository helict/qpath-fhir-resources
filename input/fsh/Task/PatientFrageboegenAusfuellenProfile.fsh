Profile: Q4MSPatientFrageboegenAusfuellenProfile
Parent: Task
Id: Q4MSPatientFrageboegenAusfuellenProfile
Title: "Fragebögen ausfüllen"
Description: "Profil einer Aufgabe zum Ausfüllen von Fragebögen zum nächsten Arztbesuch eines Patienten"
* ^url = $q4ms-patient-frageboegen-ausfuellen-sd
* partOf only Reference(Q4MSPatientCheckInProfile)
* for only Reference(Q4MSPatientProfile or Q4MSPatientPseudonymProfile)
* for 1..1 MS
* restriction.period 1..1 MS
* input 1..* MS
  * type.coding = $q4ms-dokumentarten#questionnaire
  * value[x] only Reference(Questionnaire)
* output 0..* MS
  * value[x] only Reference(QuestionnaireResponse)