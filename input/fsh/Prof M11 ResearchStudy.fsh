Profile: M11_ResearchStudyProfile
Parent: ResearchStudy
Id:  m11-research-study-profile
Title:  "M11 Research Study Profile"
Description:    """Constraint of ResearchStudy to M11 Guidance
An instance of this profile represents a single version of the protocol definition. Previous amendments are represented
by further instances of ResearchStudy linked through the relatesTo attribute. 
"""
* ^extension[$ext-fmm].valueInteger = 2
* ^status = #active

* obeys identifier-required

* extension contains
    narrative-elements named narrative 0..* MS and
    M11_ProtocolAmendment named amendment 0..1 MS and
    m11-confidentiality-statement named confidentialityStatement 0..1 and
    m11-approval named approval 0..1 MS and
    m11-research-study named m11-research-study 1..1 MS

* title MS
* identifier 1..* MS
* phase MS
* associatedParty.party.reference MS
    
* identifier.type 1..1 ?! MS
* identifier.type. ^isModifierReason = "Protocols may have multiple business identifers from a given system - only with a type can they be distinguished." 
* identifier.type from $identifier-type-vs (extensible)
* identifier.type.coding.code 1..1

// not R4
* label.type. ^comment = "The value set used here is defined by CDISC/DDF"
* label.type from $study-title-type-vs (extensible)

* phase. ^comment = "M11 has specified its own preferred terms rather than NCI terms and these should be provided in the display element of the coding."
* phase from $phase-vs (required)

// not R4
* associatedParty.role. ^comment = "NCI has study roles defined - M11 only requires a limited set of these"
* associatedParty.role from $party-role-vs (extensible)

* focus. ^comment = "Expect MedicinalProductDefinition.name.type.code to be one of C71898 Proprietary name or C97054 Non-proprietary name"

// not R4
// TODO this needs the latest R6 to work
//* relatesTo.type from udp-related-artifact-type-vs (extensible)
* relatesTo.type. ^comment = "Set to a value of predecessor to indicate the target is the previous version of the protocol or to C218694
                            to indicate the target is the amendment details that have been incorporated"

* title ^comment = "The protocol should have a descriptive title that identifies the scientific aspects of the trial sufficiently to ensure it is immediately evident what the trial is investigating and on whom, and to allow retrieval from literature or internet searches."


Invariant: identifier-required
Description: "The identifier MUST be populated with at least a Sponsor identifier"
Expression: "identifier.exists()"
Severity: #error