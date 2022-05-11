Instance: CheckInMonitoringQuestionnaire
InstanceOf: Questionnaire
Title: "CIMQ"
Description: "Check-In Monitoring-Fragebogen (CIMQ)"
Usage: #definition
* insert QuestionnaireMetadata
* url = $q4ms-cimq-questionnaire
* name = "CIMQ"
* title = "Check-In Monitoring-Fragebogen"
* description = "Fragebogen zum Check-In beim Besuch nach Basismonitoringschema"

* item[+].linkId = "CIMQ-1"
* item[=].prefix = "1"
* item[=].text = "Krankheitsaktivität"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "CIMQ-1.1"
* item[=].item[=].text = "Hatten Sie seit Ihrem letzten Besuch einen Schub?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoUncertainVS)
* item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.2"
* item[=].item[=].text = "Hatten Sie seit Ihrem letzten Besuch oder haben Sie derzeit Symptome?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].enableWhen.question = "CIMQ-1.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA12719-3
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3"
* item[=].item[=].text = "Welche Symptome hatten oder haben Sie? Bitte markieren Sie die entsprechenden Symptome und schätzen Sie ein, ob sich diese seit Ihrem letzten Besuch gebessert oder verschlechtert haben oder aber gleich geblieben sind."
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "CIMQ-1.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[+].linkId = "CIMQ-1.3.1"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.1.1"
* item[=].item[=].item[=].text = "Probleme mit dem Sehen"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.1.2"
* item[=].item[=].item[=].text = "Probleme mit dem Sehen (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.1.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.2"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.2.1"
* item[=].item[=].item[=].text = "Muskelschwäche oder Muskelkrämpfe"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.2.2"
* item[=].item[=].item[=].text = "Muskelschwäche oder Muskelkrämpfe (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.2.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.3"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.3.1"
* item[=].item[=].item[=].text = "Probleme mit Koordination und Gleichgewicht"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.3.2"
* item[=].item[=].item[=].text = "Probleme mit Koordination und Gleichgewicht (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.3.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.4"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.4.1"
* item[=].item[=].item[=].text = "Probleme beim Gehen und sich bewegen"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.4.2"
* item[=].item[=].item[=].text = "Probleme beim Gehen und sich bewegen (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.4.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.5"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.5.1"
* item[=].item[=].item[=].text = "Schmerzen"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.5.2"
* item[=].item[=].item[=].text = "Schmerzen (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.5.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.6"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.6.1"
* item[=].item[=].item[=].text = "Taubheit und Kribbeln"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.6.2"
* item[=].item[=].item[=].text = "Taubheit und Kribbeln (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.6.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.7"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.7.1"
* item[=].item[=].item[=].text = "Probleme der Blasenkontrolle oder Darmprobleme"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.7.2"
* item[=].item[=].item[=].text = "Probleme der Blasenkontrolle oder Darmprobleme (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.7.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.8"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.8.1"
* item[=].item[=].item[=].text = "Probleme beim Sprechen"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.8.2"
* item[=].item[=].item[=].text = "Probleme beim Sprechen (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.8.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.9"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.9.1"
* item[=].item[=].item[=].text = "Probleme beim Konzentrieren und sich erinnern"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.9.2"
* item[=].item[=].item[=].text = "Probleme beim Konzentrieren und sich erinnern (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.9.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.3.10"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-1.3.10.1"
* item[=].item[=].item[=].text = "Müdigkeit oder Erschöpfung"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].initial.valueCoding = $loinc#LA32-8
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-1.3.10.2"
* item[=].item[=].item[=].text = "Müdigkeit oder Erschöpfung (Einschätzung)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].enableWhen.question = "CIMQ-1.3.10.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomDevelopmentVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-1.4"
* item[=].item[=].text = "Wurde der Schub mit Kortison behandelt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].enableWhen.question = "CIMQ-1.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[+].linkId = "CIMQ-2"
* item[=].prefix = "2"
* item[=].text = "Beeinträchtigung(en)"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].enableWhen.question = "CIMQ-1.2"
* item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].enableWhen.answerCoding = $loinc#LA33-6

* item[=].item[+].linkId = "CIMQ-2.1"
* item[=].item[=].text = "Wie stark haben Ihre Symptome Sie seit dem letzten Besuch beeinträchtigt?"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "CIMQ-2.1.1"
* item[=].item[=].item[=].text = "Sich bewegen"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomIntensityVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-2.1.2"
* item[=].item[=].item[=].text = "Waschen, Baden und Anziehen"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomIntensityVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-2.1.3"
* item[=].item[=].item[=].text = "Ausführen täglicher Aufgaben (z.B. Hausarbeit oder Autofahren)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomIntensityVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-2.1.4"
* item[=].item[=].item[=].text = "Ausüben von Hobbies oder Freizeitaktivitäten"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomIntensityVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-2.1.5"
* item[=].item[=].item[=].text = "Bei der Arbeit (bezahlt oder ehrenamtlich)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomIntensityVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-2.1.6"
* item[=].item[=].item[=].text = "Intim sein oder Sex haben"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomIntensityVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-2.1.7"
* item[=].item[=].item[=].text = "Emotional (z.B. sich elend, ängstlich oder besorgt fühlen)"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(CheckInMonitoringQuestionnaireSymptomIntensityVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[+].linkId = "CIMQ-3"
* item[=].prefix = "3"
* item[=].text = "Medikamente"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "CIMQ-3.1"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-3.1.1"
* item[=].item[=].item[=].text = "Nehmen Sie die folgenden Medikamente derzeit ein?"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoUncertainVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-3.2"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-3.2.1"
* item[=].item[=].item[=].text = "Haben Sie seit Ihrem letzten Besuch Medikamente abgesetzt?"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-3.2.2"
* item[=].item[=].item[=].text = "Welche Medikamente haben Sie abgesetzt?"
* item[=].item[=].item[=].type = $item-type#string
* item[=].item[=].item[=].enableWhen.question = "CIMQ-3.2.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete

* item[=].item[+].linkId = "CIMQ-3.3"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-3.3.1"
* item[=].item[=].item[=].text = "Nehmen Sie seit Ihrem letzten Besuch neue Medikamente ein?"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-3.3.2"
* item[=].item[=].item[=].text = "Welche Medikamente sind neu hinzugekommen?"
* item[=].item[=].item[=].type = $item-type#string
* item[=].item[=].item[=].enableWhen.question = "CIMQ-3.1.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#autocomplete

* item[+].linkId = "CIMQ-4"
* item[=].prefix = "4"
* item[=].text = "Erkrankungen"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "CIMQ-4.1"
* item[=].item[=].text = "Haben Sie seit Ihrem letzten Besuch neue Erkrankungen?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoUncertainVS)
* item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button

* item[=].item[+].linkId = "CIMQ-4.2"
* item[=].item[=].text = "Welche Erkrankungen sind neu hinzugekommen?"
* item[=].item[=].type = $item-type#string
* item[=].item[=].enableWhen.question = "CIMQ-4.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = false
* item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#text-box

* item[+].linkId = "CIMQ-5"
* item[=].prefix = "5"
* item[=].text = "Lebensgewohnheiten"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "CIMQ-5.1"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true

* item[=].item[=].item[+].linkId = "CIMQ-5.1.1"
* item[=].item[=].item[=].text = "Rauchen Sie?"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-5.1.2"
* item[=].item[=].item[=].text = "Bitte zutreffendes markieren"
* item[=].item[=].item[=].type = $item-type#group
* item[=].item[=].item[=].enableWhen.question = "CIMQ-5.1.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "CIMQ-5.1.2.1"
* item[=].item[=].item[=].item[=].type = $item-type#group
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[=].item[+].linkId = "CIMQ-5.1.2.1.1"
* item[=].item[=].item[=].item[=].item[=].text = "Zigaretten"
* item[=].item[=].item[=].item[=].item[=].type = $item-type#boolean
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box
* item[=].item[=].item[=].item[=].item[+].linkId = "CIMQ-5.1.2.1.2"
* item[=].item[=].item[=].item[=].item[=].text = "Zigarren"
* item[=].item[=].item[=].item[=].item[=].type = $item-type#boolean
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box
* item[=].item[=].item[=].item[=].item[+].linkId = "CIMQ-5.1.2.1.3"
* item[=].item[=].item[=].item[=].item[=].text = "Pfeife"
* item[=].item[=].item[=].item[=].item[=].type = $item-type#boolean
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box
* item[=].item[=].item[=].item[+].linkId = "CIMQ-5.1.2.2"
* item[=].item[=].item[=].item[=].text = "Seit (Jahr)"
* item[=].item[=].item[=].item[=].type = $item-type#date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].extension[+].url = $extension-entry-format
* item[=].item[=].item[=].item[=].extension[=].valueString = "yyyy"
* item[=].item[=].item[=].item[+].linkId = "CIMQ-5.1.2.3"
* item[=].item[=].item[=].item[=].text = "Anzahl pro Tag"
* item[=].item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].extension[+].url = $extension-min-value
* item[=].item[=].item[=].item[=].extension[=].valueInteger = 1
* item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-unit
* item[=].item[=].item[=].item[=].extension[=].valueCoding = $ucum#/d

* item[=].item[+].linkId = "CIMQ-5.2"
* item[=].item[=].type = $item-type#group
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true
* item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[+].linkId = "CIMQ-5.2.1"
* item[=].item[=].item[=].text = "Trinken Sie Alkohol?"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].item[+].linkId = "CIMQ-5.2.2"
* item[=].item[=].item[=].text = "Bitte zutreffendes markieren"
* item[=].item[=].item[=].type = $item-type#group
* item[=].item[=].item[=].enableWhen.question = "CIMQ-5.2.1"
* item[=].item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[+].linkId = "CIMQ-5.2.2.1"
* item[=].item[=].item[=].item[=].type = $item-type#group
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].item[=].item[=].item[=].extension[=].valueBoolean = true
* item[=].item[=].item[=].item[=].item[+].linkId = "CIMQ-5.2.2.1.1"
* item[=].item[=].item[=].item[=].item[=].text = "Bier"
* item[=].item[=].item[=].item[=].item[=].type = $item-type#boolean
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box
* item[=].item[=].item[=].item[=].item[+].linkId = "CIMQ-5.2.2.1.2"
* item[=].item[=].item[=].item[=].item[=].text = "Wein"
* item[=].item[=].item[=].item[=].item[=].type = $item-type#boolean
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box
* item[=].item[=].item[=].item[=].item[+].linkId = "CIMQ-5.2.2.1.3"
* item[=].item[=].item[=].item[=].item[=].text = "Spirituosen"
* item[=].item[=].item[=].item[=].item[=].type = $item-type#boolean
* item[=].item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].item[=].item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#check-box
* item[=].item[=].item[=].item[+].linkId = "CIMQ-5.2.1.2"
* item[=].item[=].item[=].item[=].text = "Milliliter (ml) pro Tag"
* item[=].item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].item[=].extension[+].url = $extension-min-value
* item[=].item[=].item[=].item[=].extension[=].valueInteger = 1
* item[=].item[=].item[=].item[=].extension[+].url = $extension-questionnaire-unit
* item[=].item[=].item[=].item[=].extension[=].valueCoding = $ucum#mL/d

* item[=].item[+].linkId = "CIMQ-5.3"
* item[=].item[=].text = "Besteht aktuell eine Schwangerschaft?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)
* item[=].item[=].extension[+].url = $extension-questionnaire-item-control
* item[=].item[=].extension[=].valueCodeableConcept = $questionnaire-item-control#radio-button