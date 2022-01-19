Instance: Q4MSActivityDefinitionTaskTransform
InstanceOf: StructureMap
Title: "Transformiert eine ActivityDefinition in einen Task"
Usage: #definition
* url = $q4ms-activitydefinition-task-transform
* name = "Transformiert eine ActivityDefinition in einen Task"
* status = $publication-status#draft
* experimental = true
* structure[+].url = $activitydefinition-sd
* structure[=].mode = $map-model-mode#source
* structure[+].url = $activitydefinition-sd
* structure[=].mode = $map-model-mode#queried
* structure[+].url = $task-sd
* structure[=].mode = $map-model-mode#target
* structure[+].url = $task-sd
* structure[=].mode = $map-model-mode#produced
* group[+].name = "main"
* group[=].typeMode = $map-group-type-mode#type-and-types
* group[=].input[+].name = "source"
* group[=].input[=].type = "ActivityDefinition"
* group[=].input[=].mode = $map-input-mode#source
* group[=].input[+].name = "target"
* group[=].input[=].type = "Task"
* group[=].input[=].mode = $map-input-mode#target
* group[=].rule[+].name = "status"
* group[=].rule[=].source.context = "source"
* group[=].rule[=].source.element = "status"
* group[=].rule[=].source.variable = "a"
* group[=].rule[=].target.context = "target"
* group[=].rule[=].target.contextType = $map-context-type#variable
* group[=].rule[=].target.element = "status"
* group[=].rule[=].target.transform = $map-transform#copy
* group[=].rule[+].name = "intent"
* group[=].rule[=].source.context = "source"
* group[=].rule[=].source.defaultValueString = "plan"
* group[=].rule[=].source.element = "intent"
* group[=].rule[=].source.variable = "a"
* group[=].rule[=].target.context = "target"
* group[=].rule[=].target.contextType = $map-context-type#variable
* group[=].rule[=].target.element = "intent"
* group[=].rule[=].target.transform = $map-transform#copy
* group[=].rule[+].name = "instantiatesCanonical"
* group[=].rule[=].source.context = "source"
* group[=].rule[=].source.element = "url"
* group[=].rule[=].source.variable = "a"
* group[=].rule[=].target.context = "target"
* group[=].rule[=].target.contextType = $map-context-type#variable
* group[=].rule[=].target.element = "instantiatesCanonical"
* group[=].rule[=].target.transform = $map-transform#copy
* group[=].rule[+].name = "description"
* group[=].rule[=].source.context = "source"
* group[=].rule[=].source.element = "title"
* group[=].rule[=].source.variable = "a"
* group[=].rule[=].target.context = "target"
* group[=].rule[=].target.contextType = $map-context-type#variable
* group[=].rule[=].target.element = "description"
* group[=].rule[=].target.transform = $map-transform#copy
