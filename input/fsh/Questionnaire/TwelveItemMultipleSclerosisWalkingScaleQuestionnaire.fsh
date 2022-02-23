Instance: TwelveItemMultipleSclerosisWalkingScaleQuestionnaire
InstanceOf: Questionnaire
Title: "MSWS-12"
Description: "Twelve Item MS Walking Scale (MSWS-12) Questionnaire"
Usage: #definition
* language = $ietf-bcp-47#de-DE
* url = $q4ms-msws-questionnaire
* version = "1.0.0"
* name = "MSWS12"
* title = "Twelve Item MS Walking Scale Questionnaire"
* status = $publication-status#draft
* experimental = true
* subjectType = $resource-type#Patient
* item[+].linkId = "MSWS-12.0"
* item[=].text = "Wenn sie überhaupt nicht gehen können, kreuzen Sie bitte dieses Kästchen an"
* item[=].type = $item-type#boolean
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[+].linkId = "MSWS-12.1"
* item[=].text = "In welchem Umfang hat Ihre MS–Erkrankung in den vergangenen 2 Wochen..."
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].item[+].linkId = "MSWS-12.1.1"
* item[=].item[=].prefix = "1"
* item[=].item[=].text = "... Ihre Gehfähigkeit eingeschränkt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.2"
* item[=].item[=].prefix = "2"
* item[=].item[=].text = "... Ihre Fähigkeit zu laufen (rennen) eingeschränkt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.3"
* item[=].item[=].prefix = "3"
* item[=].item[=].text = "... Ihre Fähigkeit, Treppen auf- und abzusteigen, eingeschränkt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.4"
* item[=].item[=].prefix = "4"
* item[=].item[=].text = "... das Stehen bei der Ausführung beliebiger Tätigkeiten erschwert?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.5"
* item[=].item[=].prefix = "5"
* item[=].item[=].text = "... Ihr Gleichgewicht beim Stehen oder Gehen beeinträchtigt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.6"
* item[=].item[=].prefix = "6"
* item[=].item[=].text = "... die Distanz, die Sie gehend zurücklegen können, beeinträchtigt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.7"
* item[=].item[=].prefix = "7"
* item[=].item[=].text = "... dazu geführt, dass das Gehen anstrengender war?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.8"
* item[=].item[=].prefix = "8"
* item[=].item[=].text = "... es erforderlich gemacht, dass Sie sich beim Gehen innerhalb von Gebäuden abstützen mussten (z.B. an Möbeln, einem Gehstock, usw.)"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.9"
* item[=].item[=].prefix = "9"
* item[=].item[=].text = "... es erforderlich gemacht, dass Sie sich beim Gehen im Freien abstützen mussten (z.B. Gehstock, Gehwagen, usw.)"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.10"
* item[=].item[=].prefix = "10"
* item[=].item[=].text = "... Ihre Gehgeschwindigkeit verlangsamt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.11"
* item[=].item[=].prefix = "11"
* item[=].item[=].text = "... Auswirkungen auf Ihre Fähigkeit, problemlos zu gehen, gehabt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
* item[=].item[+].linkId = "MSWS-12.1.12"
* item[=].item[=].prefix = "12"
* item[=].item[=].text = "... zur Folge gehabt, dass Sie sich beim Gehen konzentrieren mussten?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TwelveItemMultipleSclerosisWalkingScaleQuestionnaireVS)
