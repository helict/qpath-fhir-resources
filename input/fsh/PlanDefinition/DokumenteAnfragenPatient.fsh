Instance: Q4MSDokumenteAnfragenPatient
InstanceOf: PlanDefinition
Title: "PlanDefinition Dokumente beim Patient anfragen"
Description: "PlanDefinition zur Anfrage von Dokumenten beim Patient"
Usage: #definition
* url = $q4ms-dokumente-anfragen-patient
* name = "Q4MSDokumenteAnfragenPatient"
* type = $plan-definition-type#eca-rule
* status = $publication-status#draft
* experimental = true
* action.title = "Dokumente anfragen"
* action.type = $action-type#create
* action.definitionCanonical = Canonical(Q4MSDokumenteAnfragenAD)
