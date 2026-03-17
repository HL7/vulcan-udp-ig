//--------------------------------------------------------------------------------------
//
Extension: NarrativeElements
Id: narrative-elements
Title: "Narrative Elements"
Description: "Narrative content for the ResearchStudy."
//Context: ResearchStudy
Context: M11_ResearchStudyProfile
* ^extension[$ext-fmm].valueInteger = 2
* ^status = #active
* value[x] only Reference
* valueReference only Reference(m11-research-study-narratives)
* valueReference. ^short = "Pointer to the narrative content for the protocol"

 
//--------------------------------------------------------------------------------------
//
Profile: M11ResearchStudyNarratives
Parent: Composition
Id:  m11-research-study-narratives
Title:  "Research Study Narratives"
Description:    """Narrative elements associated with a research study following the ICH M11 CeSHarP template.
The ICH M11 CeSHarP template for a study protocol specifies the headings to be used to organize protocol content.
For a FHIR representation of the protocol to be compliant with this template each of the narrative sections must 
be organized using these headings. Only if there is material that does not properly belong under one of the M11 
headings can additional codes be created."""
* ^extension[$ext-fmm].valueInteger = 2
* ^status = #active
* subject. ^short = "Reference to the protocol that the narrative refers to" 
* subject. ^comment = "This reference provides a rapid means of relating a specific narrative instnace to
the protocol to which it belongs." 
* section.code from udp-section-codes-vs (extensible)
* section.code. ^short = "Identifies the section of the narrative according to M11 codes"
* section.code. ^definition = "A code from a value set that identifies the narrative section.  The value set is description
constructed from one or more code systems that define the required structure"
* section.code. ^binding.description = "The value set can only be extended if narrative content falls outside any identified M11 section." 
// !!!
//* section.code. ^binding.additional.key = "m11-research-study-narratives-section-binding"
* type MS
* type from udp-narrative-elements-vs (required)
* author only Reference(Organization)
