Instance: Q4MSDokumenteUebermittelnPatient
InstanceOf: PlanDefinition
Title: "Dokumente an Patient übermitteln PlanDefinition"
Usage: #definition
* url = "http://qpath.ukdd.de/PlanDefinition/Q4MSDokumenteUebermittelnPatient"
* type = $plan-definition-type#eca-rule
* status = #draft
* experimental = true
* action.title = "Dokumente übermitteln"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSDokumenteUebermittelnActivity)