Instance: BasismonitoringExampleCP
InstanceOf: CarePlan
Usage: #example
  Title: "Beispiel Basismonitoring Patientenpfad"
  Description: "Beispiel CarePlan einer Basismonitoring-Patientenpfadinstanz bei Erstvorstellung (M0) von Patient John Doe nach Überweisung aus der ambulanten neurologischen Einrichtung"
* contained = BasismonitoringExampleRG
* instantiatesCanonical = Canonical(Q4MSBasismonitoring)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* activity.reference = Reference(BasismonitoringExampleRG)

Instance: BasismonitoringExampleRG
InstanceOf: RequestGroup
Usage: #inline
Title: "Beispiel Basismonitoring Patientenpfad"
Description: "Beispiel RequestGroup einer Basismonitoring-Patientenpfadinstanz (M0)"
* instantiatesCanonical = Canonical(Q4MSBasismonitoring)
* status = $publication-status#draft
* intent = $request-intent#plan
* subject = Reference(PatientJohnDoe)
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.requiredBehavior = #must-unless-documented
* action.cardinalityBehavior = #multiple
* action.action[0].id = "admission"
* action.action[=].title = "Vorstellung"
* action.action[=].description = "Erst- und Wiedervostellung"
* action.action[=].resource = Reference(VorstellungExampleCP)
* action.action[+].id = "diagnostic-testing"
* action.action[=].title = "Voruntersuchung"
* action.action[=].description = "Diagnostische Voruntersuchungen durchführen"
* action.action[=].relatedAction.actionId = "admission"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(VoruntersuchungExampleCP)
* action.action[+].id = "examination"
* action.action[=].title = "Arztvorstellung"
* action.action[=].description = "Voruntersuchungen auswerten und Therapiemaßnahmen ableiten"
* action.action[=].relatedAction.actionId = "diagnostic-testing"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(ArztvorstellungExampleCP)
* action.action[+].id = "discharge"
* action.action[=].title = "Entlassung"
* action.action[=].description = "Patient nach Hause entlassen"
* action.action[=].relatedAction.actionId = "examination"
* action.action[=].relatedAction.relationship = #after-end
* action.action[=].resource = Reference(EntlassungExampleCP)
