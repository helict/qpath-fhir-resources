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
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #multiple
* action.action[0].id = "check-in"
* action.action[=].title = "Check-In"
* action.action[=].description = "Check-In durchführen"
// Checkin 7 Tage vor Voruntersuchungen => 7 Tage vor Besuchstermin
* action.action[=].relatedAction.actionId = "check-in"
* action.action[=].relatedAction.relationship = #before-start
* action.action[=].relatedAction.offsetDuration.value = 7
* action.action[=].relatedAction.offsetDuration.system = $ucum
* action.action[=].relatedAction.offsetDuration.code = $ucum#d
* action.action[=].resource = Reference(CheckInM0ExampleCP)
* action.action[+].id = "diagnostics"
* action.action[=].title = "Voruntersuchungen"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].resource = Reference(VoruntersuchungenM0ExampleCP)
* action.action[+].id = "examination"
* action.action[=].title = "Arztvorstellung"
* action.action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action.action[=].relatedAction.actionId = "diagnostics"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(ArztvorstellungM0ExampleCP)
* action.action[+].id = "schedule-appointment"
* action.action[=].title = "Terminvereinbarung"
* action.action[=].description = "Termin für nächsten Besuch vereinbaren"
* action.action[=].relatedAction.actionId = "examination"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(TerminvereinbarungM0ExampleCP)
* action.action[+].id = "check-out"
* action.action[=].title = "Check-Out"
* action.action[=].description = "Check-Out durchführen"
* action.action[=].relatedAction.actionId = "schedule-appointment"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(CheckOutM0ExampleCP)