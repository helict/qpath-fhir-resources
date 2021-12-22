Instance: Q4MSDokumenteAbfragenPatient
InstanceOf: PlanDefinition
Title: "Dokumente beim Patienten abfragen PlanDefinition"
Usage: #definition
* url = "http://qpath.ukdd.de/PlanDefinition/Q4MSDokumenteAbfragenPatient"
* type = $plan-definition-type#eca-rule
* status = #draft
* experimental = true
* action.title = "Dokumente abfragen"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSDokumenteAbfragenActivity)