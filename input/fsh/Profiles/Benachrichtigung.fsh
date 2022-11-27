Alias: $q4ms-repository-aenderungskategorie = http://qpath4ms.ukdd.de/fhir/CodeSystem/Q4MSRepositoryAenderungskategorie
Alias: $q4ms-repository-aenderung-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSRepositoryAenderungProfile
Alias: $q4ms-repository-aenderungsnachricht-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSRepositoryAenderungnachrichtProfile
Alias: $q4ms-repository-aenderungsnachrichtkopf-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSRepositoryAenderungsnachrichtkopfProfile
Alias: $q4ms-fhir-rest-api-endpoint-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSFhirRestApiEndpointProfile
Alias: $endpoint-connection-type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
Alias: $endpoint-status = http://hl7.org/fhir/endpoint-status
Alias: $http-verb = http://hl7.org/fhir/http-verb

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
* payloadType from $resource-type-vs (required)
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
* payloadType[+] = $resource-type#ActivityDefinition
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
* entry.link 0..0
* entry.resource MS
* entry.resource only Q4MSFhirRestApiEndpointProfile
* entry.search 0..0
* entry.request.method MS
* entry.request.method = $http-verb#GET (exactly)
* entry.request.url 1..1 MS
* entry.request.ifNoneMatch 0..0
* entry.request.ifModifiedSince 0..0
* entry.request.ifMatch 0..0
* entry.request.ifNoneExist 0..0
* entry.response 0..0
* signature 0..0

Instance: PathwayRepositoryAenderungExample
InstanceOf: Q4MSRepositoryAenderungProfile
Usage: #example
Title: "Beispiel Änderung"
Description: "Beispiel Änderung"
* id = "ba6949bf-994f-4ed9-9f14-2b2f87f3d04b"
* type = $bundle-type#batch
* timestamp = "2022-06-23T17:54:41Z"
* entry[+].fullUrl = "urn:uuid:35c605c7-b03f-4cbb-b92e-e3615a5e5e87"
* entry[=].request.method = $http-verb#GET
* entry[=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/AllgemeineNeurologischeUntersuchungM0ExampleAPT"
* entry[+].fullUrl = "urn:uuid:c24070a8-dd9f-483d-8e47-4d3aa8efb5c6"
* entry[=].request.method = $http-verb#GET
* entry[=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/MultipleSclerosisPerformanceTestM0ExampleAPT"
* entry[+].fullUrl = "urn:uuid:12818646-900b-4c94-ba0a-34ae66bb1a73"
* entry[=].request.method = $http-verb#GET
* entry[=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/GanganalyseExampleExampleAPT"
* entry[+].fullUrl = "urn:uuid:737c9373-c615-448f-aeaf-95044de0e52d"
* entry[=].request.method = $http-verb#GET
* entry[=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/OptischeKohaerenztomographieM0ExampleAPT"
* entry[+].fullUrl = "urn:uuid:e8b08d38-478a-4d57-afee-90885699c9b1"
* entry[=].request.method = $http-verb#GET
* entry[=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/ArztvorstellungM0ExampleAPT"
* entry[+].fullUrl = "urn:uuid:fd851138-d6ac-4e92-9d9c-12868c24c669"
* entry[=].request.method = $http-verb#GET
* entry[=].request.url = "https://sv-neu-qpmspath/fhir/Appointment/LaboruntersuchungM0ExampleAPT"

Profile: Q4MSRepositoryAenderungsnachrichtProfile
Parent: Bundle
Id: Q4MSRepositoryAenderungnachrichtProfile
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
* entry[+].fullUrl = "urn:uuid:f6954039-59f3-4b71-b446-77435c6835a3"
* entry[=].resource = PathwayRepositoryAenderungsnachrichtkopfExample
* entry[+].fullUrl = "urn:uuid:ba6949bf-994f-4ed9-9f14-2b2f87f3d04b"
* entry[=].resource = PathwayRepositoryAenderungExample