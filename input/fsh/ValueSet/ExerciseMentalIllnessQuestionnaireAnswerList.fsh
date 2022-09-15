Instance: ExerciseMentalIllnessQuestionnaireVS
InstanceOf: ValueSet
Usage: #definition
Title: "EMIQVS"
Description: "The Exercise Mental Illness Questionnaire (EMIQ) ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-emiq-answerlist-vs
* version = "1.0.0"
* name = "EMIQVS"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA6297-1
* compose.include.concept[=].display = "Never"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Niemals"
* compose.include.concept[=].extension[$extension-ordinal-value].valueDecimal = 0
* compose.include.concept[+].code = #LA14733-2
* compose.include.concept[=].display = "Sometimes"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Manchmal"
* compose.include.concept[=].extension[$extension-ordinal-value].valueDecimal = 1
* compose.include.concept[+].code = #LA14734-0
* compose.include.concept[=].display = "Usually"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Meistens"
* compose.include.concept[=].extension[$extension-ordinal-value].valueDecimal = 2
* compose.include.concept[+].code = #LA6154-4
* compose.include.concept[=].display = "Always"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Immer"
* compose.include.concept[=].extension[$extension-ordinal-value].valueDecimal = 3
