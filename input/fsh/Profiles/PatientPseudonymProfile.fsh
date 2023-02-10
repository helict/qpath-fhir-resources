Alias: $q4ms-patient-pseudonym-sd = https://pathway-fgdh.wiwi.tu-dresden.de/fhir/StructureDefinition/Q4MSPatientPseudonymProfile
Alias: $identifier-use = http://hl7.org/fhir/CodeSystem/identifier-use

Profile: Q4MSPatientPseudonymProfile
Parent: Patient
Id: Q4MSPatientPseudonymProfile
Title: "Pseudonymer Patient"
Description: "Profil eines pseudonymen Patienten"
* ^url = $q4ms-patient-pseudonym-sd
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice identifier.system pattern"
* identifier contains Pseudonym 1..1
* identifier[Pseudonym].use 1..1
* identifier[Pseudonym].use = $identifier-use#secondary (exactly)
* identifier[Pseudonym].type 1..1
* identifier[Pseudonym].type = $v2-0203#ANON (exactly)
* identifier[Pseudonym].system = "urn:oid:1.2.276.0.76.3.1.271.1.99.1" (exactly)
* identifier[Pseudonym].value 1..1
* active MS
* name 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* managingOrganization 0..0
* link 0..*
* link.other only Reference(Q4MSPatientPseudonymProfile)