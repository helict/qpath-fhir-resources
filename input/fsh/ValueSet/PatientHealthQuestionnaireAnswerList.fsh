Instance: LL358-3
InstanceOf: ValueSet
Usage: #definition
Title: "PHQ"
Description: "Patient Health Questionnaire (PHQ-9), deutsche Übersetzung"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-loinc-ll358-3-vs
* version = "Loinc_2.72"
* name = "PHQ"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA6568-5
* compose.include.concept[=].display = "Not at all"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Überhaupt nicht"
* compose.include.concept[=].extension[$extension-ordinal-value].valueDecimal = 0
* compose.include.concept[+].code = #LA6569-3
* compose.include.concept[=].display = "Serveral days"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "An einzelnen Tagen"
* compose.include.concept[=].extension[$extension-ordinal-value].valueDecimal = 1
* compose.include.concept[+].code = #LA6570-1
* compose.include.concept[=].display = "More than half the days"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "An mehr als der Hälfte der Tage"
* compose.include.concept[=].extension[$extension-ordinal-value].valueDecimal = 2
* compose.include.concept[+].code = #LA6571-9
* compose.include.concept[=].display = "Nearly every day"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Beinahe jeden Tag"
* compose.include.concept[=].extension[$extension-ordinal-value].valueDecimal = 3

Instance: LL359-1
InstanceOf: ValueSet
Usage: #definition
Title: "PHQ.10"
Description: "Wahrgenommene Schwierigkeiten (PHQ-9), deutsche Übersetzung"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-loinc-ll359-1-vs
* version = "Loinc_2.72"
* name = "PHQ.10"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA6572-7
* compose.include.concept[=].display = "Not difficult at all"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Überhaupt nicht erschwert"
* compose.include.concept[+].code = #LA6573-5
* compose.include.concept[=].display = "Somewhat difficult"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Etwas erschwert"
* compose.include.concept[+].code = #LA6575-0
* compose.include.concept[=].display = "Very difficult"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Relativ stark erschwert"
* compose.include.concept[+].code = #LA6574-3
* compose.include.concept[=].display = "Extremely difficult"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Sehr stark erschwert"
