Profile: Q4MSRezeptProfile
Parent: DocumentReference
Title: "Rezept DocumentReference Profile"
* status = $document-reference-status#current
* docStatus = $composition-status#preliminary
* type = $ihe-xds-type-code#MEDI
* category = $ihe-xds-class-code#VER
* description = "Profil eines Rezepts"
* securityLabel = $ihe-xds-confidentiality-code#N
* subject only Reference(Patient)