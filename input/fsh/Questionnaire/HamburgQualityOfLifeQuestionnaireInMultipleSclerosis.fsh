Instance: HamburgQualityOfLifeQuestionnaireInMultipleSclerosis
InstanceOf: Questionnaire
Title: "HAQUAMS"
Description: "Hamburg Quality of Life Questionnaire in Multiple Sclerosis (HAQUAMS)"
Usage: #definition
* insert QuestionnaireMetadata
* url = $q4ms-haquams-questionnaire
* name = "HAQUAMS"
* title = "Hamburg Quality of Life Questionnaire in Multiple Sclerosis"
* item[+].linkId = "HAQUAMS.0"
* item[=].text = "Dieser Bogen enthält viele Beschwerden, die gar nicht bei Ihnen vorliegen müssen, möglicherweise auch nie vorliegen werden. Erschrecken Sie nicht, er soll helfen, die Auswirkungen der Studie besser zu verstehen. Bitte füllen Sie alles aus, danke!"
* item[=].type = $item-type#display

* item[+].linkId = "HAQUAMS.1"
* item[=].prefix = "1"
* item[=].text = "Im Vergleich zu der Situation vor 1 Jahr, wie würden Sie Ihre Gesundheitssituation beschreiben?"
* item[=].type = $item-type#choice
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSHealthRateVS)

* item[+].linkId = "HAQUAMS.2"
* item[=].prefix = "2"
* item[=].text = "Im Vergleich zur Lage vor 4 Wochen, wie würden Sie Ihre Gesundheitssituation beschreiben?"
* item[=].type = $item-type#choice
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSHealthRateVS)

// TODO: Check realization with professionals (severity levels, presentation)
* item[+].linkId = "HAQUAMS.3"
* item[=].prefix = "3"
* item[=].text = "Was sind Ihre Hauptbeschwerden? (Bitte markieren sie nur die drei wichtigsten: 1, 2, 3)"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].item[+].linkId = "HAQUAMS.3.1"
* item[=].item[=].text = "Gehen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.2"
* item[=].item[=].text = "Funktion von Armen und Händen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.3"
* item[=].item[=].text = "Kribbeln, Taubheitsgefühle"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.4"
* item[=].item[=].text = "Schmerzen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.5"
* item[=].item[=].text = "Blasenkontrolle"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.6"
* item[=].item[=].text = "Darmkontrolle"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.7"
* item[=].item[=].text = "Sehstörungen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.8"
* item[=].item[=].text = "Müdigkeit"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.9"
* item[=].item[=].text = "Denken und Merkfähigkeit"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.10"
* item[=].item[=].text = "Sprechen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.11"
* item[=].item[=].text = "Schlucken"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.12"
* item[=].item[=].text = "Schlechte Stimmung"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.13"
* item[=].item[=].text = "Sexualität"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintSeverityVS)
* item[=].item[=].initial.valueCoding = $loinc#LA4453-2
* item[=].item[+].linkId = "HAQUAMS.3.14"
* item[=].item[=].text = "Andere:"
* item[=].item[=].type = $item-type#string
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[+].linkId = "HAQUAMS.3.15"
* item[=].item[=].text = "Wie sehr beeinträchtigen Sie diese Beschwerden?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[+].linkId = "HAQUAMS.4"
* item[=].text = "Im Folgenden finden Sie eine Liste mit Beschwerden, die bei MS-Patienten eine Rolle spielen können. Bitte markieren Sie mit einer Einkringelung wie zutreffend jede Aussage in den (in den letzten 7 Tagen) war."
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "HAQUAMS.4.1"
* item[=].item[=].text = "Missempfindungen"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.1.1"
* item[=].item[=].item[=].prefix = "4"
* item[=].item[=].item[=].text = "Ich habe Schmerzen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.1.2"
* item[=].item[=].item[=].prefix = "5"
* item[=].item[=].item[=].text = "Kribbeln/Taubheitsgefühle beeinträchtigen mich."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[=].item[+].linkId = "HAQUAMS.4.2"
* item[=].item[=].text = "Müdigkeit"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.2.1"
* item[=].item[=].item[=].prefix = "6"
* item[=].item[=].item[=].text = "Ich muss mich tagsüber ausruhen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.2.2"
* item[=].item[=].item[=].prefix = "7"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten, etwas anzufangen oder zu Ende zu führen weil ich müde bin."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.2.3"
* item[=].item[=].item[=].prefix = "8"
* item[=].item[=].item[=].text = "Körperliche Betätigung führt zu einer deutlichen Zunahme meiner Müdigkeit."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.2.4"
* item[=].item[=].item[=].prefix = "9"
* item[=].item[=].item[=].text = "Ich bin auf Grund meiner Erschöpfung oft nicht in der Lage, klar zu denken."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[=].item[+].linkId = "HAQUAMS.4.3"
* item[=].item[=].text = "Denken"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.3.1"
* item[=].item[=].item[=].prefix = "10"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten, neue Dinge zu lernen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.3.2"
* item[=].item[=].item[=].prefix = "11"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten, mich zu erinnern."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.3.3"
* item[=].item[=].item[=].prefix = "12"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten, mich zu konzentrieren."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.3.4"
* item[=].item[=].item[=].prefix = "13"
* item[=].item[=].item[=].text = "Ich habe Probleme, mehrere Dinge gleichzeitig zu machen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[=].item[+].linkId = "HAQUAMS.4.4"
* item[=].item[=].text = "Sehen"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.4.1"
* item[=].item[=].item[=].prefix = "14"
* item[=].item[=].item[=].text = "Ich habe Probleme mit dem Lesen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.4.2"
* item[=].item[=].item[=].prefix = "15"
* item[=].item[=].item[=].text = "Ich habe Probleme mit der Orientierung oder dem Erkennen anderer Menschen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

// TODO Abbildung klaeren
* item[=].item[+].linkId = "HAQUAMS.4.5"
* item[=].item[=].text = "Gehen"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.5.1"
* item[=].item[=].item[=].prefix = "16a"
* item[=].item[=].item[=].text = "Ich kann gehen (an guten Tagen)"
* item[=].item[=].item[=].type = $item-type#group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[+].linkId = "HAQUAMS.4.5.1.1"
* item[=].item[=].item[=].item[=].text = "Gehhilfe:"
* item[=].item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSWalkingAidVS)
* item[=].item[=].item[=].item[+].linkId = "HAQUAMS.4.5.1.2"
* item[=].item[=].item[=].item[=].text = "Distanz:"
* item[=].item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].item[=].enableWhen.question = "HAQUAMS.4.5.1.1"
* item[=].item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = $q4ms-haquams-walking-aid-answerlist#HAQUAMS_WITHOUT_WALKING_AID
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSWalkingDistanceVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.5.2"
* item[=].item[=].item[=].prefix = "16b"
* item[=].item[=].item[=].text = "Ich konnte vor 1 Jahr gehen"
* item[=].item[=].item[=].type = $item-type#group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[+].linkId = "HAQUAMS.4.5.2.1"
* item[=].item[=].item[=].item[=].text = "Gehhilfe:"
* item[=].item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSWalkingAidVS)
* item[=].item[=].item[=].item[+].linkId = "HAQUAMS.4.5.2.2"
* item[=].item[=].item[=].item[=].text = "Distanz:"
* item[=].item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].item[=].enableWhen.question = "HAQUAMS.4.5.2.1"
* item[=].item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = $q4ms-haquams-walking-aid-answerlist#HAQUAMS_WITHOUT_WALKING_AID
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSWalkingDistanceVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.5.3"
* item[=].item[=].item[=].prefix = "16c"
* item[=].item[=].item[=].text = "Ich konnte vor 2 Jahren gehen"
* item[=].item[=].item[=].type = $item-type#group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[+].linkId = "HAQUAMS.4.5.3.1"
* item[=].item[=].item[=].item[=].text = "Gehhilfe:"
* item[=].item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSWalkingAidVS)
* item[=].item[=].item[=].item[+].linkId = "HAQUAMS.4.5.3.2"
* item[=].item[=].item[=].item[=].text = "Distanz:"
* item[=].item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].item[=].enableWhen.question = "HAQUAMS.4.5.3.1"
* item[=].item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding = $q4ms-haquams-walking-aid-answerlist#HAQUAMS_WITHOUT_WALKING_AID
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSWalkingDistanceVS)

* item[=].item[+].linkId = "HAQUAMS.4.6"
* item[=].item[=].text = "Beweglichkeit / untere Extremität"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.6.1"
* item[=].item[=].item[=].prefix = "17"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten, Sport zu treiben oder schnell zu laufen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.6.2"
* item[=].item[=].item[=].prefix = "18"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten Treppen zu steigen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.6.3"
* item[=].item[=].item[=].prefix = "19"
* item[=].item[=].item[=].text = "Ich habe Probleme beim Gehen innerhalb der Wohnung."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.6.4"
* item[=].item[=].item[=].prefix = "20"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten, sicher zu stehen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[=].item[+].linkId = "HAQUAMS.4.7"
* item[=].item[=].text = "Beweglichkeit / obere Extremität"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.7.1"
* item[=].item[=].item[=].prefix = "21"
* item[=].item[=].item[=].text = "Schreiben fällt mir schwer."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.7.2"
* item[=].item[=].item[=].prefix = "22"
* item[=].item[=].item[=].text = "Es fällt mir schwer, die Wohnung zu putzen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.7.3"
* item[=].item[=].item[=].prefix = "23"
* item[=].item[=].item[=].text = "Ich habe Probleme, mir eine Mahlzeit zu machen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.7.4"
* item[=].item[=].item[=].prefix = "24"
* item[=].item[=].item[=].text = "Ich habe Probleme beim Waschen und Anziehen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.7.5"
* item[=].item[=].item[=].prefix = "25"
* item[=].item[=].item[=].text = "Alleine zu essen fällt mir schwer."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[=].item[+].linkId = "HAQUAMS.4.8"
* item[=].item[=].text = "Blase / Darm"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.8.1"
* item[=].item[=].item[=].prefix = "26"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten, meine Blase zu kontrollieren."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.8.2"
* item[=].item[=].item[=].prefix = "27"
* item[=].item[=].item[=].text = "Ich habe unwillkürlichen Urinabgang."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.8.3"
* item[=].item[=].item[=].prefix = "28"
* item[=].item[=].item[=].text = "Ich habe Schwierigkeiten, meinen Stuhlgang zu kontrollieren."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[=].item[+].linkId = "HAQUAMS.4.9"
* item[=].item[=].text = "Kommunikation"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.9.1"
* item[=].item[=].item[=].prefix = "29"
* item[=].item[=].item[=].text = "Ich fühle mich von meinen Freunden innerlich entfernt."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.9.2"
* item[=].item[=].item[=].prefix = "30"
* item[=].item[=].item[=].text = "Ich erhalte Unterstützung von Freunden oder Nachbarn."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.9.3"
* item[=].item[=].item[=].prefix = "31"
* item[=].item[=].item[=].text = "Ich erhalte Unterstützung von meiner Familie."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.9.4"
* item[=].item[=].item[=].prefix = "32"
* item[=].item[=].item[=].text = "Es ist schwierig, in der Familie von meiner Krankheit zu sprechen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.9.5"
* item[=].item[=].item[=].prefix = "33"
* item[=].item[=].item[=].text = "Meine Krankheit beeinträchtigt den Kontakt zu anderen Menschen (Freunde, Verwandte, Familie)."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.9.6"
* item[=].item[=].item[=].prefix = "34"
* item[=].item[=].item[=].text = "Ich fühle mich ausgeschlossen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.9.7"
* item[=].item[=].item[=].prefix = "35"
* item[=].item[=].item[=].text = "Ich bin mit meinem Sexualleben zufrieden."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[=].item[+].linkId = "HAQUAMS.4.10"
* item[=].item[=].text = "Stimmung"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.10.1"
* item[=].item[=].item[=].prefix = "36"
* item[=].item[=].item[=].text = "Ich bin deprimiert über meinen Gesundheitszustand."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.10.2"
* item[=].item[=].item[=].prefix = "37"
* item[=].item[=].item[=].text = "Meine Krankheit macht mir Angst."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.10.3"
* item[=].item[=].item[=].prefix = "38"
* item[=].item[=].item[=].text = "Ich kann mein Leben genießen."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.10.4"
* item[=].item[=].item[=].prefix = "39"
* item[=].item[=].item[=].text = "Ich sehe einen Sinn in meinem Leben."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.10.5"
* item[=].item[=].item[=].prefix = "40"
* item[=].item[=].item[=].text = "Ich habe Lust, etwas zu tun."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.10.6"
* item[=].item[=].item[=].prefix = "41"
* item[=].item[=].item[=].text = "Haben Sie sich in den letzten 2 Wochen an den meisten Tagen und die meiste Zeit des Tages deprimiert oder bedrückt gefühlt?"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.10.7"
* item[=].item[=].item[=].prefix = "42"
* item[=].item[=].item[=].text = "Haben Sie in den letzten 2 Wochen kein Interesse gehabt, irgendetwas zu tun oder haben Sie keine Freude an Dingen gehabt, die Ihnen sonst Spaß gemacht haben?"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)

* item[=].item[+].linkId = "HAQUAMS.4.11"
* item[=].item[=].text = "Gesamtbild"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].item[+].linkId = "HAQUAMS.4.11.1"
* item[=].item[=].item[=].prefix = "43"
* item[=].item[=].item[=].text = "Ich bin derzeit mit meiner Lebensqualität zufrieden."
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
* item[=].item[=].item[+].linkId = "HAQUAMS.4.11.2"
* item[=].item[=].item[=].prefix = "44"
* item[=].item[=].item[=].text = "Wie massiv beeinflusst die MS insgesamt Ihre Fähigkeit ein normales Leben zu führen?"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(HamburgQualityOfLifeQuestionnaireInMSComplaintsVS)
