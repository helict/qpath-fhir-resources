Instance: PregnancyStatusVS
InstanceOf: ValueSet
Usage: #definition
Title: "Schwangerschaftsstatus"
Description: "Schwangerschaftsstatus Answer List"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-pregnancy-status-answerlist-vs
* version = "1.0.0"
* name = "PregnancyStatusVS"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[+].code = #LA15173-0
* compose.include.concept[=].display = "Pregnant"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Schwanger"
* compose.include.concept[+].code = #LA26683-5
* compose.include.concept[=].display = "Not pregnant"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Nicht schwanger"
* compose.include.concept[+].code = #LA4489-6
* compose.include.concept[=].display = "Unknown"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Nicht bekannt"
