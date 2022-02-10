Instance: HamburgQualityOfLifeQuestionnaireInMSComplaintsVS
InstanceOf: ValueSet
Usage: #definition
Title: "HAQUAMS Complaints"
Description: "Hamburg Quality of Life Questionnaire in Multiple Sclerosis (HAQUAMS) Complaints ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-haquams-complaints-answerlist-vs
* version = "1.0.0"
* name = "HAQUAMS Complaints"
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
* compose.include.concept[+].code = #LA13909-9
* compose.include.concept[=].display = "Somewhat"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Mäßig"
* compose.include.concept[+].code = #LA13902-4
* compose.include.concept[=].display = "Quite a bit"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Ziemlich"
* compose.include.concept[+].code = #LA13914-9
* compose.include.concept[=].display = "Very much"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Sehr"
