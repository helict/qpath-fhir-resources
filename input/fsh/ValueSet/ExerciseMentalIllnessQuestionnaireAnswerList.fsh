Instance: ExerciseMentalIllnessQuestionnaireVS
InstanceOf: ValueSet
Usage: #definition
Title: "EMIQ"
Description: "The Exercise Mental Illness Questionnaire (EMIQ) ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-emiq-answerlist-vs
* version = "1.0.0"
* name = "EMIQ"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA6270-8
* compose.include.concept[=].display = "Never"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Niemals"
* compose.include.concept[+].code = #LA10082-8
* compose.include.concept[=].display = "Sometimes"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Manchmal"
* compose.include.concept[+].code = #LA14747-2
* compose.include.concept[=].display = "Usually"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Meistens"
* compose.include.concept[+].code = #LA9933-8
* compose.include.concept[=].display = "Always"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Immer"
