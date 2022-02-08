Instance: PatientHealthQuestionnaireVS
InstanceOf: ValueSet
Usage: #definition
Title: "PHQ"
Description: "Patient Health Questionnaire (PHQ) ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-phq-answerlist-vs
* version = "1.0.0"
* name = "PHQ"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA6568-5
* compose.include.concept[=].display = "Not at all"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Überhaupt nicht"
* compose.include.concept[+].code = #LA6569-3
* compose.include.concept[=].display = "Serveral days"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "An einzelnen Tagen"
* compose.include.concept[+].code = #LA6570-1
* compose.include.concept[=].display = "More than half the days"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "An mehr als der Hälfte der Tage"
* compose.include.concept[+].code = #LA6571-9
* compose.include.concept[=].display = "Nearly every day"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Beinahe jeden Tag"
