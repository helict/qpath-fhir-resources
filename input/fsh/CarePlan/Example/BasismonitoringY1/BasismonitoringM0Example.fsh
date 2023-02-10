Instance: BasismonitoringM0ExampleCP
InstanceOf: CarePlan
Usage: #example
  Title: "Beispiel Basismonitoring Patientenpfad - Besuchstermin M0"
  Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz zum Besuchstermin am 01.11.2022 (M0)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoringM0)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* activity.reference = Reference(BasismonitoringM0ExampleRG)
* partOf = Reference(BasismonitoringY1ExampleCP)
* encounter = Reference(BesuchsterminM0ExampleENC)
// after scheduling:
* period.start = "2022-11-01"

Instance: BasismonitoringM0ExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Basismonitoring Patientenpfad - Besuchstermin M0"
Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz zum Besuchstermin am 01.11.2022 (M0)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoringM0)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientPseudonym)
* encounter = Reference(BesuchsterminM0ExampleENC)

// * action.groupingBehavior = #logical-group
// * action.selectionBehavior = #all
// * action.requiredBehavior = #must-unless-documented
// * action.cardinalityBehavior = #multiple

* action[0].id = "check-in"
* action[=].title = "Check-In"
* action[=].description = "Check-In durchführen"
// Checkin 7 Tage vor Voruntersuchungen => 7 Tage vor Besuchstermin
* action[=].relatedAction.actionId = "check-in"
* action[=].relatedAction.relationship = #before-start
* action[=].relatedAction.offsetDuration.value = 7
* action[=].relatedAction.offsetDuration.system = $ucum
* action[=].relatedAction.offsetDuration.code = $ucum#d
* action[=].resource = Reference(CheckInM0ExampleCP)
* action[+].id = "diagnostics"
* action[=].title = "Voruntersuchungen"
* action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action[=].resource = Reference(VoruntersuchungenM0ExampleCP)
* action[+].id = "examination"
* action[=].title = "Arztvorstellung"
* action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action[=].relatedAction.actionId = "diagnostics"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(ArztvorstellungM0ExampleCP)
* action[+].id = "schedule-appointment"
* action[=].title = "Terminvereinbarung"
* action[=].description = "Termin für nächsten Besuch vereinbaren"
* action[=].relatedAction.actionId = "examination"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(TerminvereinbarungM0ExampleCP)
* action[+].id = "check-out"
* action[=].title = "Check-Out"
* action[=].description = "Check-Out durchführen"
* action[=].relatedAction.actionId = "schedule-appointment"
* action[=].relatedAction.relationship = #after-end
* action[=].resource = Reference(CheckOutM0ExampleCP)