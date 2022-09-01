RuleSet: QuestionnaireMetadataBase
* language = $ietf-bcp-47#de-DE
* version = "1.0.0"
* experimental = true
* publisher = "Forschungsgruppe Digital Health"
* subjectType = $resource-type#Patient

RuleSet: QuestionnaireMetadata
* insert QuestionnaireMetadataBase
* status = $publication-status#draft

RuleSet: QuestionnaireMetadataActive
* insert QuestionnaireMetadataBase
* status = $publication-status#active
