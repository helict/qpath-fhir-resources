Instance: Q4MSDokumenteUebermittelnPatient
InstanceOf: PlanDefinition
Title: "Dokumente an Patient übermitteln"
Description: "PlanDefinition zur Uebermittlung von Dokumenten an einen Patient"
Usage: #definition
* url = $q4ms-dokumente-uebermitteln-patient
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Dokumente übermitteln"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSDokumenteUebermittelnAD)
