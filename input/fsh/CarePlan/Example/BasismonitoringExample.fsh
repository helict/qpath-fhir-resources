Instance: BasismonitoringExampleCP
InstanceOf: CarePlan
Usage: #example
  Title: "Beispiel Basismonitoring Patientenpfad"
  Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz zum Besuchstermin am 16.08.2021, 10:30 Uhr (M0)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoring)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(BasismonitoringExampleRG)

Instance: BasismonitoringExampleRG
InstanceOf: RequestGroup
Usage: #example
Title: "Beispiel Basismonitoring Patientenpfad"
Description: "Beispiel RequestGroup einer Basismonitoring-Patientenpfadinstanz zum Besuchstermin am 16.08.2021, 10:30 Uhr (M0)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoring)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #multiple
* action.action[0].id = "check-in"
* action.action[=].title = "Check-In"
* action.action[=].description = "Check-In durchführen"
* action.action[=].resource = Reference(CheckInExampleCP)
* action.action[+].id = "diagnostics"
* action.action[=].title = "Voruntersuchungen"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].relatedAction.actionId = "check-in"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(VoruntersuchungenExampleCP)
* action.action[+].id = "examination"
* action.action[=].title = "Arztvorstellung"
* action.action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action.action[=].relatedAction.actionId = "diagnostics"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(ArztvorstellungExampleCP)
* action.action[+].id = "schedule-appointment"
* action.action[=].title = "Terminvereinbarung"
* action.action[=].description = "Termin für nächsten Besuch vereinbaren"
* action.action[=].relatedAction.actionId = "examination"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(TerminvereinbarungExampleCP)
* action.action[+].id = "check-out"
* action.action[=].title = "Check-Out"
* action.action[=].description = "Check-Out durchführen"
* action.action[=].relatedAction.actionId = "schedule-appointment"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(CheckOutExampleCP)