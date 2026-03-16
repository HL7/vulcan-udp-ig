Instance: ResearchStudy-Single-Composition
InstanceOf: m11-research-study-profile
Title: "IGBJ Research Study with narrative as Single Composition"
Usage: #example
Description: """Illustration of a protocol with narrative as Single Composition.   The same example can also be viewed
    on the server by following this link https://vhewer.com/display-product?url= 
    """ // TODO Add server details 

* identifier[+].type.text = "Sponsor Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "ABC-123"
 
* version = "(a)"

* title = "Illustration of Assembling Narrative Sections"
* status = $Pub#active
* extension[m11-research-study].extension[versionDate].valueDate = 2017-10-01
* extension[m11-research-study].extension[originalProtocol].valueCodeableConcept = $NCIT#C218485	"Protocol Not Amended"


* extension[NarrativeElements][+].valueReference = Reference(Narrative-Single-Composition)
