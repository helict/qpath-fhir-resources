# QPath4MS IG

## Basismonitoring-Prozess

TBD

## Beispiel Anwendungsfälle

### Fragebogen ausfüllen

#### Beschreibung

Eine Patientin hat im Multiple Sklerose-Zentrum (MSZ) einen Termin zur Vorstellung im Rahmen des kontinuierlichen Monitorings vereinbart.
In Vorbereitung auf den Besuch im MSZ soll die Patientin einen den EMIQ-Fragebogen ausfüllen und die Antworten bereitstellen, um beim
Besuch im MSZ möglichst wenig Zeit mit vorbereitenden Tätigkeiten zu verbringen. Die Bereitstellung des Fragebogens sowie die Übermittlung
der Antworten soll digital vollzogen werden.

#### FHIR Ressourcen

##### Vorlage und Instanz

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|:-|:-|:-|
|[PlanDefinition](PlanDefinition-Q4MSDokumenteAnfragenPatient.html)|Definition|Definition der geplante Anfrage von Dokumenten bei Patientin|
|[ActivityDefinition](ActivityDefinition-Q4MSDokumenteAnfragenAD.html)|Definition|Definition der einzelnen Schritte zur Anfrage von Dokumenten bei Patientin|
|[CarePlan](CarePlan-DokumenteAnfragenPatientExampleCP.html)|Request|Konkrete Instanz einer Anfrage von Dokumenten bei Patientin|
|[RequestGroup](RequestGroup-DokumenteAnfragenPatientExampleRG.html)|Request|Konkrete Schritte zur Anfrage von Dokumenten bei Patientin|

##### Anfrage (Requested)

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|[Task (Anfrage)](Task-DokumenteAnfragenPatientExampleTK.html)|Request|Beschreibung der Anfrage von Dokumenten bei Patientin|
|[Sub-Task (Anfrage)](Task-EMIQFragebogenAusfuellenExampleTK.html)|Request|Beschreibung der Anfrage zum Ausfüllen eines Fragebogens durch Patientin|
|[Bundle (Anfrage)](Bundle-DokumenteAnfragenPatientExampleBM.html)|-|Nachricht zur Anfrage von Dokumenten bei Patientin|
|[MessageHeader (Anfrage)](MessageHeader-DokumenteAnfragenPatientExampleMH.html)|-|Metadaten zur Nachricht zur Anfrage von Dokumenten bei Patientin|
|[MessageDefinition (Anfrage)](MessageDefinition-Q4MSDokumenteAnfragenMD.html)|-|Vorgaben zum Inhalt der Nachricht zur Anfrage von Dokumenten bei Patientin|
|[Questionnaire (Anfrage)](Questionnaire-ExerciseMentalIllnessQuestionnaire.html)|Definition|Durch Patientin auszufüllender Fragebogen|

##### Antwort (Received)

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|[Task (Antwort)](Task-DokumenteAnfragenPatientAntwortExampleTK.html)|Request|Beschreibung der Empfangsbestätigung zur Anfrage von Dokumenten bei Patientin|
|[Sub-Task (Antwort)](Task-EMIQFragebogenAusfuellenAntwortExampleTK.html)|Request|Beschreibung der Empfangsbestätigung zur Anfrage zum Ausfüllen eines Fragebogens durch Patientin|
|[Bundle (Antwort)](Bundle-DokumenteAnfragenPatientAntwortExampleBM.html)|-|Antwortnachricht zur Anfrage von Dokumenten bei Patientin|
|[MessageHeader (Antwort)](MessageHeader-DokumenteAnfragenPatientAntwortExampleMH.html)|-|Metadaten zur Antwortnachricht zur Anfrage von Dokumenten bei Patientin|
|[MessageDefinition (Antwort)](MessageDefinition-Q4MSDokumenteAnfragenAntwortMD.html)|-|Vorgaben zum Inhalt der Antwortnachricht zur Anfrage von Dokumenten bei Patientin|

#### Workflow

##### Workflow Pattern

Workflow-Management Communication Pattern: [Messaging Task from placer to fulfiller](https://www.hl7.org/fhir/workflow-management.html#optionj)

##### Workflowschritte

Nachfolgend sind die einzelnen Schritte von der Erstellung einer Anfrage bis zum Abschluss bzw. der Erfüllung dieser aufgeführt.
Dabei wird nur der technische und fachliche Erfolgsfall abgebildet, z.B. das Versäumnis, die angefragten Dokumente fristgerecht
oder überhaupt bereitzustellen fehlt in der Darstellung.

|Schritte|[Task.status](https://www.hl7.org/fhir/task-definitions.html#Task.status)|[Sub-Task.status](https://www.hl7.org/fhir/task-definitions.html#Task.status)|[Task.businessStatus](https://www.hl7.org/fhir/task-definitions.html#Task.businessStatus)|
|:-|:-|:-|:-|
|Das MSZ veranlasst die Anfrage von Dokumenten bei Patientin. Es wird eine [CarePlan](https://www.hl7.org/fhir/careplan.html)-Ressource (inkl. [RequestGroup](https://www.hl7.org/fhir/requestgroup.html)) erzeugt, die die Veranlassung repräsentiert. Ein erzeugter [Task](https://www.hl7.org/fhir/task.html), der über [Task.basedOn](https://www.hl7.org/fhir/task-definitions.html#Task.basedOn) den CarePlan referenziert, repräsentiert die Anfrage des klinische Systems and das Patientenportal.|Draft|Draft|-|
|Das klinische System übermittelt eine Anfragenachricht, d.h. eine [Bundle-Message](https://www.hl7.org/fhir/bundle.html), an das Patientenportal.|Requested|Requested|-|
|Das Patientenportal bestätigt den Erhalt der Anfragenachricht nach dem Erhalt, indem es den Task.status aktualisiert, eine Antwortnachricht mit dem gleichen Task als Inhalt erzeugt und diese an das klinische System sendet.|Received|Received|-|
|Das Patientenportal wertet die Anfragenachricht und dessen Inhalt aus und akzeptiert den Task diese. Die Patientin wird zur eingetroffenen Anfrage benachrichtigt.|Accepted|Accepted|-|
|Die Patientin bearbeitet die Anfrage, indem die im Task.input angefragten Dokumente bearbeitet bzw. über Task.output angegebene Dokumente bereitgestellt werden.|In-Progress|In-Progrees|-|
|Die Patientin hat die Bearbeitung bzw. Bereitstellung abgeschlossen.|Completed|Completed|-|