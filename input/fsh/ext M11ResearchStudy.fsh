Extension: M11ResearchStudy
Id: m11-research-study
Description: "Extensions to ResearchStudy for M11."
Context: ResearchStudy
* value[x] 0..0
* extension contains
  NarrativeElements2 named narrative 0..* and
  ResearchStudyStudyAmendmentDetails named amendment 0..1 and
  confidentialityStatement 0..1 and
  saeReportingMethod 0..1

* extension[confidentialityStatement].value[x] only string

* extension[saeReportingMethod].value[x] only string
* . ^short = "Method for reporting Serious Adverse Events."
* . ^definition = "Method for reporting Serious Adverse Events."
* . ^comment = "Report Serious Adverse Events to the sponsor. Enter SAE reporting method(s). Refer to Section 9.4 for detailed reporting instructions."
