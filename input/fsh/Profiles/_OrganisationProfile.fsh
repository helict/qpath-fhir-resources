Alias: $address-type = http://hl7.org/fhir/address-type
Alias: $contact-point-system = http://hl7.org/fhir/contact-point-system
Alias: $contact-type = http://terminology.hl7.org/CodeSystem/contactentity-type
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Instance: UnikliniumDresdenNeurologie
InstanceOf: Organization
Title: "Klinik und Poliklinik für Neurologie"
Description: "Universitätsklinikum Carl Gustav Carus Dresden, Klinik und Poliklinik für Neurologie"
* active = true
* type = $organization-type#prov
* name = "Klinik und Poliklinik für Neurologie"
* alias = "NEU"

Instance: UnikliniumDresdenMultipleSkleroseZentrum
InstanceOf: Organization
Title: "Multiple Sklerose Zentrum"
Description: "Zentrum für Klinische Neurowissenschaften, Multiple Sklerose Zentrum"
* active = true
* type = $organization-type#dept
* name = "Multiple Sklerose Zentrum"
* alias = "MSZ"
* partOf = Reference(UnikliniumDresdenNeurologie)
* contact[+].purpose = $contact-type#PATINF
* contact[=].name.text = "Kontakt"
* contact[=].telecom[+].system = $contact-point-system#phone
* contact[=].telecom[=].value = "+49 (0) 351 458 7450"
* contact[=].telecom[+].system = $contact-point-system#fax
* contact[=].telecom[=].value = "+49 (0) 351 458 7350"
* contact[=].telecom[+].system = $contact-point-system#email
* contact[=].telecom[=].value = "ms@uniklinikum-dresden.de"
* contact[=].telecom[+].system = $contact-point-system#url
* contact[=].telecom[=].value = "https://msz.uniklinikum-dresden.de"
* contact[+].purpose = $contact-type#PATINF
* contact[=].name.text = "Besucheradresse"
* contact[=].address.type = $address-type#physical
* contact[=].address.line[+] = "Blasewitzer Straße 43"
* contact[=].address.line[+] = "Haus 111"
* contact[=].address.city = "Dresden"
* contact[=].address.state = "SN"
* contact[=].address.postalCode = "01307"
* contact[=].address.country = "DE"
* contact[+].purpose = $contact-type#PATINF
* contact[=].name.text = "Postanschrift"
* contact[=].address.type = $address-type#postal
* contact[=].address.line[+] = "Multiple Sklerose Zentrum"
* contact[=].address.line[+] = "Am Zentrum für Klinische Neurowissenschaften"
* contact[=].address.line[+] = "Universitätsklinikum Dresden"
* contact[=].address.line[+] = "Fetscherstraße 74"
* contact[=].address.city = "Dresden"
* contact[=].address.state = "SN"
* contact[=].address.postalCode = "01307"
* contact[=].address.country = "DE"