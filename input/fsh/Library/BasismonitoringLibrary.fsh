Alias: $q4ms-basismonitoring-lib = https://pathway-fgdh.wiwi.tu-dresden.de/fhir/Library/Q4MSBasismonitoringLibrary
Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type

Instance: Q4MSBasismonitoringLibrary
InstanceOf: Library
Title: "BasismonitoringLibrary"
Description: "Bibliothek für mit CQL Ausdrücken für den Basismonitoringpfad"
* name = "Q4MSBasismonitoringLibrary"
* status = $publication-status#active
* experimental = true
* type = $library-type#logic-library
* content.id = "ig-loader-BasismonitoringLibrary.cql"
* content.contentType = $mime-types#text/cql
* content.data = "bGlicmFyeSBCYXNpc21vbml0b3JpbmdMaWJyYXJ5IHZlcnNpb24gJzAuMS4wJwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCmNvbnRleHQgUGxhbkRlZmluaXRpb24KCmRlZmluZSAiTGV0enRlcyBNUlQgw6RsdGVyIDEyIE1vbmF0ZSI6CiAgJ1RPRE86IENoZWNrIGRhdGUgb2YgbGF0ZXN0IE1SVCc="
