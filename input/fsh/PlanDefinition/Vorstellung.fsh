Instance: Q4MSVorstellung
InstanceOf: PlanDefinition
Title: "Erst- oder Wiedervorstellung PlanDefinition"
Usage: #definition
* url = "http://qpath.ukdd.de/PlanDefinition/Q4MSVorstellung"
* type = $plan-definition-type#workflow-definition
* status = #draft
* experimental = true
* action[0].id = "appointment"
* action[=].title = "Terminvereinbarung"
* action[=].description = "Termin zur Vorstellung vereinbaren"
* action[=].definitionCanonical = Canonical(Q4MSTerminvereinbarung)
* action[+].title = "Dokumente abfragen"
* action[=].description = "Dokumente beim Patienten abfragen"
* action[=].relatedAction.actionId = "appointment"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = Canonical(Q4MSDokumenteAbfragenPatient)