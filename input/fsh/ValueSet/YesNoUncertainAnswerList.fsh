Instance: YesNoUncertainVS
InstanceOf: ValueSet
Usage: #definition
Title: "Ja/Nein/Unsicher"
Description: "Ja/Nein/Unsicher Answer List"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-yesnouncertain-answerlist-vs
* version = "1.0.0"
* name = "YesNoUncertainVS"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA33-6
* compose.include.concept[=].display = "Yes"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Ja"
* compose.include.concept[+].code = #LA32-8
* compose.include.concept[=].display = "No"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Nein"
* compose.include.concept[+].code = #LA12719-3
* compose.include.concept[=].display = "Uncertain"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Ich bin unsicher und möchte mit meinem Arzt darüber sprechen."