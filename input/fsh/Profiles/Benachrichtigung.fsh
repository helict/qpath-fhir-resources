Alias: $q4ms-repository-aenderungskategorie = http://qpath4ms.ukdd.de/fhir/CodeSystem/Q4MSRepositoryAenderungskategorie
Alias: $q4ms-repository-aenderung-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSRepositoryAenderungProfile
Alias: $q4ms-repository-aenderungsnachricht-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSRepositoryAenderungnachrichtProfile
Alias: $q4ms-repository-aenderungsnachrichtkopf-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSRepositoryAenderungnachrichtkopfProfile
Alias: $q4ms-fhir-rest-api-endpoint-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSFhirRestApiEndpointProfile
Alias: $endpoint-connection-type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
Alias: $endpoint-status = http://hl7.org/fhir/endpoint-status
Alias: $http-verb = http://hl7.org/fhir/http-verb
Alias: $mime-types = urn:ietf:bcp:13

CodeSystem: Q4MSRepositoryAenderungskategorie
Title: "Repository-Änderungskategorie"
Description: "Liste mit Änderungsarten, die durchgeführte Änderungen von Inhalten eines Repositories näher beschreiben"
* insert CodeSystemMetadata
* ^url = $q4ms-repository-aenderungskategorie
* #created "Erstellt"
* #updated "Aktualisiert"
* #deleted "Deleted"

Profile: Q4MSFhirRestApiEndpointProfile
Parent: Endpoint
Id: Q4MSFhirRestApiEndpointProfile
Title: "FHIR REST API Endpunkt"
Description: "Profil eines Endpunkts zu einer FHIR REST API, z.B. Repository für Patientenpfade"
* ^url = $q4ms-fhir-rest-api-endpoint-sd
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name 1..1
* managingOrganization 1..1
* contact 1..*
* payloadType from $resource-type (required)
* payloadMimeType = $mime-types#application/fhir+json (exactly)

Instance: PathwayRepositoryEndpointExample
InstanceOf: Q4MSFhirRestApiEndpointProfile
Usage: #example
Title: "Pathway Repository-Endpunkt"
Description: "Beispiel eines Endpunkts zum Repository für Patientenpfadvorlagen und -instanzen"
* status = $endpoint-status#test
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "Pathway Repository REST API"
* managingOrganization = Reference(UnikliniumDresdenMultipleSkleroseZentrum)
* contact[0].system = $contact-point-system#email
* contact[=].value = "info@medicalsyn.com"
* contact[=].rank = 1
* contact[+].system = $contact-point-system#phone
* contact[=].value = "+4935141884862"
* contact[=].rank = 2
* payloadType[+] = $resource-type#ActivitiyDefinition
* payloadType[+] = $resource-type#Appointment
* payloadType[+] = $resource-type#Bundle
* payloadType[+] = $resource-type#CarePlan
* payloadType[+] = $resource-type#Encounter
* payloadType[+] = $resource-type#EpisodeOfCare
* payloadType[+] = $resource-type#List
* payloadType[+] = $resource-type#Medication
* payloadType[+] = $resource-type#MedicationStatement
* payloadType[+] = $resource-type#Observation
* payloadType[+] = $resource-type#Organization
* payloadType[+] = $resource-type#Patient
* payloadType[+] = $resource-type#PlanDefinition
* payloadType[+] = $resource-type#Questionnaire
* payloadType[+] = $resource-type#QuestionnaireResponse
* payloadType[+] = $resource-type#ServiceRequest
* payloadType[+] = $resource-type#Task
* payloadMimeType = $mime-types#application/fhir+json
* address = "https://sv-neu-qpmspath/fhir/"

Profile: Q4MSRepositoryAenderungsnachrichtkopfProfile
Parent: MessageHeader
Id: Q4MSRepositoryAenderungsnachrichtkopfProfile
Title: "Repository-Änderungsnachrichtkopf"
Description: "Profil eines Kopfes für Nachrichten, die Änderungen in einem oder mehreren Repositories anzeigen"
* ^url = $q4ms-repository-aenderungsnachrichtkopf-sd
* event[x] MS
* event[x] only Coding
* eventCoding.system 1..1
* eventCoding.system = $q4ms-repository-aenderungskategorie
* eventCoding.code 1..1
* destination 1..* MS
* source MS
* source.name 1..1
* source.contact 1..1
* responsible 1..1 MS
* responsible only Reference(Organization)

Instance: PathwayRepositoryAenderungsnachrichtkopfExample
InstanceOf: Q4MSRepositoryAenderungsnachrichtkopfProfile
Usage: #example
Title: "Beispiel Änderungsnachrichtenkopf"
Description: "Beispiel Änderungsnachrichtenkopf"
* eventCoding = $q4ms-repository-aenderungskategorie#created
* destination.endpoint = "amqps://sv-neu-qpmspath:5671"
* source.name = "MSDS"
* source.contact[0].system = $contact-point-system#email
* source.contact[=].value = "info@medicalsyn.com"
* source.endpoint = "amqps://cis.medicalsyn.com:5671"
* responsible = Reference(UnikliniumDresdenMultipleSkleroseZentrum)

Profile: Q4MSRepositoryAenderungProfile
Parent: Bundle
Id: Q4MSRepositoryAenderungProfile
Title: "Repository-Änderung"
Description: "Profil für die Anzeige von Änderungen und deren Lokalisation im Repository"
* ^url = $q4ms-repository-aenderung-sd
* type = $bundle-type#batch (exactly)
* timestamp 1..1
* total 0..0
* link 0..0
* entry 1..*
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "request.method"
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "request.url"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "Slices request.method and request.url value"
* entry ^slicing.ordered = false
* entry 1..*
* entry contains Lokalisation 1..*
* entry[Lokalisation].link 0..0
* entry[Lokalisation].resource 1..1 MS
* entry[Lokalisation].resource only Q4MSFhirRestApiEndpointProfile
* entry[Lokalisation].search 0..0
* entry[Lokalisation].request.method MS
* entry[Lokalisation].request.method = $http-verb#GET (exactly)
* entry[Lokalisation].request.url MS
* entry[Lokalisation].request.ifNoneMatch 0..0
* entry[Lokalisation].request.ifModifiedSince 0..0
* entry[Lokalisation].request.ifMatch 0..0
* entry[Lokalisation].request.ifNoneExist 0..0
* entry[Lokalisation].response 0..0
* signature 0..0

Instance: PathwayRepositoryAenderungExample
InstanceOf: Q4MSRepositoryAenderungProfile
Usage: #example
Title: "Beispiel Änderung"
Description: "Beispiel Änderung"
* type = $bundle-type#batch
* timestamp = "2022-06-23T17:54:41Z"
* entry[Lokalisation][0].resource = PathwayRepositoryEndpointExample
* entry[Lokalisation][=].request.method = $http-verb#GET
* entry[Lokalisation][=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/NeurologischeUntersuchungExampleAPT"
* entry[Lokalisation][+].resource = PathwayRepositoryEndpointExample
* entry[Lokalisation][=].request.method = $http-verb#GET
* entry[Lokalisation][=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/MultipleSclerosisPerformanceTestExampleAPT"
* entry[Lokalisation][+].resource = PathwayRepositoryEndpointExample
* entry[Lokalisation][=].request.method = $http-verb#GET
* entry[Lokalisation][=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/GanganalyseExampleExampleAPT"
* entry[Lokalisation][+].resource = PathwayRepositoryEndpointExample
* entry[Lokalisation][=].request.method = $http-verb#GET
* entry[Lokalisation][=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/OptischeKohaerenztomographieExampleAPT"
* entry[Lokalisation][+].resource = PathwayRepositoryEndpointExample
* entry[Lokalisation][=].request.method = $http-verb#GET
* entry[Lokalisation][=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/ArztvorstellungExampleAPT"
* entry[Lokalisation][+].resource = PathwayRepositoryEndpointExample
* entry[Lokalisation][=].request.method = $http-verb#GET
* entry[Lokalisation][=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/LaboruntersuchungExampleAPT"

Profile: Q4MSRepositoryAenderungsnachrichtProfile
Parent: Bundle
Id: Q4MSBenachrichtigungProfile
Title: "Repository-Änderungsnachricht"
Description: "Profil einer Nachricht, die Änderungen in einem oder mehreren Repositories anzeigt"
* ^url = $q4ms-repository-aenderungsnachricht-sd
* type = $bundle-type#message (exactly)
* timestamp 1..1 MS
* total 0..0
* link 0..0
* entry 1..* MS
* entry.link 0..0
* entry.resource 1..1 MS
* entry.resource only Q4MSRepositoryAenderungProfile or Q4MSRepositoryAenderungsnachrichtkopfProfile
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* signature 0..0

Instance: PathwayRepositoryAenderungsnachrichtExample
InstanceOf: Q4MSRepositoryAenderungsnachrichtProfile
Usage: #example
Title: "Beispiel Änderungsnachricht"
Description: "Beispiel Änderungsnachricht"
* type = $bundle-type#message
* timestamp = "2022-06-23T17:54:41Z"
* entry[+].resource = PathwayRepositoryAenderungsnachrichtkopfExample
* entry[+].resource = PathwayRepositoryAenderungExample