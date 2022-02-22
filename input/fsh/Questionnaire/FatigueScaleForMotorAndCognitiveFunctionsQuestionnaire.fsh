Instance: FatigueScaleForMotorAndCognitiveFunctionsQuestionnaire
InstanceOf: Questionnaire
Title: "FSMC"
Description: "Fatigue Scale for Motor and Cognitive Functions (FSMC) Questionnaire"
Usage: #definition
* url = $q4ms-fsmc-questionnaire
* version = "1.0.0"
* status = $publication-status#draft
* experimental = true
* subjectType = $resource-type#Patient
* item[+].linkId = "FSMC.1"
* item[=].text = "Im folgenden Fragebogen geht es um alltägliche Probleme, die in direktem Zusammenhang mit einer extremen Form von Müdigkeit (Fatigue) stehen. Unter dieser extremen Form der Müdigkeit wird ein nicht zu beherrschender Zustand der Abgeschlagenheit, Erschöpfung und Energielosigkeit verstanden, der schlagartig eintritt, unabhängig von eindeutigen äusseren Ursachen. Gemeint sind damit nicht Einzelereignisse, wie sie jeder Mensch im Verlaufe des Tages, nach einer Anstrengung Oder nach einer schlaflosen Nacht erlebt!
Bitte lesen Sie jede Aussage genau durch. Entscheiden Sie dann, inwieweit die entsprechende Aussage auf Sie und Ihren Alltag zutrifft. Bitte treffen Sie Ihre Antwort möglichst unabhängig von Ihrem momentanen Befinden und versuchen Sie uns ein Bild von Ihrem Zustand zu geben, wie Sie ihn Tag für Tag erleben. Setzen Sie hierzu bitte ein Kreuz in den entsprechenden Kreis (pro Aussage bitte nur ein Kreuz!)."
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].item[+].linkId = "FSMC.1.1"
* item[=].item[=].prefix = "1"
* item[=].item[=].text = "Wenn ich mich längere Zeit konzentriere, erschöpfe ich schneller als andere Menschen in meinem Alter."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.2"
* item[=].item[=].prefix = "2"
* item[=].item[=].text = "Meine Bewegungen werden im Zustand der Erschöpfung deutlich ungeschickter und unkoordinierter."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.3"
* item[=].item[=].prefix = "3"
* item[=].item[=].text = "Wegen meiner Erschöpfungszustände brauche ich heute bei körperlichen Tätigkeiten häufigere und/oder auch längere Ruhepausen als früher."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.4"
* item[=].item[=].prefix = "4"
* item[=].item[=].text = "Im Zustand der Erschöpfung bin ich unfähig, Entscheidungen zu treffen."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.5"
* item[=].item[=].prefix = "5"
* item[=].item[=].text = "Ich fühle mich heute körperlich schneller erschöpft als früher, wenn ich stressigen Situationen ausgesetzt bin."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.6"
* item[=].item[=].prefix = "6"
* item[=].item[=].text = "Wegen meiner Erschöpfungszustände habe ich wesentlich weniger soziale Kontakte als früher."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.7"
* item[=].item[=].prefix = "7"
* item[=].item[=].text = "Wegen meiner Erschöpfungszustände fällt es mir heute schwerer, etwas Neues zu lernen als früher."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.8"
* item[=].item[=].prefix = "8"
* item[=].item[=].text = "Berufliche Anforderungen lassen mich geistig schneller erschöpfen als früher."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.9"
* item[=].item[=].prefix = "9"
* item[=].item[=].text = "Erschöpfungszustände spüre ich besonders stark in meinen Muskeln."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.10"
* item[=].item[=].prefix = "10"
* item[=].item[=].text = "Bei körperlicher Anstrengung über einen längeren Zeitraum habe ich mehr Mühe durchzuhalten als früher."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.11"
* item[=].item[=].prefix = "11"
* item[=].item[=].text = "Meine Konzentrationsfähigkeit nimmt bei Stress beträchtlich ab."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.12"
* item[=].item[=].prefix = "12"
* item[=].item[=].text = "Im Zustand der Erschöpfung bin ich weniger motiviert als andere Menschen, Tätigkeiten zu beginnen, die mit körperlicher Anstrengung verbunden sind."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.13"
* item[=].item[=].prefix = "13"
* item[=].item[=].text = "Mein Denken verlangsamt sich zusehends, wenn es heiss ist."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.14"
* item[=].item[=].prefix = "14"
* item[=].item[=].text = "Meine Bewegungen werden im Zustand der Erschöpfung eindeutig langsamer."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.15"
* item[=].item[=].prefix = "15"
* item[=].item[=].text = "Wegen meiner Erschöpfungszustände habe ich heute weniger Lust als früher, etwas zu tun, was Nachdenken erfordert."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.16"
* item[=].item[=].prefix = "16"
* item[=].item[=].text = "Wenn sich ein Erschöpfungszustand einstellt, bin ich überhaupt nicht mehr in der Lage, schnell zu reagieren."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.17"
* item[=].item[=].prefix = "17"
* item[=].item[=].text = "Im Zustand der Erschöpfung kommen mir bestimmte Worte nicht mehr in den Sinn."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.18"
* item[=].item[=].prefix = "18"
* item[=].item[=].text = "Meine Aufmerksamkeit lässt im Erschöpfungs-zustand wesentlich schneller nach als früher."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.19"
* item[=].item[=].prefix = "19"
* item[=].item[=].text = "Wenn es heiss ist, fühle ich mich hauptsächlich körperlich extrem schwach und energielos."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
* item[=].item[+].linkId = "FSMC.1.20"
* item[=].item[=].prefix = "20"
* item[=].item[=].text = "Im Zustand der Erschöpfung nimmt meine Vergesslichkeit merklich zu."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(FatigueScaleForMotorAndCognitiveFunctionsQuestionnaireVS)
