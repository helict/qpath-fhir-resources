Instance: TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS
InstanceOf: ValueSet
Usage: #definition
Title: "MSWS-12"
Description: "Twelve Item MS Walking Scale Questionnaire (MSWS-12) ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-msws-answerlist-vs
* version = "1.0.0"
* name = "MSWS-12"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA6568-5
* compose.include.concept[=].display = "Not at all"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Gar nicht"
* compose.include.concept[+].code = #LA13863-8
* compose.include.concept[=].display = "A little bit"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Ein wenig"
* compose.include.concept[+].code = #LA13939-6
* compose.include.concept[=].display = "Moderately"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Mäßig"
* compose.include.concept[+].code = #LA13902-4
* compose.include.concept[=].display = "Quite a bit"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Ziemlich stark"
* compose.include.concept[+].code = #LA14868-6
* compose.include.concept[=].display = "Extremely"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Extrem"
