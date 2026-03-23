Instance: ResearchStudy-Narrative-Comp-Per-M11
InstanceOf: m11-research-study-profile
Title: "IGBJ Research Study with composition for each M11 narrative section"
Usage: #example
Description: """Illustration of a protocol with composition for each M11 narrative section.   The same example can also be viewed
on the server by following this link https://vhewer.com/display-product?url=https://jghxykgqfk.edge.aidbox.app/ResearchStudy/ResearchStudy-Narrative-Comp-Per-M11-001.
    """ // TODO Check server details 
* id = "ResearchStudy-Narrative-Comp-Per-M11-001"  // This is specified ONLY to allow documentatation of examples - it is not normally specified

* status = #active

* identifier[+].type.text = "Sponsor Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "ABC-123"
 
* version = "(a)"

* title = "Illustration of Complex Narrative and Formatting"

* extension[m11-research-study].extension[versionDate].valueDate = 2017-10-01
* extension[m11-research-study].extension[originalProtocol].valueCodeableConcept = $NCIT#C218485	"Protocol Not Amended"

* extension[NarrativeElements][+].valueReference = Reference(Narrative-Composition-per-M11-Section-1)
* extension[NarrativeElements][+].valueReference = Reference(Narrative-Composition-per-M11-Section-2)
* extension[NarrativeElements][+].valueReference = Reference(Narrative-Composition-per-M11-Section-3)