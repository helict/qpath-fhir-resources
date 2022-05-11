Instance: CheckInMonitoringQuestionnaireSymptomDevelopmentVS
InstanceOf: ValueSet
Usage: #definition
Title: "Check-In Monitoring-Fragebogen Symptomentwicklung"
Description: "Check-In Monitoring Questionnaire Symptomentwicklung Answer List"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-cimqsd-answerlist-vs
* version = "1.0.0"
* name = "CIMQSDVS"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA65-8
* compose.include.concept[=].display = "Improved"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Hat sich gebessert"
* compose.include.concept[+].code = #LA17181-1
* compose.include.concept[=].display = "Unchanged"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Ist gleich geblieben"
* compose.include.concept[+].code = #LA11011-6
* compose.include.concept[=].display = "Worse"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Hat sich verschlechtert"