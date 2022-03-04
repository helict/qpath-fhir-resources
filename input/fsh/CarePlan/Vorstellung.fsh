Instance: VorstellungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Erst- oder Wiedervorstellung"
Description: "Beispiel CarePlan zur Erstvorstellung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSVorstellung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(VorstellungExampleRG)

Instance: VorstellungExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Erstvorstellung"
Description: "Beispiel RequestGroup zur Erstvorstellung eines Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSVorstellung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action[0].id = "appointment"
* action[=].title = "Terminvereinbarung"
* action[=].description = "Termin zur Vorstellung vereinbaren"
* action[=].resource = Reference(TerminvereinbarungExampleCP)
* action[+].title = "Dokumente anfragen"
* action[=].description = "Dokumente beim Patienten anfragen"
* action[=].relatedAction.actionId = "appointment"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(DokumenteAnfragenPatientExampleCP)

// Vorstellung -> Terminvereinbarung 

Instance: TerminvereinbarungExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel CarePlan zur Terminvereinbarung mit einem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(TerminvereinbarungExampleRG)

Instance: TerminvereinbarungExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel Appointment zur Terminvereinbarung mit einem Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSTerminvereinbarung)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Termin mit Patient vereinbaren"
* action.resource = Reference(TerminvereinbarungExampleAPT)

// TODO: Klaeren was genau an Informationen benoetigt/geliefert wird
Instance: TerminvereinbarungExampleAPT
InstanceOf: Appointment
Usage: #example
Title: "Beispiel Terminvereinbarung"
Description: "Beispiel Appointment mit einem Terminvorschlag für einen Patienten (M0)"
* status = $appointment-status#proposed
* appointmentType = $v2-0276#ROUTINE
* description = "Terminvereinbarung im Rahmen des Basismonitorings"
* minutesDuration = 21600
* created = "2022-01-12T12:00:00Z"
* patientInstruction = "Bitte prüfen Sie den Terminvorschlag und bestätigen oder lehnen diesen ab."
* participant.type = $v3-participation-type#PPRF
* participant.actor = Reference(PatientJohnDoe)
* participant.required = $participant-required#required
* participant.status = $participation-status#needs-action
* participant.period.start = "2022-01-17T00:00:00Z"
* participant.period.end = "2022-01-21T00:00:00Z"

// Vorstellung -> DokumenteAnfragenPatient

Instance: DokumenteAnfragenPatientExampleCP
InstanceOf: CarePlan
Usage: #example
Title: "Beispiel CarePlan Dokumente anfragen"
Description: "Beispiel CarePlan für eine Dokumentenanfrage beim Patienten (M0)"
* instantiatesCanonical = Canonical(Q4MSDokumenteAnfragenPatient)
* status = $publication-status#draft
* intent = $request-intent#option
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(DokumenteAnfragenPatientExampleRG)

Instance: DokumenteAnfragenPatientExampleRG
InstanceOf: RequestGroup
Title: "Beispiel RequestGroup Dokumente anfragen"
Description: "Beispiel RequestGroup für eine Dokumentenanfrage beim Patienten (M0)"
Usage: #example
* instantiatesCanonical = Canonical(Q4MSDokumenteAnfragenPatient)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.title = "Dokumente anfragen"
* action.resource = Reference(DokumenteAnfragenPatientExampleTK)