Instance: HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS
InstanceOf: ValueSet
Usage: #definition
Title: "HAQUAMS Complaint Severity"
Description: "Hamburg Quality of Life Questionnaire in Multiple Sclerosis (HAQUAMS) Complaint Severity ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-haquams-complaint-severity-answerlist-vs
* version = "1.0.0"
* name = "HAQUAMS Complaint Severity"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[+].code = #LA29474-6
* compose.include.concept[=].display = "High severity"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Hoher Schweregrad (1)"
* compose.include.concept[+].code = #LA29473-8
* compose.include.concept[=].display = "Moderate severity"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Mittlerer Schweregrad (2)"
* compose.include.concept[+].code = #LA29472-0
* compose.include.concept[=].display = "Low severity"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Geringe Schweregrad (3)"
* compose.include.concept[+].code = #LA4453-2
* compose.include.concept[=].display = "Unknown, not specified"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Unbekannt, nicht angegeben"
