Instance: ResearchStudy-Composition-Section-Per-Section
InstanceOf: m11-research-study-profile
Title: "IGBJ Research Study with Composition Section for Each M11 Section"
Usage: #example
Description: """Illustration of a protocol with Composition Section for Each M11 Section.  The same example can also be viewed
on the server by following this link https://vhewer.com/display-product?url=https://jghxykgqfk.edge.aidbox.app/ResearchStudy/Narrative-Section-001.
    """ // TODO Check server details 
* id = "ResearchStudy-Composition-Section-Per-Section-001"  // This is specified ONLY to allow documentatation of examples - it is not normally specified

* status = #active

* identifier[+].type.text = "Sponsor Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "ABC-123"
 
* version = "(a)"

* title = "Illustration of Assembling Narrative Sections"

* extension[m11-research-study].extension[versionDate].valueDate = 2017-10-01
* extension[m11-research-study].extension[originalProtocol].valueCodeableConcept = $NCIT#C218485	"Protocol Not Amended"


* extension[NarrativeElements][+].valueReference = Reference(Narrative-Composition-Section-per-Section)
