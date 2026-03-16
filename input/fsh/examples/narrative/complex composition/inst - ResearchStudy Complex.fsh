Instance: ResearchStudy-Narrative-Complex
InstanceOf: m11-research-study-profile
Title: "IGBJ Research Study with complex narrative"
Usage: #example
Description: """Illustration of a protocol with 1) more granular decomposition of the narrative 2) more complex formatting 3) content that falls outside the M11 template.  The same example can also be viewed
    on the server by following this link https://vhewer.com/display-product?url=https://fs-01.azurewebsites.net/Bundle/ICH-M11-Template-IGBJ-Bundle
    """ // TODO Add server details

* identifier[+].type.text = "Sponsor Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "ABC-123"
 
* version = "(a)"

* title = "Illustration of Complex Narrative and Formatting"
* status = $Pub#partial
* extension[m11-research-study].extension[versionDate].valueDate = 2017-10-01
* extension[m11-research-study].extension[originalProtocol].valueCodeableConcept = $NCIT#C218485	"Protocol Not Amended"

* extension[NarrativeElements][+].valueReference = Reference(Narrative-Complex)
