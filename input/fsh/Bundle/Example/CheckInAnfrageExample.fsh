Instance: CheckInAnfrageExampleBM
InstanceOf: Bundle
Usage: #example
Title: "Beispiel Check-In-Anfrage"
Description: "Beispiel Bundle Nachricht einer Check-In-Anfrage"
* type = $bundle-type#message
* entry[0].fullUrl = "urn:uuid:af021986-5fda-4a75-b3d8-71ad1474fc49"
* entry[=].resource = CheckInAnfrageExampleMH
* entry[+].fullUrl = "urn:uuid:47d39109-4e14-4a44-bd7a-fdd887ed86aa"
* entry[=].resource = CheckInExampleTSK
* entry[+].fullUrl = "urn:uuid:fb3902cc-5265-4ec6-9476-99434350b5b3"
* entry[=].resource = EmiqFragebogenAusfuellenExampleTSK
* entry[+].fullUrl = "urn:uuid:885d5730-4e21-4325-9914-df03ebfac192"
* entry[=].resource = ErsterBesuchsterminExampleAPT