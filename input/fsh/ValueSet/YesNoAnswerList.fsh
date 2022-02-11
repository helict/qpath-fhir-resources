Instance: YesNoVS
InstanceOf: ValueSet
Usage: #definition
Title: "Yes/No"
Description: "Yes/No ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-yesno-answerlist-vs
* version = "1.0.0"
* name = "Yes/No"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[+].code = #LA33-6
* compose.include.concept[=].display = "Yes"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Ja"
* compose.include.concept[+].code = #LA32-8
* compose.include.concept[=].display = "No"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Nein"
