Instance: ExerciseMentalIllnessQuestionnaireResponseExample
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Beispiel QuestionnaireResponse EMIQ Antwortbogen"
Description: "Beispiel QuestionnaireResponse eines Exercise Mental Illness Questionnaire (EMIQ) Antwortbogens"
* language = $ietf-bcp-47#de-DE
* questionnaire = Canonical(ExerciseMentalIllnessQuestionnaire)
* status = $questionnaire-answers-status#completed
* subject = Reference(PatientPseudonym)
* authored = "2022-02-11T19:26:17Z"
* source = Reference(PatientPseudonym)
* item[+].linkId = "EMIQ"
* item[=].item[+].linkId = "EMIQ.1"
* item[=].item[=].answer.valueCoding = $loinc#LA6297-1
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 0
* item[=].item[+].linkId = "EMIQ.2"
* item[=].item[=].answer.valueCoding = $loinc#LA14733-2
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 1
* item[=].item[+].linkId = "EMIQ.3"
* item[=].item[=].answer.valueCoding = $loinc#LA14734-0
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 2
* item[=].item[+].linkId = "EMIQ.4"
* item[=].item[=].answer.valueCoding = $loinc#LA6154-4
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 3
* item[=].item[+].linkId = "EMIQ.5"
* item[=].item[=].answer.valueCoding = $loinc#LA6297-1
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 0
* item[=].item[+].linkId = "EMIQ.6"
* item[=].item[=].answer.valueCoding = $loinc#LA14733-2
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 1
* item[=].item[+].linkId = "EMIQ.7"
* item[=].item[=].answer.valueCoding = $loinc#LA14734-0
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 2
* item[=].item[+].linkId = "EMIQ.8"
* item[=].item[=].answer.valueCoding = $loinc#LA6154-4
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 3
* item[=].item[+].linkId = "EMIQ.9"
* item[=].item[=].answer.valueCoding = $loinc#LA6297-1
// * item[=].item[=].answer.extension[$extension-ordinal-value].valueDecimal = 0
* item[+].linkId = "EMIQ.Score"
* item[=].answer.valueDecimal = 44.444444444444436
