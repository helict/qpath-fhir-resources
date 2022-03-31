Instance: CheckInAnfrageExampleBM
InstanceOf: Bundle
Usage: #example
Title: "Beispiel Check-In-Anfrage"
Description: "Beispiel Bundle Nachricht einer Check-In-Anfrage"
* type = $bundle-type#message
* entry[0].fullUrl = "MessageHeader/CheckInAnfrageExampleMH"
* entry[=].resource = CheckInAnfrageExampleMH
* entry[+].fullUrl = "Task/CheckInExampleTSK"
* entry[=].resource = CheckInExampleTSK
* entry[+].fullUrl = "Task/EmiqFragebogenAusfuellenExampleTSK"
* entry[=].resource = EmiqFragebogenAusfuellenExampleTSK
* entry[+].fullUrl = "Appointment/ErsterBesuchsterminExampleAPT"
* entry[=].resource = ErsterBesuchsterminExampleAPT 
* entry[+].fullUrl = "Questionnaire/ExerciseMentalIllnessQuestionnaire"
* entry[=].resource = ExerciseMentalIllnessQuestionnaire 