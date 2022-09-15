# QPath4MS IG

## Basismonitoringpfad

![Basismonitoringpfad](Basismonitoringpfad.png)

## Beispiel Anwendungsfälle

### Check-In zum ersten Besuch im Multiple Sklerose-Zentrum (vereinfacht)

#### Beschreibung

Eine Patientin hat mit dem Multiple Sklerose-Zentrum (MSZ) ihren ersten Besuchstermin im Rahmen des kontinuierlichen Monitorings vereinbart.
In Vorbereitung auf den Besuch im MSZ soll die Patientin den EMIQ-Fragebogen ausfüllen und die Antworten bereitstellen, um beim Besuch im MSZ
möglichst wenig Zeit mit vorbereitenden oder administrativen Tätigkeiten zu verbringen. Die Bereitstellung des Fragebogens sowie die
Übermittlung der Antworten soll digital durchgeführt werden.

#### FHIR Ressourcen

##### Vorlage und Instanz

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|:-|:-|:-|
|[PlanDefinition](PlanDefinition-Q4MSCheckIn.html)|Definition|Definition des geplanten Check-Ins der Patientin|
|[ActivityDefinition](ActivityDefinition-Q4MSCheckInAD.html)|Definition|Definition der einzelnen Schritte zum Check-In der Patientin|
|[CarePlan](CarePlan-CheckInExampleCP.html)|Request|Konkrete Instanz des Check-Ins der Patientin|
|[RequestGroup](RequestGroup-CheckInExampleRG.html)|Request|Konkrete Schritte zum Check-In der Patientin|

##### Anfrage (Requested)

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|[Task (Anfrage)](Task-47d39109-4e14-4a44-bd7a-fdd887ed86aa.html)|Request|Beschreibung der Aufgaben inklusive Termin zum Check-In der Patientin|
|[Sub-Task (Anfrage)](Task-fb3902cc-5265-4ec6-9476-99434350b5b3.html)|Request|Beschreibung der Aufgabe zum Ausfüllen eines Fragebogens durch Patientin|
|[Bundle (Anfrage)](Bundle-CheckInAnfrageExampleBM.html)|-|Nachricht zum Check-In der Patientin|
|[MessageHeader (Anfrage)](MessageHeader-af021986-5fda-4a75-b3d8-71ad1474fc49.html)|-|Metadaten zur Nachricht zum Check-In der Patientin|
|[MessageDefinition (Anfrage)](MessageDefinition-Q4MSCheckInAnfrageMD.html)|-|Definition der Nachricht zum Check-In der Patientin|
|[Questionnaire (Anfrage)](Questionnaire-ExerciseMentalIllnessQuestionnaire.html)|Definition|Durch Patientin auszufüllender Fragebogen|

##### Antwort (Received)

| FHIR Ressource | [Workflow](https://www.hl7.org/fhir/workflow.html)-Ressourcenkategorie | Beschreibung |
|[Task (Antwort)](Task-CheckInAntwortExampleTSK.html)|Request|Beschreibung der Empfangsbestätigung zum Check-In der Patientin|
|[Sub-Task (Antwort)](Task-EmiqFragebogenAusfuellenAntwortExampleTSK.html)|Request|Beschreibung der Empfangsbestätigung zum Ausfüllen eines Fragebogens durch Patientin|
|[Bundle (Antwort)](Bundle-CheckInAntwortExampleBM.html)|-|Antwortnachricht zum Check-In der Patientin|
|[MessageHeader (Antwort)](MessageHeader-CheckInAntwortExampleMH.html)|-|Metadaten zur Antwortnachricht zum Check-In der Patientin|
|[MessageDefinition (Antwort)](MessageDefinition-Q4MSCheckInAntwortMD.html)|-|Definition der Antwortnachricht zum Check-In der Patientin|

#### Workflow

##### Workflow Pattern

Workflow-Management Communication Pattern: [Messaging Task from placer to fulfiller](https://www.hl7.org/fhir/workflow-management.html#optionj)

##### Workflowschritte

Nachfolgend sind die einzelnen Schritte von der Erstellung einer Anfrage bis zum Übermitteln der Empfangsbestätigung aufgeführt.
Dabei wird nur der Erfolgsfall abgebildet, z.B. das Versäumnis, die angefragten Dokumente fristgerecht oder überhaupt bereitzustellen fehlt in der Darstellung.

|Nr.|Schritte|[Task.status](https://www.hl7.org/fhir/task-definitions.html#Task.status)|[Sub-Task.status](https://www.hl7.org/fhir/task-definitions.html#Task.status)|[Task.businessStatus](https://www.hl7.org/fhir/task-definitions.html#Task.businessStatus)|
|:-|:-|:-|:-|:-|
|1.|Das MSZ veranlasst den Check-In der Patientin. Es wird eine [CarePlan](https://www.hl7.org/fhir/careplan.html)-Ressource (inkl. [RequestGroup](https://www.hl7.org/fhir/requestgroup.html)) erzeugt, die die Veranlassung repräsentiert. Ein erzeugter [Task](https://www.hl7.org/fhir/task.html), der über [Task.basedOn](https://www.hl7.org/fhir/task-definitions.html#Task.basedOn) den CarePlan referenziert, repräsentiert die Anfrage des klinische Systems and das Patientenportal.|Draft|Draft|-|
|2.|Das klinische System übermittelt eine Anfrage als Nachricht, d.h. eine [Bundle-Message](https://www.hl7.org/fhir/bundle.html), an das Patientenportal.|Requested|Requested|-|
|3.|Das Patientenportal bestätigt den Erhalt der Anfrage, indem es den Task.status aktualisiert, eine Antwortnachricht mit dem gleichen Task als Inhalt erzeugt und diese an das klinische System sendet.|Received|Received|-|
|4.|Das Patientenportal wertet die Anfragen und dessen Inhalt aus und akzeptiert den Task. Die Patientin wird zur eingetroffenen Anfrage benachrichtigt.|Accepted|Accepted|-|
|5.|Die Patientin bearbeitet die Anfrage, indem die im (Sub-) Task.input angefragten Inhalte bearbeitet bzw. über (Sub-) Task.output angeforderte Inhalte bereitstellt.|In-Progress|In-Progrees|-|
|6.|Die Patientin hat die Bearbeitung bzw. Bereitstellung abgeschlossen.|Completed|Completed|-|
