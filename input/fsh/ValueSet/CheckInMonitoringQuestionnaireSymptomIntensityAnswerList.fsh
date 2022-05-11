Instance: CheckInMonitoringQuestionnaireSymptomIntensityVS
InstanceOf: ValueSet
Usage: #definition
Title: "Check-In Monitoring-Fragebogen Symptomstärke"
Description: "Check-In Monitoring Questionnaire Symptomstärke Answer List"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-cimqsi-answerlist-vs
* version = "1.0.0"
* name = "CIMQSIVS"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA6568-5
* compose.include.concept[=].display = "Not at all"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Überhaupt nicht"
* compose.include.concept[+].code = #LA28567-8
* compose.include.concept[=].display = "Mildly"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Schwach"
* compose.include.concept[+].code = #LA13939-6
* compose.include.concept[=].display = "Moderately"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Mäßig"
* compose.include.concept[+].code = #LA28568-6
* compose.include.concept[=].display = "Severely"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Stark"
* compose.include.concept[+].code = #LA13912-3
* compose.include.concept[=].display = "Unable to do"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Nicht imstande zu tun"