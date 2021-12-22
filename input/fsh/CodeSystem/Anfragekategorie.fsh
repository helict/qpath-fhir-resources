CodeSystem: Q4MSAnfragekategorie
Id: q4ms-anfragekategorie
Title: "Anfragekategorie"
Description: "Deklariert Anfragekategorien"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = $publication-status#active
* ^version = "1.0.0"
* ^url = $q4ms-anfragekategorie
* ^caseSensitive = true
* ^content = $codesystem-content-mode#complete
* #drug-therapy          "Medikamentöse Therapie"       "Anfrage zur medikamentösen Therapie"
* #examination           "Untersuchung"                 "Anfrage zu Krankenhausaufenthalt"
* #hospitalization       "Krankenhausaufenthalt"        "Anfrage zu Krankenhausaufenthalt"
* #infection-vaccination "Infekte / Impfungen"          "Anfrage zu Infekten / Impfungen (z.B. Corona)"
* #non-drug-therapy      "Nicht-medikamentöse Therapie" "Anfrage zur nicht-medikamentösen Therapie"
* #pregnancy             "Schwangerschaft"              "Anfrage zu Schwangerschaft"
* #suspected-attack      "Schubverdacht"                "Anfrage zu Schubverdacht / Verschlechterung der Symptome"
