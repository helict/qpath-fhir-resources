Instance: UnitedKingdomNeurologicalDisabilityRatingScaleQuestionnaire
InstanceOf: Questionnaire
Title: "UNDS"
Description: "United Kingdom Neurological Disability Rating Scale Questionnaire (UNDS), deutsche Version"
Usage: #definition
* insert QuestionnaireMetadataActive
* url = $q4ms-unds-questionnaire
* name = "UNDS"
* title = "United Kingdom Neurological Disability Rating Scale Questionnaire"
* item[0].linkId = "UNDS-1"
* item[=].text = "Kognitive Störungen"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-1.1"
* item[=].item[=].text = "Haben Sie irgendwelche Probleme mit Ihrer Merkfähigkeit oder der Fähigkeit, sich auf Dinge zu konzentrieren und sie zu Ende zu führen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-1.2"
* item[=].item[=].text = "Denken Ihre Familienmitglieder oder Freunde, daß Sie Probleme dieser Art haben?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-1.3"
* item[=].item[=].text = "Benötigen Sie für alltägliche Verrichtungen, wie z.B. bei Geldangelegenheiten, beim Schreiben kurzer Briefe oder für wichtige Entscheidungen die Hilfe anderer Personen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableBehavior = $questionnaire-enable-behavior#any
* item[=].item[=].enableWhen[0].question = "UNDS-1.1"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].enableWhen[+].question = "UNDS-1.2"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[+].linkId = "UNDS-1.4"
* item[=].item[=].text = "Orientierung zu Zeit, Ort und Person?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].enableWhen.question = "UNDS-1.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 0
* item[=].item[=].answerOption[=].valueCoding.display = "Ja, uneingeschränkt"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 1
* item[=].item[=].answerOption[=].valueCoding.display = "Ja, zum Teil"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 2
* item[=].item[=].answerOption[=].valueCoding.display = "Nein, völlig desorientiert"
* item[+].linkId = "UNDS-2"
* item[=].text = "Stimmung"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-2.1"
* item[=].item[=].text = "Waren Sie im vergangenen Monat ängstlich, gereizt, depressiv oder hatten Sie irgendwelche Stimmungsschwankungen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-2.2"
* item[=].item[=].text = "Nehmen Sie bei Problemen dieser Art Medikamente ein?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-2.3"
* item[=].item[=].text = "Hat Sie dieses Problem in Ihrer Fähigkeit beeinträchtigt, irgendeiner Ihrer gewöhnlichen Alltagsaktivitäten, z.B. am Arbeitsplatz, bei der Hausarbeit, oder Ihren normalen gesellschaftlichen Aktivitäten in der Familie oder mit Freunden nachzugehen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableBehavior = $questionnaire-enable-behavior#any
* item[=].item[=].enableWhen[0].question = "UNDS-2.1"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].enableWhen[+].question = "UNDS-2.2"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[+].linkId = "UNDS-2.4"
* item[=].item[=].text = "War dieses Problem so schwer, daß Sie keine Ihrer gewöhnlichen Alltagsaktivitäten nachgehen konnten?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-2.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-2.5"
* item[=].item[=].text = "Haben Sie ernsthaft darüber nachgedacht, sich das Leben zu nehmen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-2.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-2.6"
* item[=].item[=].text = "Wurden Sie zur Behandlung Ihres Gemütsproblems in ein Krankenhaus oder eine Klinik eingewiesen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-2.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-3"
* item[=].text = "Sehen"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-3.1"
* item[=].item[=].text = "Haben Sie irgendwelche Sehprobleme, die mit einer gewöhnlichen Brille nicht korrigiert werden können?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-3.2"
* item[=].item[=].text = "Können Sie die normale Zeitungsschrift lesen (mit einer gewöhnlichen Brille, falls Sie eine tragen, aber ohne Vergrößerungsglas oder ähnliches)?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-3.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-3.3"
* item[=].item[=].text = "Sehen Sie gut genug, um einen Freund auf der gegenüberliegenden Straßenseite erkennen zu können?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-3.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[+].linkId = "UNDS-3.4"
* item[=].item[=].text = "Sehen Sie gut genug, um einen Freund am anderen Ende des Zimmers erkennen zu können?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-3.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[+].linkId = "UNDS-3.5"
* item[=].item[=].text = "Sehen Sie gut genug, um einen Freund im Abstand einer Armeslänge zu erkennen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-3.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = false
* item[+].linkId = "UNDS-4"
* item[=].text = "Sprache und Kommunikation"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-4.1"
* item[=].item[=].text = "Haben Sie Probleme mit dem Redefluß oder Schwierigkeiten, Worte zu finden und auszusprechen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-4.2"
* item[=].item[=].text = "Müssen Sie sich wiederholen, wenn Sie mit fremden Personen sprechen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-4.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-4.3"
* item[=].item[=].text = "Müssen Sie sich wiederholen, wenn Sie mit Familienmitgliedern oder engen Freunden sprechen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-4.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-4.4"
* item[=].item[=].text = "Müssen Sie sich der Zeichensprache bedienen oder benötigen Sie die Hilfe Ihrer Pflegeperson, um sich verständlich zu machen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-4.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-4.5"
* item[=].item[=].text = "Können Sie sich gut verständigen, wenn Sie diese Methoden anwenden?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-4.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-5"
* item[=].text = "Schlucken"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-5.1"
* item[=].item[=].text = "Müssen Sie beim Schlucken von festen oder flüssigen Speisen aufpassen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-5.2"
* item[=].item[=].text = "Müssen Sie bei den meisten Mahlzeiten aufpassen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-5.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-5.3"
* item[=].item[=].text = "Benötigen Sie eine spezielle Diät, z.B. halbfeste oder verflüssigte Nahrungsmittel, damit Sie schlucken können?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-5.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-5.4"
* item[=].item[=].text = "Verschlucken Sie sich bei den meisten Mahlzeiten?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-5.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-5.5"
* item[=].item[=].text = "Haben Sie eine Magensonde (Nasensonde oder Magenrohr)?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-5.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-6"
* item[=].text = "Obere Extremität"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-6.1"
* item[=].item[=].text = "Haben Sie irgendwelche Probleme mit Ihren Armen oder Händen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-6.2"
* item[=].item[=].text = "Haben Sie Schwierigkeiten mit irgendwelchen Reißverschlüssen oder Knöpfen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-6.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-6.3"
* item[=].item[=].text = "Können Sie alle Ihre Reißverschlüsse und Knöpfe ohne Hilfe öffnen und schließen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-6.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-6.4"
* item[=].item[=].text = "Haben Sie irgendwelche Schwierigkeiten, Ihr Gesicht zu waschen, Ihre Zähne zu putzen und sich zu rasieren oder schminken?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-6.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-6.5"
* item[=].item[=].text = "Können Sie sich ohne Hilfe Ihr Gesicht waschen, Ihre Zähne putzen und sich rasieren oder schminken?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-6.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-6.6"
* item[=].item[=].text = "Haben Sie irgendwelche Schwierigkeiten, selbständig zu essen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-6.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-6.7"
* item[=].item[=].text = "Können Sie ohne Hilfe essen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-6.6"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-6.8"
* item[=].item[=].text = "Bereitet Ihnen das Knoten von Schnürsenkeln oder Bändern irgendwelche Schwierigkeiten?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-6.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-6.9"
* item[=].item[=].text = "Können Sie ohne Hilfe Schnürsenkel oder Bänder knoten?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-6.8"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-7"
* item[=].text = "Untere Extremität"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-7.1"
* item[=].item[=].text = "Haben Sie irgendwelche Gehprobleme?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-7.2"
* item[=].item[=].text = "Wie bewegen Sie sich normalerweise außerhalb?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].enableWhen.question = "UNDS-7.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 0
* item[=].item[=].answerOption[=].valueCoding.display = "ohne Hilfe"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 1
* item[=].item[=].answerOption[=].valueCoding.display = "mit einem Stock, Gehstütze oder am Arm eines Mitmenschen"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 2
* item[=].item[=].answerOption[=].valueCoding.display = "mit 2 Stöcken, Gehsütze oder am Arm eines Mitmenschen"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 3
* item[=].item[=].answerOption[=].valueCoding.display = "im Rollstuhl"
* item[=].item[+].linkId = "UNDS-7.3"
* item[=].item[=].text = "Wie bewegen Sie sich innerhalb der Wohnung?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].enableWhen.question = "UNDS-7.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 0
* item[=].item[=].answerOption[=].valueCoding.display = "ohne Hilfe"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 1
* item[=].item[=].answerOption[=].valueCoding.display = "mit einem Stock, Gehstütze oder am Arm eines Mitmenschen"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 2
* item[=].item[=].answerOption[=].valueCoding.display = "mit 2 Stöcken, Gehsütze oder am Arm eines Mitmenschen"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* item[=].item[=].answerOption[=].extension.valueDecimal = 3
* item[=].item[=].answerOption[=].valueCoding.display = "im Rollstuhl"
* item[+].linkId = "UNDS-8"
* item[=].text = "Blase"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-8.1"
* item[=].item[=].text = "Haben Sie Probleme mit dem Wasserlassen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-8.2"
* item[=].item[=].text = "Nehmen Sie bei Problemen dieser Art Medikamente ein?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-8.3"
* item[=].item[=].text = "Müssen Sie häufig Wasserlassen, sich beeilen zur Toilette zu kommen oder haben Sie zunächst Schwierigkeiten Wasser zu lassen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableBehavior = $questionnaire-enable-behavior#any
* item[=].item[=].enableWhen[0].question = "UNDS-8.1"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].enableWhen[+].question = "UNDS-8.2"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[+].linkId = "UNDS-8.4"
* item[=].item[=].text = "Waren Sie in den letzten 4 Wochen inkontinent?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-8.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-8.5"
* item[=].item[=].text = "Waren Sie in der letzten Woche inkontinent?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-8.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-8.6"
* item[=].item[=].text = "Waren Sie jeden Tag inkontinent?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-8.5"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-8.7"
* item[=].item[=].text = "Benötigen Sie zur Blasenentleerung einen Katheter?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-8.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-8.8"
* item[=].item[=].text = "Benötigen Sie einen Dauerkatheter oder (nur für Männer) verwenden Sie zum Auffangen des Urins ein Kondom?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-8.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-9"
* item[=].text = "Darmfunktion"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-9.1"
* item[=].item[=].text = "Haben Sie irgendwelche Probleme mit Ihrer Darmtätigkeit?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-9.2"
* item[=].item[=].text = "Nehmen Sie bei Problemen dieser Art Medikamente ein?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-9.3"
* item[=].item[=].text = "Leiden Sie unter Verstopfung?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableBehavior = $questionnaire-enable-behavior#any
* item[=].item[=].enableWhen[0].question = "UNDS-9.1"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].enableWhen[+].question = "UNDS-9.2"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[+].linkId = "UNDS-9.4"
* item[=].item[=].text = "Benötigen sie deswegen ein Abführmittel oder verwenden sie Zäpfchen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-9.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-9.5"
* item[=].item[=].text = "Machen sie deswegen regelmäßig Einläufe?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-9.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-9.6"
* item[=].item[=].text = "Führen sie regelmäßig eine Darmentleerung mit der Hand durch?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-9.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-9.7"
* item[=].item[=].text = "Müssen sie sich beeilen zur Toilette zu gelangen, um abzuführen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-9.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-9.8"
* item[=].item[=].text = "Traten im vergangenem Monat unvorhergesehene Darmfunktionsstörungen (Inkontinenz) auf?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-9.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-9.9"
* item[=].item[=].text = "Traten solche Darmstörungen jede Woche auf?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-9.8"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-10"
* item[=].text = "Müdigkeit"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-10.1"
* item[=].item[=].text = "Haben sie sich im vergangenen Monat müde oder leicht ermüdbar gefühlt?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-10.2"
* item[=].item[=].text = "Haben Sie sich an den meisten Tagen müde oder leicht ermüdbar gefühlt?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-10.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-10.3"
* item[=].item[=].text = "Hat diese Müdigkeit Sie in ihrer Fähigkeit beeinträchtigt, irgendeiner gewöhnlichen Alltagsaktivität, z.B. am Arbeitsplatz, im Haushalt, oder ihren normalen gesellschaftlichen Aktivitäten mit Familienmitgliedern oder Freunden nachzugehen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-10.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-10.4"
* item[=].item[=].text = "War diese Müdigkeit so stark, daß sie keiner Ihrer gewöhnlichen Alltagsaktivitäten nachgehen konnten?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-10.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-10.5"
* item[=].item[=].text = "Was diese Müdigkeit so stark, dass sie keiner körperlichen und geistigen Aktivitäten nachgehen konnten?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-10.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-11"
* item[=].text = "Sexualität"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-11.1"
* item[=].item[=].text = "Der folgende Fragenkomplex betrifft die sexuelle Aktivität. Haben sie etwas dagegen, dazu befragt zu werden?"
* item[=].item[=].type = $item-type#choice
* item[=].item[=].answerOption[0].valueCoding.display = "Ja"
* item[=].item[=].answerOption[+].valueCoding.display = "Nein"
* item[=].item[=].answerOption[+].valueCoding.display = "nicht zutreffend (sexuell enthaltsam)"
* item[=].item[+].linkId = "UNDS-11.2"
* item[=].item[=].text = "Haben sie irgendwelche sexuellen Probleme?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-11.1"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerCoding.display = "Nein"
* item[=].item[+].linkId = "UNDS-11.3"
* item[=].item[=].text = "Leiden sein unter mangelndem sexuellem Interesse?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-11.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-11.4"
* item[=].item[=].text = "Haben Sie irgendwelche Probleme, sich oder ihren Sexualpartner zu befriedigen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-11.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-11.5"
* item[=].item[=].text = "Haben sie irgendwelche körperlichen Probleme im Zusammenhang mit ihrer sexuellen Aktivität, z.B. veränderte Empfindungen im Bereich der Geschlechtsteile, Schmerzen oder Krämpfe?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-11.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-11.6"
* item[=].item[=].text = "(Für Männer) Haben sie Erektions- und / oder Orgasmusproblem? (Für Frauen): Haben sie im Bereich der Scheide Feuchtigkeitsbildungsprobleme oder Orgasmusprobleme?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-11.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-11.7"
* item[=].item[=].text = "Ist ihre sexuelle Aktivität durch derartige Probleme beeinträchtigt?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-11.2"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-11.8"
* item[=].item[=].text = "Halten diese Probleme sie von jeglicher sexueller Aktivität ab?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-11.7"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-12"
* item[=].text = "Schmerzen"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-12.1"
* item[=].item[=].text = "Haben Sie MS-bedingt Schmerzen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-12.2"
* item[=].item[=].text = "Nehmen sie bei diesem Problem Medikamente ein?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-12.3"
* item[=].item[=].text = "Hat dieses Problem ihre Fähigkeit beeinträchtigt, irgendeiner gewöhnlichen Alltagsaktivität nachzugehen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableBehavior = $questionnaire-enable-behavior#any
* item[=].item[=].enableWhen[0].question = "UNDS-12.1"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].enableWhen[+].question = "UNDS-12.2"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[+].linkId = "UNDS-12.4"
* item[=].item[=].text = "Ist diese Problem so schwerwiegend, daß sie keiner ihrer gewöhnlichen Alltagsaktivitäten nachgehen können?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-12.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-12.5"
* item[=].item[=].text = "Wurden sie wegen dieses Problems zur Behandlung in ein Krankenhaus oder eine Klinik eingewiesen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-12.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[+].linkId = "UNDS-13"
* item[=].text = "Andere MS bedingte Probleme"
* item[=].type = $item-type#group
* item[=].item[0].linkId = "UNDS-13.1"
* item[=].item[=].text = "Haben Sie sonstige MS-bedingte Beschwerden?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-13.2"
* item[=].item[=].text = "Nehmen sie bei diesem Problem Medikamente ein?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[+].linkId = "UNDS-13.3"
* item[=].item[=].text = "Hat dieses Problem ihre Fähigkeit beeinträchtigt, irgendeiner gewöhnlichen Alltagsaktivität nachzugehen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableBehavior = $questionnaire-enable-behavior#any
* item[=].item[=].enableWhen[0].question = "UNDS-13.1"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].enableWhen[+].question = "UNDS-13.2"
* item[=].item[=].enableWhen[=].operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[+].linkId = "UNDS-13.4"
* item[=].item[=].text = "Ist diese Problem so schwerwiegend, dass Sie keine ihrer gewöhnlichen Alltagsaktivitäten nachgehen können?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-13.3"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].linkId = "UNDS-13.5"
* item[=].item[=].text = "Wurden sie wegen dieses Problems zur Behandlung in ein Krankenhaus oder eine Klinik eingewiesen?"
* item[=].item[=].type = $item-type#boolean
* item[=].item[=].enableWhen.question = "UNDS-13.4"
* item[=].item[=].enableWhen.operator = $questionnaire-enable-operator#=
* item[=].item[=].enableWhen.answerBoolean = true
