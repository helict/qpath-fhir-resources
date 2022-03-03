Instance: HospitalAnxietyAndDepressionScaleQuestionnaire
InstanceOf: Questionnaire
Title: "HADS"
Description: "Hostpital Anxiety and Depression Scale Questionnaire, deutsche Version (HADS-D)"
Usage: #definition
* insert QuestionnaireMetadata
* url = $q4ms-hads-questionnaire
* name = "HADS"
* title = "Hostpital Anxiety and Depression Scale Questionnaire, deutsche Version"
* item[+].linkId = "HADS-D"
* item[=].text = "Wir bitten Sie jede Frage zu beantworten, und zwar so, wie es für Sie persönlich in der 
letzten Woche am ehesten zutraf. Machen Sie bitte nur ein Kreuz pro Frage und lassen Sie bitte keine Frage aus!
Überlegen Sie bitte nicht lange, sondern wählen Sie die Antwort aus, die Ihnen auf Anhieb am zutreffendsten erscheint."
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true
* item[=].item[+].linkId = "HADS-D.1"
* item[=].item[=].prefix = "1A"
* item[=].item[=].text = "Ich fühle mich angespannt oder überreizt."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire01aVS)
* item[=].item[+].linkId = "HADS-D.2"
* item[=].item[=].prefix = "2D"
* item[=].item[=].text = "Ich kann mich heute noch so freuen wie früher."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire02dVS)
* item[=].item[+].linkId = "HADS-D.3"
* item[=].item[=].prefix = "3A"
* item[=].item[=].text = "Mich überkommt eine ängstliche Vorahnung, dass etwas Schreckliches passieren könnte."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire03aVS)
* item[=].item[+].linkId = "HADS-D.4"
* item[=].item[=].prefix = "4D"
* item[=].item[=].text = "Ich kann lachen und die lustige Seite der Dinge sehen."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire04dVS)
* item[=].item[+].linkId = "HADS-D.5"
* item[=].item[=].prefix = "5A"
* item[=].item[=].text = "Mir gehen beunruhigende Gedanken durch den Kopf."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire05aVS)
* item[=].item[+].linkId = "HADS-D.6"
* item[=].item[=].prefix = "6D"
* item[=].item[=].text = "Ich fühle mich glücklich."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire06dVS)
* item[=].item[+].linkId = "HADS-D.7"
* item[=].item[=].prefix = "7A"
* item[=].item[=].text = "Ich kann behaglich dasitzen und mich entspannen."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire07aVS)
* item[=].item[+].linkId = "HADS-D.8"
* item[=].item[=].prefix = "8D"
* item[=].item[=].text = "Ich fühle mich in meinen Aktivitäten gebremst."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire08dVS)
* item[=].item[+].linkId = "HADS-D.9"
* item[=].item[=].prefix = "9A"
* item[=].item[=].text = "Ich habe manchmal ein ängstliches Gefühl in der Magengegend."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire09aVS)
* item[=].item[+].linkId = "HADS-D.10"
* item[=].item[=].prefix = "10D"
* item[=].item[=].text = "Ich habe das Interesse an meiner äußeren Erscheinung verloren."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire10dVS)
* item[=].item[+].linkId = "HADS-D.11"
* item[=].item[=].prefix = "11A"
* item[=].item[=].text = "Ich fühle mich rastlos, muss immer in Bewegung sein."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire11aVS)
* item[=].item[+].linkId = "HADS-D.12"
* item[=].item[=].prefix = "12D"
* item[=].item[=].text = "Ich blicke mit Freude in die Zukunft."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire12dVS)
* item[=].item[+].linkId = "HADS-D.13"
* item[=].item[=].prefix = "13A"
* item[=].item[=].text = "Mich überkommt plötzlich ein panikartiger Zustand."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire13aVS)
* item[=].item[+].linkId = "HADS-D.14"
* item[=].item[=].prefix = "14D"
* item[=].item[=].text = "Ich kann mich an einem guten Buch, einer Radio- oder Fernsehsendung erfreuen."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(HospitalAnxietyAndDepressionScaleQuestionnaire14dVS)
