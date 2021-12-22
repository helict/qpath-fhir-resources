Instance: Q4MSBasismonitoring
InstanceOf: PlanDefinition
Title: "Basismonitoring Patientepfad PlanDefinition"
Usage: #definition
* url = "http://qpath.ukdd.de/PlanDefinition/Q4MSBasismonitoring"
* type = $plan-definition-type#clinical-protocol
* status = #draft
* experimental = true
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #multiple
* action.action[0].id = "admission"
* action.action[=].title = "Vorstellung"
* action.action[=].description = "Erst- und Wiedervostellung"
* action.action[=].definitionCanonical = Canonical(Q4MSVorstellung)
* action.action[+].id = "diagnostic-testing"
* action.action[=].title = "Voruntersuchung"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].relatedAction.actionId = "admission"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].definitionCanonical = Canonical(Q4MSVoruntersuchung)
* action.action[+].id = "examination"
* action.action[=].title = "Arztvorstellung"
* action.action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action.action[=].relatedAction.actionId = "diagnostic-testing"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].definitionCanonical = Canonical(Q4MSArztvorstellung)
* action.action[+].id = "discharge"
* action.action[=].title = "Entlassung"
* action.action[=].description = "Patient nach Hause entlassen"
* action.action[=].relatedAction.actionId = "examination"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].definitionCanonical = Canonical(Q4MSEntlassung)