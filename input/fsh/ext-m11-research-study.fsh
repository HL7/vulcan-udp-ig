Extension: M11_ResearchStudy
Id: m11-research-study
Description: "Additions for M11 not otherwise dealt with"
Title:  "M11 Research Study Extension"
Context: M11_ResearchStudyProfile
* ^extension[$ext-fmm].valueInteger = 2
* ^extension[$ext-wg].valueCode = #brr
* ^extension[$ext-standards-status].valueCode = #draft

* value[x] 0..0
* . ^short = "Additional concepts for M11"
* . ^definition = "Signature and date for approval."
* . ^comment = "Additional concepts required by M11 that have no other obvious home."

* extension contains
  originalProtocol 1..1 and
  versionDate 1..1

* extension[originalProtocol].value[x] only CodeableConcept
* extension[originalProtocol].value[x] from m11-amendment-details-statement-vs
  * ^short = "Original Protocol Indicator"
  * ^definition = "An indication as to whether the protocol document reflects the original version of the protocol.."

* extension[versionDate].value[x] only date
  * ^short = "Protocol version date"
  * ^definition = "The date on which the document is versioned."
  * ^comment = "The date on ResearchStudy is the date the resource last significantly changed - not the same as the protocol version date"