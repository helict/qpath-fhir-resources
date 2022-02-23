Instance: ModifiedFatigueImpactScaleQuestionnaire
InstanceOf: Questionnaire
Title: "MFIS"
Description: "Modified Fatigue Impact Scale (MFIS) Questionnaire"
Usage: #definition
* insert QuestionnaireMetadata
* url = $q4ms-mfis-questionnaire
* name = "MFIS"
* title = "Modified Fatigue Impact Scale Questionnaire"
* item[+].linkId = "MFIS.0"
* item[=].text = "Mit den folgenden Fragen soll erfasst werden, wie ausgeprägt Sie im letzten Monat einschließlich des heutigen Tages durch Erschöpfung beeinträchtigt gewesen sind. Bitte beantworten Sie alle Fragen und wählen Sie nur eine Antwort durch Ankreuzen aus."
* item[=].type = $item-type#display
* item[+].linkId = "MFIS.1"
* item[=].text = "Wegen meiner Müdigkeit..."
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].item[+].linkId = "MFIS.1.1"
* item[=].item[=].prefix = "1"
* item[=].item[=].text = "... fühle ich mich weniger geistig frisch"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.2"
* item[=].item[=].prefix = "2"
* item[=].item[=].text = "... fällt es mir schwer, mich lngere Zeit zu konzentrieren"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.3"
* item[=].item[=].prefix = "3"
* item[=].item[=].text = "... habe ich das Gefühl, dass ich nicht klar denken kann"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.4"
* item[=].item[=].prefix = "4"
* item[=].item[=].text = "... bin ich unbeholfener und kann meine Bewegungen schlechter aufeinander abstimmen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.5"
* item[=].item[=].prefix = "5"
* item[=].item[=].text = "... habe ich den Eindruck, vergesslicher zu sein"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.6"
* item[=].item[=].prefix = "6"
* item[=].item[=].text = "... muss ich meine körperlichen Aktivitäten sorgfältig einteilen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.7"
* item[=].item[=].prefix = "7"
* item[=].item[=].text = "... bin ich weniger motiviert, etwas körperlich Anstrengendes zu tun"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.8"
* item[=].item[=].prefix = "8"
* item[=].item[=].text = "... bin ich weniger motiviert, an sozialen Aktivitäten teilzunehmen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.9"
* item[=].item[=].prefix = "9"
* item[=].item[=].text = "... ist meine Fähigkeit, mich außerhalb meiner Wohnung zu bewegen, eingeschränkt"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.10"
* item[=].item[=].prefix = "10"
* item[=].item[=].text = "... habe ich Schwierigkeiten, körperliche Anstrengungen ber einen längeren Zeitraum durchzuhalten"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.11"
* item[=].item[=].prefix = "11"
* item[=].item[=].text = "... fällt es mir schwer, Entscheidungen zu treffen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.12"
* item[=].item[=].prefix = "12"
* item[=].item[=].text = "... bin ich weniger motiviert, irgendetwas zu tun, das Nachdenken erfordert"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.13"
* item[=].item[=].prefix = "13"
* item[=].item[=].text = "... fühlen sich meine Muskeln viel schwächer an, als sie sollten"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.14"
* item[=].item[=].prefix = "14"
* item[=].item[=].text = "... hat mein körperliches Unwohlsein zugenommen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.15"
* item[=].item[=].prefix = "15"
* item[=].item[=].text = "... bin ich weniger in der Lage, Aufgaben zu beenden, die Nachdenken erfordern"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.16"
* item[=].item[=].prefix = "16"
* item[=].item[=].text = "... fällt es mir schwer, meine Gedanken zusammenzuhalten, wenn ich Dinge zu Hause oder auf der Arbeit erledige"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.17"
* item[=].item[=].prefix = "17"
* item[=].item[=].text = "... kann ich weniger gut Aufgaben erledigen, die körperliche Anstrengung erfordern"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.18"
* item[=].item[=].prefix = "18"
* item[=].item[=].text = "... habe ich das Gefühl, dass ich langsam denke"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.19"
* item[=].item[=].prefix = "19"
* item[=].item[=].text = "... finde ich es schwer, mich zu konzentrieren"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.20"
* item[=].item[=].prefix = "20"
* item[=].item[=].text = "... muss ich meine körperlichen Aktivitäten einschränken"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
* item[=].item[+].linkId = "MFIS.1.21"
* item[=].item[=].prefix = "21"
* item[=].item[=].text = "... brauche ich häufigere oder längere Ruhepausen"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ModifiedFatigueImpactScaleQuestionnaireVS)
