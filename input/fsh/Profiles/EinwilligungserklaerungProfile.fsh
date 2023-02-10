Alias: $q4ms-einwilligungserklaerung-sd = https://pathway-fgdh.wiwi.tu-dresden.de/fhir/StructureDefinition/Q4MSEinwilligungserklaerungProfile
Alias: $consent-scope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $iknr = http://fhir.de/sid/arge-ik/iknr

Profile: Q4MSEinwilligungserklaerungProfile
Parent: Consent
Id: Q4MSEinwilligungserklaerungProfile
Title: "Einwilligungserklärung (Patientenportal)"
Description: "Profil einer Einwilligungserklärung zur Nutzung des Patientenportals"
* ^url = $q4ms-einwilligungserklaerung-sd
* scope.coding 1..1
* scope.coding.system 1..1
* scope.coding.system = $consent-scope (exactly)
* scope.coding.code 1..1
* scope.coding.code = #patient-privacy (exactly)
* category 1..1
* category.coding 1..1
* category.coding.system 1..1
* category.coding.system = $loinc (exactly)
* category.coding.code 1..1
* category.coding.code = #59284-0 (exactly)
* patient 1..1
* patient.identifier 1..1
* patient.identifier.use 1..1
* patient.identifier.use = $identifier-use#secondary (exactly)
* patient.identifier.type 1..1
* patient.identifier.type = $v2-0203#ANON (exactly)
* patient.identifier.system 1..1
* patient.identifier.system = "urn:oid:1.2.276.0.76.3.1.271.1.99.1" (exactly)
* patient.identifier.value 1..1
* dateTime 1..1 MS
* organization 1..* MS
* organization ^slicing.discriminator[0].type = #value
* organization ^slicing.discriminator[=].path = "identifier.system"
* organization ^slicing.rules = #open
* organization ^slicing.ordered = false
* organization ^slicing.description = "Slice identifier.system pattern"
* organization contains Institutionskennzeichen 1..1
* organization[Institutionskennzeichen].identifier 1..1
* organization[Institutionskennzeichen].identifier.type.coding 1..1
* organization[Institutionskennzeichen].identifier.type.coding.system 1..1
* organization[Institutionskennzeichen].identifier.type.coding.system = $v2-0203 (exactly)
* organization[Institutionskennzeichen].identifier.type.coding.code 1..1
* organization[Institutionskennzeichen].identifier.type.coding.code = #XX (exactly)
* organization[Institutionskennzeichen].identifier.system 1..1
* organization[Institutionskennzeichen].identifier.system = $iknr (exactly)
* organization[Institutionskennzeichen].identifier.value 1..1
* organization[Institutionskennzeichen].display 1..1
* source[x] 1..1 MS
* source[x] only Attachment
* sourceAttachment.contentType
* sourceAttachment.data
* sourceAttachment.url
* sourceAttachment.title 1..1 MS
* policyRule 1..1 MS
* policyRule.coding 1..1
* policyRule.coding ^slicing.discriminator[0].type = #value
* policyRule.coding ^slicing.discriminator[=].path = "system"
* policyRule.coding ^slicing.discriminator[+].type = #value
* policyRule.coding ^slicing.discriminator[=].path = "code"
* policyRule.coding ^slicing.rules = #open
* policyRule.coding contains
    OptIn 0..1 and
    OptOut 0..1
* policyRule.coding[OptIn].system 1..1
* policyRule.coding[OptIn].system = $v3-act-code (exactly)
* policyRule.coding[OptIn].code 1..1
* policyRule.coding[OptIn].code = #OPTIN (exactly)
* policyRule.coding[OptOut].system 1..1
* policyRule.coding[OptOut].system = $v3-act-code (exactly)
* policyRule.coding[OptOut].code 1..1
* policyRule.coding[OptOut].code = #OPTOUT (exactly)