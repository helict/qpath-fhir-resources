Instance: BasismonitoringM3ExampleCP
InstanceOf: CarePlan
Usage: #example
  Title: "Beispiel Basismonitoring Patientenpfad - Besuchstermin M3"
  Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz zum Besuchstermin am 01.02.2023 (M3)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoringM3)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(BasismonitoringM3ExampleRG)
* encounter = Reference(BesuchsterminM3ExampleENC)
// after scheduling:
* period.start = "2023-02-01"

Instance: BasismonitoringM3ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Basismonitoring Patientenpfad - Besuchstermin M3"
Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz zum Besuchstermin am 01.02.2023 (M3)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoringM3)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* encounter = Reference(BesuchsterminM3ExampleENC)

// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #multiple

* action[0].id = "check-in"
* action[=].title = "Check-In"
* action[=].description = "Check-In durchführen"
* action[=].resource = Reference(CheckInM3ExampleCP)
* action[+].id = "diagnostics"
* action[=].title = "Voruntersuchungen"
* action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action[=].relatedAction.actionId = "check-in"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(VoruntersuchungenM3ExampleCP)
* action[+].id = "examination"
* action[=].title = "Arztvorstellung"
* action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action[=].relatedAction.actionId = "diagnostics"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(ArztvorstellungM3ExampleCP)
* action[+].id = "schedule-appointment"
* action[=].title = "Terminvereinbarung"
* action[=].description = "Termin für nächsten Besuch vereinbaren"
* action[=].relatedAction.actionId = "examination"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(TerminvereinbarungM3ExampleCP)
* action[+].id = "check-out"
* action[=].title = "Check-Out"
* action[=].description = "Check-Out durchführen"
* action[=].relatedAction.actionId = "schedule-appointment"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(CheckOutM3ExampleCP)