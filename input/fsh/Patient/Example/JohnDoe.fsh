Instance: PatientJohnDoe
InstanceOf: Q4MSPatientProfile
Usage: #example
Title: "Patient John Doe"
Description: "Beispiel eines Patienten im Patientenportal mit Verknüpfung zum Pseudonym"
* identifier[Patientenportal]
  * use = $identifier-use#usual
  * type = $v2-0203#MR
  * system = "urn:oid:1.2.276.0.76.3.1.271.1.20.3"
  * value = "35eed280-3101-4e2e-b9d2-1b03c200be3a"
* name
  * given[+] = "John"
  * family = "Doe"
* telecom[RegistrierungsEmail]
  * system = $contact-point-system#email
  * value = "john.doe@example.com"
* link
  * other = Reference(PatientPseudonym)
  * type = $link-type#seealso

Instance: PatientPseudonym
InstanceOf: Q4MSPatientPseudonymProfile
Usage: #example
Title: "Pseudonymer Patient"
Description: "Beispiel eines pseudonymen Patienten"
* identifier[Pseudonym]
  * use = $identifier-use#secondary
  * type = $v2-0203#ANON
  * system = "urn:oid:1.2.276.0.76.3.1.271.1.99.1"
  * value = "7c6be21a-70b4-492f-bcae-86dd1b721480"
