Instance: ModifiedFatigueImpactScaleQuestionnaireVS
InstanceOf: ValueSet
Usage: #definition
Title: "MFIS"
Description: "Modified Fatigue Impact Scale Questionnaire (MFIS) ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-mfis-answerlist-vs
* version = "1.0.0"
* name = "MFIS"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA6270-8
* compose.include.concept[=].display = "Never"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Nie"
* compose.include.concept[+].code = #LA10066-1
* compose.include.concept[=].display = "Rarely"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Selten"
* compose.include.concept[+].code = #LA10082-8
* compose.include.concept[=].display = "Sometimes"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Manchmal"
* compose.include.concept[+].code = #LA10044-8
* compose.include.concept[=].display = "Often"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Oft"
* compose.include.concept[+].code = #LA13865-3
* compose.include.concept[=].display = "Almost always"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Sehr oft"
