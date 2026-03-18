Instance: JPMA0001-eng
InstanceOf: m11-research-study-profile
Title: "JPMA0001 Provided Example - English Language"
Usage: #example
Description: """Illustration of a Japanese language protocol - this is the English translation"""

* identifier[+].type.text = "Sponsor Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "JPMA001"
* identifier[=].use = #usual

* version = "2.0"

* extension[m11-research-study].extension[originalProtocol].valueCodeableConcept = $NCIT#C218485	"Protocol Not Amended"
* extension[m11-research-study].extension[versionDate].valueDate = 2026-01-14



* title = "A Multicenter, 52-week, Randomized, Parallel-Group Study to Evaluate the Safety and Efficacy of Co-administration of JPMA001 in Patients With Type 2 Diabetes Mellitus With Inadequate Glycemic Control Treated With Oral Hypoglycemic Drugs as a Single Agent"
* label[+].type = $TitleType#short-title "Short title"
* label[=].value = "Administration for patients with type 2 diabetes"
* date = 2026-01-14
* status = #active
* phase = $NCIT#C15602  "Phase III Trial"
