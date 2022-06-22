Alias: $q4ms-patient-sd = http://qpath4ms.ukdd.de/fhir/StructureDefinition/Q4MSPatientProfile
Alias: $identifier-use = http://hl7.org/fhir/CodeSystem/identifier-use
Alias: $contact-point-system = http://hl7.org/fhir/contact-point-system
Alias: $gender-amtlich-vs = http://fhir.de/ValueSet/gender-amtlich-de

Profile: Q4MSPatientProfile
Parent: Patient
Id: Q4MSPatientProfile
Title: "Patientenportal Patient"
Description: "Profil eines Patienten im Patientenportal"
* ^url = $q4ms-patient-sd
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slices identifier.system"
* identifier contains Patientenportal 1..1
* identifier[Patientenportal].use 1..1
* identifier[Patientenportal].use = $identifier-use#usual (exactly)
* identifier[Patientenportal].type 1..1
* identifier[Patientenportal].type = $v2-0203#MR (exactly)
* identifier[Patientenportal].system = "urn:oid:1.2.276.0.76.3.1.271.1.20.3" (exactly)
* identifier[Patientenportal].value 1..1
* active MS
* name MS
* telecom 1..* MS
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.ordered = false
* telecom ^slicing.description = "Slice telecom.system pattern"
* telecom contains RegistrierungsEmail 1..1
* telecom[RegistrierungsEmail].system = $contact-point-system#email (exactly)
* telecom[RegistrierungsEmail].value 1..1 MS
* gender MS
* gender from $gender-amtlich-vs (required)
* birthDate MS
* address MS
* managingOrganization MS