Instance: Q4MSArztvorstellung
InstanceOf: PlanDefinition
Title: "Arztvorstellung"
Description: "PlanDefinition zur Arztvorstellung"
Usage: #definition
* url = $q4ms-arztvorstellung
* name = "Q4MSArztvorstellung"
* type = $plan-definition-type#workflow-definition
* status = $publication-status#draft
* experimental = true
* action[0].id = "examination"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].requiredBehavior = #must-unless-documented
* action[=].cardinalityBehavior = #single
* action[=].action[0].title = "Allgemeine und neurologische Untersuchung"
* action[=].action[=].definitionCanonical = Canonical(Q4MSAllgemeineNeurologischeUntersuchung)
* action[=].action[+].title = "Befundauswertung"
* action[=].action[=].definitionCanonical = Canonical(Q4MSBefundauswertung)
* action[=].action[+].title = "Allgemeine und neurologische Anamnese"
* action[=].action[=].definitionCanonical = Canonical(Q4MSAllgemeineNeurologischeAnamnese)
* action[=].action[+].title = "Therapiespezifische Diagnostik"
* action[=].action[=].definitionCanonical = Canonical(Q4MSTherapiespezifischeDiagnostik)
* action[=].action[+].title = "Zusatzdiagnostik"
* action[=].action[=].definitionCanonical = Canonical(Q4MSZusatzdiagnostik)
* action[+].title = "Auswertung"
* action[=].relatedAction.actionId = "examination"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = Canonical(Q4MSAuswertung)
