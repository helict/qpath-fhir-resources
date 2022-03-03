Instance: PatientHealthQuestionnaire
InstanceOf: Questionnaire
Title: "PHQ-9"
Description: "Patient Health Questionnaire (PHQ-9)"
Usage: #definition
* insert QuestionnaireMetadata
* url = $q4ms-phq-questionnaire
* name = "PHQ9"
* title = "Patient Health Questionnaire"
* code = $loinc#44249-1
* item[+].linkId = "PHQ-9"
* item[=].text = "Wie oft fühlten Sie sich im Verlauf der letzten 2 Wochen durch die folgenden Beschwerden beeinträchtigt?"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].item[+].linkId = "PHQ-9.1"
* item[=].item[=].code = $loinc#44250-9
* item[=].item[=].prefix = "1"
* item[=].item[=].text = "Wenig Interesse oder Freude an Ihren Tätigkeiten"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
* item[=].item[+].linkId = "PHQ-9.2"
* item[=].item[=].code = $loinc#44255-8
* item[=].item[=].prefix = "2"
* item[=].item[=].text = "Niedergeschlagenheit, Schwermut oder Hoffnungslosigkeit"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
* item[=].item[+].linkId = "PHQ-9.3"
* item[=].item[=].code = $loinc#44259-0
* item[=].item[=].prefix = "3"
* item[=].item[=].text = "Schwierigkeiten ein- oder durchzuschlafen oder vermehrter Schlaf"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
* item[=].item[+].linkId = "PHQ-9.4"
* item[=].item[=].code = $loinc#44254-1
* item[=].item[=].prefix = "4"
* item[=].item[=].text = "Müdigkeit oder Gefühl, keine Energie zu haben"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
* item[=].item[+].linkId = "PHQ-9.5"
* item[=].item[=].code = $loinc#44251-7
* item[=].item[=].prefix = "5"
* item[=].item[=].text = "Verminderter Appetit oder übermäßiges Bedürfnis zu essen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
* item[=].item[+].linkId = "PHQ-9.6"
* item[=].item[=].code = $loinc#44258-2
* item[=].item[=].prefix = "6"
* item[=].item[=].text = "Schlechte Meinung von sich selbst; Gefühl, ein Versager zu sein oder die Familie enttäuscht zu haben"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
* item[=].item[+].linkId = "PHQ-9.7"
* item[=].item[=].code = $loinc#44252-5
* item[=].item[=].prefix = "7"
* item[=].item[=].text = "Schwierigkeiten, sich auf etwas zu konzentrieren, z.B. beim Zeitunglesen oder Fernsehen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
* item[=].item[+].linkId = "PHQ-9.8"
* item[=].item[=].code = $loinc#44253-3
* item[=].item[=].prefix = "8"
* item[=].item[=].text = "Waren Ihre Bewegungen oder Ihre Sprache so verlangsamt, dass es auch anderen auffallen würde? Oder waren Sie im Gegenteil „zappelig“ oder ruhelos und hatten dadurch einen stärkeren Bewegungsdrang als sonst?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
* item[=].item[+].linkId = "PHQ-9.9"
* item[=].item[=].code = $loinc#44260-8
* item[=].item[=].prefix = "9"
* item[=].item[=].text = "Gedanken, dass Sie lieber tot wären oder sich Leid zufügen möchten"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PatientHealthQuestionnaireVS)
