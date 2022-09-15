RuleSet: ExerciseMentalIllnessQuestionnaireCommonItemParts
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ExerciseMentalIllnessQuestionnaireVS)
* item[=].item[=].extension[$extension-questionnaire-choice-orientation].valueCode = #horizontal
* item[=].item[=].extension[$extension-questionnaire-item-control].valueCodeableConcept = $questionnaire-item-control#radio-button

Instance: ExerciseMentalIllnessQuestionnaire
InstanceOf: Questionnaire
Title: "EMIQ"
Description: "The Exercise Mental Illness Questionnaire (EMIQ)"
Usage: #definition
* insert QuestionnaireMetadataActive
* url = $q4ms-emiq-questionnaire
* name = "EMIQ"
* title = "Exercise Mental Illness Questionnaire"
* item[+].linkId = "EMIQ"
* item[=].text = "Kreuzen Sie bei den nachstehenden Fragen das Kästchen an, das Ihre Gehfähigkeit in den vergangenen 30 Tagen am besten beschreibt."
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "EMIQ.1"
* item[=].item[=].prefix = "1"
* item[=].item[=].text = "Wie häufig mussten Sie sich in den vergangenen 30 Tagen beim Gehen im Freien konzentrieren?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[=].item[+].linkId = "EMIQ.2"
* item[=].item[=].prefix = "2"
* item[=].item[=].text = "Wie häufig hatten Sie in den vergangenen 30 Tagen Schwierigkeiten, beim Gehen eine Unterhaltung zu führen?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[=].item[+].linkId = "EMIQ.3"
* item[=].item[=].prefix = "3"
* item[=].item[=].text = "Wie häufig haben Sie in den vergangenen 30 Tagen irgendeine Art von Stütze benutzt, um Ihr Gleichgewicht beim Gehen zu halten?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[=].item[+].linkId = "EMIQ.4"
* item[=].item[=].prefix = "4"
* item[=].item[=].text = "Wie häufig sind Sie in den vergangenen 30 Tagen beim Gehen auf unebenen Flächen gestolpert?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[=].item[+].linkId = "EMIQ.5"
* item[=].item[=].prefix = "5"
* item[=].item[=].text = "Wie häufig haben Sie in den vergangenen 30 Tagen beim Tragen von Gegenständen (z. B. Tasse/Tablett) während des Gehens Schwierigkeiten gehabt oder sich dabei unsicher gefühlt?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[=].item[+].linkId = "EMIQ.6"
* item[=].item[=].prefix = "6"
* item[=].item[=].text = "Wie häufig haben Sie in den vergangenen 30 Tagen Schwierigkeiten bei der Ausübung von Haushaltstätigkeiten gehabt, die einen häufigen Positionswechsel erfordern (z.B. Kochen, Saubermachen, Gartenarbeit)?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[=].item[+].linkId = "EMIQ.7"
* item[=].item[=].prefix = "7"
* item[=].item[=].text = "Wie häufig mussten Sie in den vergangenen 30 Tagen während Ihres Arbeitstags Dinge langsamer verrichten?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[=].item[+].linkId = "EMIQ.8"
* item[=].item[=].prefix = "8"
* item[=].item[=].text = "Wie häufig hatten Sie in den vergangenen 30 Tagen wegen Problemen beim Gehen Schwierigkeiten, gesellschaftlichen oder freizeitlichen Verpflichtungen nachzukommen?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[=].item[+].linkId = "EMIQ.9"
* item[=].item[=].prefix = "9"
* item[=].item[=].text = "Wie häufig haben Sie in den vergangenen 30 Tagen sportliche oder andere körperliche Aktivitäten vermieden, weil Sie sich wegen Problemen beim Gehen unsicher waren, ob Sie diese ausüben könnten?"
* insert ExerciseMentalIllnessQuestionnaireCommonItemParts

* item[+].linkId = "EMIQ.Score"
* item[=].text = "Gesamtwertung"
* item[=].type = $item-type#decimal
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].extension[+].url = $extension-calculated-expression
* item[=].extension[=].valueExpression.description = "Score von 0 (keine Gehschwäche) bis 100 (schwere Gehschwäche)"
* item[=].extension[=].valueExpression.name = "Score"
* item[=].extension[=].valueExpression.language = $expression-language#text/fhirpath
* item[=].extension[=].valueExpression.expression = "%resource.repeat(item).where(linkId='EMIQ').item.answer.extension.where(url.contains('ordinalValue')).valueDecimal.avg() * 100 / 3"
* item[=].extension[+].url = $extension-questionnaire-hidden
* item[=].extension[=].valueBoolean = true
