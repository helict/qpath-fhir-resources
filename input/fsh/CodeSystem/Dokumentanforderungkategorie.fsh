CodeSystem: Q4MSDokumentanforderungkategorie
Id: q4ms-dokumentanforderungkategorie
Title: "Dokumentanforderungkategorie CodeSystem"
Description: "Deklariert Dokumentanforderungkategorien"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = $publication-status#active
* ^version = "1.0.0"
* ^url = $q4ms-dokumentanforderungkategorie
* ^caseSensitive = true
* ^content = $codesystem-content-mode#complete
* #laboratory-result "Laborergebnis"    "Anforderung eines Laborergebnisses"
* #finding           "Befund"           "Anforderung eines Befunds"
* #doctor-letter     "Arztbrief"        "Anforderung eines Arztbriefs"
* #consiliary-report "Konsiliarbericht" "Anforderung eines Konsiliarberichts"
* #prescription      "Rezept"           "Anforderung eines Rezepts"
* #other             "Sonstiges"        "Anforderung eines sonstigen Dokuments"