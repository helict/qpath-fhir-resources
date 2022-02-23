Instance: HamburgQualityOfLifeQuestionnaireInMSHealthRateVS
InstanceOf: ValueSet
Usage: #definition
Title: "HAQUAMS Health Rate"
Description: "Hamburg Quality of Life Questionnaire in Multiple Sclerosis (HAQUAMS) Health Rate ValueSet"
* language = $ietf-bcp-47#de-DE
* url = $q4ms-haquams-health-rate-answerlist-vs
* version = "1.0.0"
* name = "HAQUAMSHealthRate"
* status = $publication-status#active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA14778-7
* compose.include.concept[=].display = "Much better than usual"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Erheblich besser"
* compose.include.concept[+].code = #LA14777-9
* compose.include.concept[=].display = "Better than usual"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Deutlich besser"
* compose.include.concept[+].code = #LA14776-1
* compose.include.concept[=].display = "A little better than usual"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Besser"
* compose.include.concept[+].code = #LA14775-3
* compose.include.concept[=].display = "Neither better nor worse than usual"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Gleich"
* compose.include.concept[+].code = #LA14774-6
* compose.include.concept[=].display = "A little worse than usual"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Etwas schlechter"
* compose.include.concept[+].code = #LA14773-8
* compose.include.concept[=].display = "Worse than usual"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Deutlich schlechter"
* compose.include.concept[+].code = #LA14772-0
* compose.include.concept[=].display = "Much worse than usual"
* compose.include.concept[=].designation.language = $ietf-bcp-47#de-DE
* compose.include.concept[=].designation.value = "Massiv schlechter"
