Instance: ExerciseMentalIllnessQuestionnaireResponseExample
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "Beispiel EMIQ Antwortbogen"
Description: "Beispiel eines Exercise Mental Illness Questionnaire (EMIQ) Antwortbogens"
* language = $ietf-bcp-47#de-DE
* questionnaire = Canonical(ExerciseMentalIllnessQuestionnaire)
* status = $questionnaire-answers-status#completed
* subject = Reference(PatientJohnDoe)
* authored = "2022-02-11T19:26:17Z"
* source = Reference(PatientJohnDoe)
* item[+].linkId = "EMIQ"
* item[=].item[+].linkId = "EMIQ.1"
* item[=].item[=].answer.valueCoding = $loinc#LA6270-8
* item[=].item[+].linkId = "EMIQ.2"
* item[=].item[=].answer.valueCoding = $loinc#LA10082-8
* item[=].item[+].linkId = "EMIQ.3"
* item[=].item[=].answer.valueCoding = $loinc#LA14747-2
* item[=].item[+].linkId = "EMIQ.4"
* item[=].item[=].answer.valueCoding = $loinc#LA9933-8
* item[=].item[+].linkId = "EMIQ.5"
* item[=].item[=].answer.valueCoding = $loinc#LA6270-8
* item[=].item[+].linkId = "EMIQ.6"
* item[=].item[=].answer.valueCoding = $loinc#LA10082-8
* item[=].item[+].linkId = "EMIQ.7"
* item[=].item[=].answer.valueCoding = $loinc#LA14747-2
* item[=].item[+].linkId = "EMIQ.8"
* item[=].item[=].answer.valueCoding = $loinc#LA9933-8
* item[=].item[+].linkId = "EMIQ.9"
* item[=].item[=].answer.valueCoding = $loinc#LA6270-8
