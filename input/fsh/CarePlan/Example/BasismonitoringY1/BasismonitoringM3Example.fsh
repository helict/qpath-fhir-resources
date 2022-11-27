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
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #multiple
* action.action[0].id = "check-in"
* action.action[=].title = "Check-In"
* action.action[=].description = "Check-In durchführen"
* action.action[=].resource = Reference(CheckInM3ExampleCP)
* action.action[+].id = "diagnostics"
* action.action[=].title = "Voruntersuchungen"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].relatedAction.actionId = "check-in"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(VoruntersuchungenM3ExampleCP)
* action.action[+].id = "examination"
* action.action[=].title = "Arztvorstellung"
* action.action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action.action[=].relatedAction.actionId = "diagnostics"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(ArztvorstellungM3ExampleCP)
* action.action[+].id = "schedule-appointment"
* action.action[=].title = "Terminvereinbarung"
* action.action[=].description = "Termin für nächsten Besuch vereinbaren"
* action.action[=].relatedAction.actionId = "examination"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(TerminvereinbarungM3ExampleCP)
* action.action[+].id = "check-out"
* action.action[=].title = "Check-Out"
* action.action[=].description = "Check-Out durchführen"
* action.action[=].relatedAction.actionId = "schedule-appointment"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(CheckOutM3ExampleCP)