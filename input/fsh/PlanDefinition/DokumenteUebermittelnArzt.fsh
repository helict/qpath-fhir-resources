Instance: Q4MSDokumenteUebermittelnArzt
InstanceOf: PlanDefinition
Title: "Dokumente an Arzt übermitteln"
Description: "PlanDefinition zur Uebermittlung von Dokumenten an einen Arzt"
Usage: #definition
* url = $q4ms-dokumente-uebermitteln-arzt
* name = "Q4MSDokumenteUebermittelnArzt"
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Dokumente übermitteln"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSDokumenteUebermittelnAD)
