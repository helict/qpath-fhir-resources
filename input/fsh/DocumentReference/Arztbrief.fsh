Profile: Q4MSArztbriefProfile
Parent: Q4MSDokumentProfile
Title: "Arztbrief DocumentReference Profile"
* status = $document-reference-status#current
* docStatus = $composition-status#preliminary
* type = $ihe-xds-type-code#BERI
* category = $ihe-xds-class-code#BRI
* description = "Profil eines Arztbriefs"
* securityLabel = $ihe-xds-confidentiality-code#PR
* subject only Reference(Patient)