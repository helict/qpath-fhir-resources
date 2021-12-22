Profile: Q4MSBefundProfile
Parent: DocumentReference
Title: "Befund DocumentReference Profile"
* status = $document-reference-status#current
* docStatus = $composition-status#preliminary
* type = $ihe-xds-type-code#BEFU
* category = $ihe-xds-class-code#BEF
* description = "Profil eines Befunds"
* securityLabel = $ihe-xds-confidentiality-code#PR
* subject only Reference(Patient)