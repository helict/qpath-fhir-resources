Instance: MultipleSclerosisHealthResourceUtilizationSurveyQuestionnaire
InstanceOf: Questionnaire
Title: "MS-HRS"
Description: "Multiple Sclerosis Health Resource Utilization Survey (MS-HRS) Questionnaire"
Usage: #definition
* url = $q4ms-mshrs-questionnaire
* version = "1.0.0"
* status = $publication-status#draft
* experimental = true
* subjectType = $resource-type#Patient
* item[+].linkId = "MS-HRS.0"
* item[=].text = "Mit diesem Fragebogen sollen die Gesamtkosten einer Therapie der Multiplen Sklerose festgestellt werden. Wegen des Mangels an kompletten Daten ist es häufig schwierig,
die Kosten abzuschätzen. Ihr Beitrag zu unseren Bemühungen, diese Kosten besser zu verstehen, ist daher von besonderer Bedeutung.
Bitte beachten Sie bei der Beantwortung der Fragen, dass sich der Zeitraum für die Kostenerhebung auf die letzten 6 Monate bezieht. Bitte beantworten Sie die Fragen der
Reihe nach, eventuelle Sprünge zwischen den Fragen werden angezeigt. Vielen Dank."
* item[=].type = $item-type#display

* item[+].linkId = "MS-HRS.1"
* item[=].prefix = "I"
* item[=].text = "Hauptfragen (1 bis 12)"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "MS-HRS.1.1"
* item[=].item[=].prefix = "1"
* item[=].item[=].text = "Was ist Ihre derzeitige Tätigkeit?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(TaetigkeitenVS)

* item[=].item[+].linkId = "MS-HRS.1.1.1"
* item[=].item[=].text = "Aufgrund der MS zu ... Prozent:"
* item[=].item[=].type = $item-type#integer
* item[=].item[=].enableWhen.question = "MS-HRS.1.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $q4ms-taetigkeiten#T_UNFIT_FOR_WORK
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false

* item[=].item[+].linkId = "MS-HRS.1.2"
* item[=].item[=].prefix = "2"
* item[=].item[=].text = "Wie viele Stunden pro Woche gehen Sie einer bezahlten Erwerbstätigkeit nach? (Falls ohne Erwerbstätigkeit, dann „0“)"
* item[=].item[=].type = $item-type#integer
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].initial.valueInteger = 0

* item[=].item[+].linkId = "MS-HRS.1.3"
* item[=].item[=].prefix = "3"
* item[=].item[=].text = "Wie viele Tage mussten Sie sich aufgrund ihrer MS innerhalb der letzten 6 Monate krankschreiben lassen? (Falls ohne Erwerbstätigkeit, dann „0“)"
* item[=].item[=].type = $item-type#integer
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].initial.valueInteger = 0

* item[=].item[+].linkId = "MS-HRS.1.4"
* item[=].item[=].prefix = "4"
* item[=].item[=].text = "Aufgrund meiner MS war meine Arbeitsproduktivität (z.B. die Konzentration oder Geschwindigkeit beim Arbeiten) im letzten halben Jahr beeinträchtigt. (Wählen Sie eine hohe Nummer, wenn die MS Ihre Arbeitsfähigkeit stark beeinträchtigt hat.)"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(ArbeitsproduktivitaetseinflussVS)

* item[=].item[+].linkId = "MS-HRS.1.5"
* item[=].item[=].prefix = "5"
* item[=].item[=].text = "Aufgrund meiner MS wurde ich in den letzten 6 Monaten in einem Krankenhaus, einer Rehaklinik oder einem Pflegeheim stationär (mit Übernachtung) behandelt."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.1.5.1"
* item[=].item[=].text = "Und zwar:"
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "MS-HRS.1.5"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA32-6
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "MS-HRS.1.5.1.1"
* item[=].item[=].item[=].text = "Davon waren ... Tage in einem Krankenhaus:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.5.1.2"
* item[=].item[=].item[=].text = "Und davon ... Tage in der Neurologie:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.5.1.3"
* item[=].item[=].item[=].text = "Davon waren ... Tage in der Rehaklinik:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.5.1.4"
* item[=].item[=].item[=].text = "Davon waren ... Tage in einem Pflegeheim:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[+].linkId = "MS-HRS.1.6"
* item[=].item[=].prefix = "6"
* item[=].item[=].text = "Aufgrund meiner MS wurde ich in den letzten 6 Monaten in einem Krankenhaus, einer Rehaklinik oder einem Pflegeheim teilstationär, also in einer Tagesklinik (ohne Übernachtung) oder Nachtklinik (ohne Verweildauer am Tage) behandelt."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.1.6.1"
* item[=].item[=].text = "Und zwar:"
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "MS-HRS.1.6"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA32-6
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "MS-HRS.1.6.1.1"
* item[=].item[=].item[=].text = "Davon waren ... Tage in einem Krankenhaus:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.6.1.2"
* item[=].item[=].item[=].text = "Und davon ... Tage in der Neurologie:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.6.1.3"
* item[=].item[=].item[=].text = "Davon waren ... Tage in der Rehaklinik:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.6.1.4"
* item[=].item[=].item[=].text = "Davon waren ... Tage in einem Pflegeheim:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[+].linkId = "MS-HRS.1.7"
* item[=].item[=].prefix = "7"
* item[=].item[=].text = "Aufgrund meiner MS hatte ich in den letzten 6 Monaten zu folgenden Fachärzten oder Berufsgruppen ambulant in einer Praxis oder in einem Krankenhaus Kontakt. Geben Sie hier bitte nur solche Kontakte an, die nicht in Frage 5 oder 6 bereits gelistet wurden. (Mehrfachnennungen verschiedener Fachkräfte möglich)"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.1.7.1"
* item[=].item[=].text = "Und zwar ... mal (Anzahl):"
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "MS-HRS.1.7"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA32-6
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.1"
* item[=].item[=].item[=].text = "Allgemeinarzt / Hausarzt"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.2"
* item[=].item[=].item[=].text = "Neurologe"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.3"
* item[=].item[=].item[=].text = "Anderer Facharzt (z.B. Urologe, Augenarzt, Psychologe)"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.4"
* item[=].item[=].item[=].text = "MS-Schwester"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.5"
* item[=].item[=].item[=].text = "Physiotherapeut"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.6"
* item[=].item[=].item[=].text = "Beschäftigungstherapeut/ Ergotherapeut"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.7"
* item[=].item[=].item[=].text = "Beratungsstelle"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.8"
* item[=].item[=].item[=].text = "Optiker"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.9"
* item[=].item[=].item[=].text = "Logopäde"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.10"
* item[=].item[=].item[=].text = "Akupunktur"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.11"
* item[=].item[=].item[=].text = "Andere allgemeine alternative Heilmethoden"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.7.1.12"
* item[=].item[=].item[=].text = "Sonstige"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0


* item[=].item[+].linkId = "MS-HRS.1.8"
* item[=].item[=].prefix = "8"
* item[=].item[=].text = "Aufgrund meiner MS war ich in den letzten 6 Monaten bei einer der folgenden Untersuchungen: Kernspintomographie (MRT), Computertomographie (CT), Lumbalpunktion oder Blutuntersuchungen."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.1.8.1"
* item[=].item[=].text = "Und zwar ... mal (Anzahl):"
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "MS-HRS.1.8"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA32-6
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "MS-HRS.1.8.1.1"
* item[=].item[=].item[=].text = "Kernspintomographie (MRT)"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.8.1.2"
* item[=].item[=].item[=].text = "Computertomographie (CT)"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.8.1.3"
* item[=].item[=].item[=].text = "Lumbalpunktion"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.8.1.4"
* item[=].item[=].item[=].text = "Blutuntersuchungen"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[+].linkId = "MS-HRS.1.9"
* item[=].item[=].prefix = "9"
* item[=].item[=].text = "Aufgrund meiner MS habe ich den letzten 6 Monaten Hilfe im Haushalt oder bei alltäglichen Aufgaben benötigt."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.1.9.1"
* item[=].item[=].text = "Und zwar durschnittlich ... Stunden pro Woche von folgenden Personen:"
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "MS-HRS.1.9"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA32-6
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "MS-HRS.1.9.1.1"
* item[=].item[=].item[=].text = "Professionelle Betreuungsfachkraft (Krankenschwester/ Pflegedienst)"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.9.1.2"
* item[=].item[=].item[=].text = "Haushaltshilfe oder persönlichen Betreuer"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.9.1.3"
* item[=].item[=].item[=].text = "Freunde oder Familienangehörige"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[+].linkId = "MS-HRS.1.10"
* item[=].item[=].prefix = "10"
* item[=].item[=].text = "Wieviel (in Euro) haben Sie ungefähr während der letzten 6 Monate für nicht verschreibungspflichtige Medikamente zur Behandlung von MS Symptomen ausgegeben?"
* item[=].item[=].type = $item-type#integer
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false

* item[=].item[+].linkId = "MS-HRS.1.11"
* item[=].item[=].prefix = "11"
* item[=].item[=].text = "Wieviel (in Euro) haben Sie ungefähr aufgrund ihrer MS während der letzten 6 Monate für medizinische Verbrauchsartikel (z.B. Verbände, Pflaster) ausgegeben?"
* item[=].item[=].type = $item-type#integer
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false

* item[=].item[+].linkId = "MS-HRS.1.12"
* item[=].item[=].prefix = "12"
* item[=].item[=].text = "Haben Sie in den vergangenen 6 Monaten Veränderungen an Ihrem Haus, Ihrer Wohnung oder Ihrem Auto vorgenommen, oder haben Sie besondere Ausrüstungen oder Hilfsmittel aufgrund Ihrer MS benötigt?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.1.12.1"
* item[=].item[=].text = "Und zwar (in Euro):"
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "MS-HRS.1.12"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA32-6
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "MS-HRS.1.12.1.1"
* item[=].item[=].item[=].text = "Veränderungen am Haus aufgrund von Problemen, die mit Ihrer MS in Verbindung
stehen:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.12.1.2"
* item[=].item[=].item[=].text = "Veränderungen am Auto aufgrund von Problemen, die mit Ihrer MS in Verbindung
stehen:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.12.1.3"
* item[=].item[=].item[=].text = "Gehhilfen, Rollstuhl (manuell oder elektrisch), Elektroroller:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.12.1.4"
* item[=].item[=].item[=].text = "Spezielles Krankenbett:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].initial.valueInteger = 0

* item[=].item[=].item[+].linkId = "MS-HRS.1.12.1.5"
* item[=].item[=].item[=].text = "Andere Veränderungen:"
* item[=].item[=].item[=].type = $item-type#group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "MS-HRS.1.12.1.5.1"
* item[=].item[=].item[=].item[=].text = "Benennung:"
* item[=].item[=].item[=].item[=].type = $item-type#string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false

* item[=].item[=].item[=].item[+].linkId = "MS-HRS.1.12.1.5.2"
* item[=].item[=].item[=].item[=].text = "Kosten (in Euro):"
* item[=].item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false

* item[+].linkId = "MS-HRS.2"
* item[=].prefix = "II"
* item[=].text = "Vertiefende Fragen (13 bis 24)"
* item[=].type = $item-type#group
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = true

* item[=].item[+].linkId = "MS-HRS.2.1"
* item[=].item[=].prefix = "13"
* item[=].item[=].text = "Um wie viele Stunden pro Woche mussten Sie im letzten halben Jahr Ihr Arbeitspensum dauerhaft reduzieren? (Falls nicht zutreffend, dann „0“)"
* item[=].item[=].type = $item-type#integer
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].initial.valueInteger = 0

* item[=].item[+].linkId = "MS-HRS.2.2"
* item[=].item[=].prefix = "14"
* item[=].item[=].text = "Aufgrund meiner MS hat sich mein Verdienst in den letzten 6 Monaten um ... Euro verringert. (Falls nicht zutreffend, dann „0“)"
* item[=].item[=].type = $item-type#integer
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].initial.valueInteger = 0

* item[=].item[+].linkId = "MS-HRS.2.3"
* item[=].item[=].prefix = "15"
* item[=].item[=].text = "Aufgrund meiner MS musste ich in den letzten 6 Monaten die Art meiner Arbeit bzw. meine Stelle wechseln."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.2.4"
* item[=].item[=].prefix = "16"
* item[=].item[=].text = "Haben Ihre Angehörigen während der letzten 6 Monate Ihre Arbeitszeit reduziert, um Sie aufgrund Ihrer MS zu unterstützen?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.2.4.1"
* item[=].item[=].text = "Und zwar:"
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "MS-HRS.2.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA32-6
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "MS-HRS.2.4.1.1"
* item[=].item[=].item[=].text = "Von ... Stunden pro Woche:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false

* item[=].item[=].item[+].linkId = "MS-HRS.2.4.1.2"
* item[=].item[=].item[=].text = "Auf ... Stunden pro Woche:"
* item[=].item[=].item[=].type = $item-type#integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false

* item[=].item[+].linkId = "MS-HRS.2.5"
* item[=].item[=].prefix = "17"
* item[=].item[=].text = "Sind Sie für die Versorgung anderer Familienangehöriger verantwortlich (z.B. pflegebedürftige Verwandte oder Kinder - einschließlich Kindern in der Ausbildung)?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(YesNoVS)

* item[=].item[+].linkId = "MS-HRS.2.6"
* item[=].item[=].prefix = "18"
* item[=].item[=].text = "Bei welchen Alltagsaufgaben benötigen Sie Hilfe durch professionelle Betreuer oder Familie und Betreuungsfachkräfte, Haushaltshilfen, persönliche Angehörige? (Mehrfachnennungen möglich)."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(AlltagsaufgabenVS)

* item[=].item[+].linkId = "MS-HRS.2.7"
* item[=].item[=].prefix = "19"
* item[=].item[=].text = "Welchen Bildungsgrad haben Sie erworben?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(BildungsgradeVS)

* item[=].item[+].linkId = "MS-HRS.2.8"
* item[=].item[=].prefix = "20"
* item[=].item[=].text = "Wohnen Sie ...?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(WohnsituationenVS)

* item[=].item[+].linkId = "MS-HRS.2.9"
* item[=].item[=].prefix = "21"
* item[=].item[=].text = "Ihr Krankenversicherungsstatus:"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(KrankenversicherungsartenVS)

* item[=].item[+].linkId = "MS-HRS.2.10"
* item[=].item[=].prefix = "22"
* item[=].item[=].text = "Ich bin als ... eingestuft."
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(BehinderungseinstufungenVS)

* item[=].item[+].linkId = "MS-HRS.2.10.1"
* item[=].item[=].text = "Merkmale und Merkzeichen im Schwerbehindertenausweis:"
* item[=].item[=].type = $item-type#group
* item[=].item[=].enableWhen.question = "MS-HRS.2.10"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#!=
* item[=].item[=].enableWhen.answerCoding = $q4ms-behinderungseinstufungen#BE_NOT_HANDICAPPED
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "MS-HRS.2.10.1.1"
* item[=].item[=].item[=].text = "Grad der Behinderung:"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(BehinderungsgradeVS)

* item[=].item[=].item[+].linkId = "MS-HRS.2.10.1.2"
* item[=].item[=].item[=].text = "Folgende Merkzeichen zur Schwerbehinderung treffen zu:"
* item[=].item[=].item[=].type = $item-type#choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = Canonical(MerkzeichenSchwerbehinderungVS)

* item[=].item[+].linkId = "MS-HRS.2.11"
* item[=].item[=].prefix = "23"
* item[=].item[=].text = "Ihr Pflegegrad:"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PflegegradeVS)

* item[=].item[+].linkId = "MS-HRS.2.12"
* item[=].item[=].prefix = "24"
* item[=].item[=].text = "Benutzen Sie derzeit eines der folgenden Geräte aufgrund ihrer MS: (Mehrfachnennungen möglich)"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(GehbehinderungshilfsmittelVS)
