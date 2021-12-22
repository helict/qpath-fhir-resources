Profile: Q4MSLaborergebnisProfile
Parent: DocumentReference
Title: "Laborergebnis DocumentReference Profile"
* status = $document-reference-status#current
* docStatus = $composition-status#preliminary
* type = $ihe-xds-type-code#BEFU
* category = $ihe-xds-class-code#LAB
* description = "Profil eines Laborergebnisses"
* securityLabel = $ihe-xds-confidentiality-code#PR
* subject only Reference(Patient)