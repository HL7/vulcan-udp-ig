Alias: $UDP = narrative-elements-cs  // http://hl7.org/fhir/uv/vulcan-udp-ig/

CodeSystem: NarrativeElementsCS
Id: narrative-elements-cs
Title: "Narrative Elements Code System"
Description: """Composition Types to Manage Protocol Narrative Elements"""
* ^experimental = true
* ^caseSensitive = true

* #b001 "Protocol narrative" "A composition that represents the part or all of a pharmaceutical research protocol as descriptive text"  

ValueSet: NarrativeElementsVS
Id: narrative-elements-vs
Title: "Narrative Elements Value Set"
Description: """Composition Types to Manage Protocol Narrative Elements"""
* ^experimental = true

* include codes from system $UDP




//--------------------------------------------------------------------------------------
//
Extension: NarrativeElements
Id: narrative-elements
Title: "Narrative Elements"
Description: "Narrative content for the ResearchStudy."
Context: ResearchStudy
* value[x] only Reference
* valueReference only Reference(research-study-narratives)
* valueReference. ^short = "Pointer to the narrative content for the protocol"

//--------------------------------------------------------------------------------------
//
//Extension: NarrativeElements2
//Id: narrative-elements2
//Title: "Narrative Elements"
//Description: "Narrative content for the ResearchStudy."
//Context: ResearchStudy
//* value[x] 0..0
//* extension contains 
//  part 0..1 and 
//  narrative 0..1

//* extension[part].value[x] only code
//* extension[part].value[x] from M11SectionCodesVS (required)
//* extension[part].value[x]. ^short = "Identifies the subject of the narrative"

//* extension[narrative].value[x] only Reference
//* extension[narrative].valueReference only Reference(research-study-narratives)
//* extension[narrative].valueReference. ^short = "Pointer to the narrative content for the protocol"
 
//--------------------------------------------------------------------------------------
//
Profile: ResearchStudyNarratives
Parent: Composition
Id:  research-study-narratives
Title:  "Research Study Narratives"
Description:    """Narrative elements associated with a research study.<br>
<br>
Use this profile when the ordering of the narrative sections is not intended to comply with the ICH M11 CeSHarP template
otherwise use the M11ResearchStudyNarratives profile.

For narrative that is not arranged according to the M11 template create a value set to use in place
of the  M11SectionCodesVS.<br>

<br><span style='color: red;'>**///TODO**</span>Provide pointers to construction of a non M11 value set 
"""
* subject. ^short = "Reference to the protocol that the narrative refers to" 
* subject. ^comment = "This reference provides a rapid means of relating a specific narrative instnace to
the protocol to which it belongs." 
* section.code from M11SectionCodesVS (example)
* section.code. ^short = "Identifies the section of the narrative according to the selected coding system"
* section.code. ^definition = "A code from a value set that identifies the narrative section.  The value set is description
constructed from one or more code systems that define the required structure"
* type from narrative-elements-vs (required)
* type. ^comment  = "**///TODO** give guidance on code to use"
* date.  ^comment = "**///TODO** give guidance on interpretation of this"
* author only Reference(Organization)
* title. ^comment = "**///TODO** give guidance of forming the title"

//--------------------------------------------------------------------------------------
//
Profile: M11ResearchStudyNarratives
Parent: ResearchStudyNarratives
Id:  m11-research-study-narratives
Title:  "M11 Specific Research Study Narratives"
Description:    """Further constraint of ResearchStudyNarratives profile to force use of M11 heading.<br>

The ICH M11 CeSHarP template for a study protocol specifies the headings to be used to organise protocol content.
For a FHIR representation of the protocol to be compliant with this template each of the narrative sections must 
be organised using these headings. Only if there is material that does not properly belong under one of the M11 
headings can additional codes be created.<br>

<br><span style='color: red;'>**///TODO**</span> Add example of creating custom code/section 
"""
* section.code from M11SectionCodesVS (extensible)
* section.code. ^short = "Constrained to M11 codes"
* section.code. ^comment = "Have to use M11 codes but can add for additional sections beyond M11 specification."
* section.code. ^binding.description = "The value set can only be extended if narrative content falls outside any identified M11 section." 

