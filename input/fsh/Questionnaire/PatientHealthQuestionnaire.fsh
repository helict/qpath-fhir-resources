RuleSet: PatientHealthQuestionnaireCommonItemParts
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(LL358-3)
* item[=].item[=].extension[$extension-questionnaire-choice-orientation].valueCode = #horizontal
* item[=].item[=].extension[$extension-questionnaire-item-control].valueCodeableConcept = $questionnaire-item-control#radio-button

Instance: PatientHealthQuestionnaire
InstanceOf: Questionnaire
Title: "PHQ-9"
Description: "Patient Health Questionnaire (PHQ-9)"
Usage: #definition
* insert QuestionnaireMetadataActive
* url = $q4ms-phq-questionnaire
* name = "PHQ9"
* title = "Patient Health Questionnaire (PHQ-9)"
* description = "Gesundheitsfragebogen für Patienten zur Depressivität"
* code = $loinc#44249-1
* item[+].linkId = "PHQ9"
* item[=].text = "Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "PHQ9.1"
* item[=].item[=].code = $loinc#44250-9
* item[=].item[=].prefix = "1"
* item[=].item[=].text = "Wenig Interesse oder Freude an Ihren Tätigkeiten"
* insert PatientHealthQuestionnaireCommonItemParts

* item[=].item[+].linkId = "PHQ9.2"
* item[=].item[=].code = $loinc#44255-8
* item[=].item[=].prefix = "2"
* item[=].item[=].text = "Niedergeschlagenheit, Schwermut oder Hoffnungslosigkeit"
* insert PatientHealthQuestionnaireCommonItemParts

* item[=].item[+].linkId = "PHQ9.3"
* item[=].item[=].code = $loinc#44259-0
* item[=].item[=].prefix = "3"
* item[=].item[=].text = "Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf"
* insert PatientHealthQuestionnaireCommonItemParts

* item[=].item[+].linkId = "PHQ9.4"
* item[=].item[=].code = $loinc#44254-1
* item[=].item[=].prefix = "4"
* item[=].item[=].text = "Müdigkeit oder Gefühl, keine Energie zu haben"
* insert PatientHealthQuestionnaireCommonItemParts

* item[=].item[+].linkId = "PHQ9.5"
* item[=].item[=].code = $loinc#44251-7
* item[=].item[=].prefix = "5"
* item[=].item[=].text = "Verminderter Appetit oder übermäßiges Bedürfnis zu essen"
* insert PatientHealthQuestionnaireCommonItemParts

* item[=].item[+].linkId = "PHQ9.6"
* item[=].item[=].code = $loinc#44258-2
* item[=].item[=].prefix = "6"
* item[=].item[=].text = "Schlechte Meinung von sich selbst; Gefühl, ein Versager zu sein oder die Familie enttäuscht zu haben"
* insert PatientHealthQuestionnaireCommonItemParts

* item[=].item[+].linkId = "PHQ9.7"
* item[=].item[=].code = $loinc#44252-5
* item[=].item[=].prefix = "7"
* item[=].item[=].text = "Schwierigkeiten, sich auf etwas zu konzentrieren, z.B. beim Zeitunglesen oder Fernsehen"
* insert PatientHealthQuestionnaireCommonItemParts

* item[=].item[+].linkId = "PHQ9.8"
* item[=].item[=].code = $loinc#44253-3
* item[=].item[=].prefix = "8"
* item[=].item[=].text = "Waren Ihre Bewegungen oder Ihre Sprache so verlangsamt, dass es auch anderen auffallen würde? Oder waren Sie im Gegenteil „zappelig“ oder ruhelos und hatten dadurch einen stärkeren Bewegungsdrang als sonst?"
* insert PatientHealthQuestionnaireCommonItemParts

* item[=].item[+].linkId = "PHQ9.9"
* item[=].item[=].code = $loinc#44260-8
* item[=].item[=].prefix = "9"
* item[=].item[=].text = "Gedanken, dass Sie lieber tot wären oder sich Leid zufügen möchten"
* insert PatientHealthQuestionnaireCommonItemParts

* item[+].linkId = "PHQ9.Score"
* item[=].code = $loinc#44261-6
* item[=].text = "Gesamtwertung"
* item[=].type = $item-type#quantity
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].extension[+].url = $extension-calculated-expression
* item[=].extension[=].valueExpression.description = "Score von 0 (keine Depression) bis 27 (schwere Depression)"
* item[=].extension[=].valueExpression.name = "Score"
* item[=].extension[=].valueExpression.language = $expression-language#text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.repeat(item).where(linkId='PHQ9').item.answer.extension.where(url.contains('ordinalValue')).valueDecimal.sum()"
* item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].extension[=].valueBoolean = true
* item[=].extension[+].url = $extension-questionnaire-unit
* item[=].extension[=].valueCoding = $ucum#{score}

* item[+].linkId = "PHQ.10"
* item[=].code = $loinc#69722-7
* item[=].text = "Wenn eines oder mehrere dieser Probleme bei Ihnen vorliegen, geben Sie bitte an, wie sehr diese Probleme es Ihnen erschwert haben, Ihre Arbeit zu erledigen, Ihren Haushalt zu regeln oder mit anderen Menschen zurecht zu kommen:"
* item[=].type = $item-type#choice
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerValueSet = Canonical(LL359-1)
* item[=].extension[+].url = $extension-questionnaire-choice-orientation
* item[=].extension[=].valueCode = #horizontal
* item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button