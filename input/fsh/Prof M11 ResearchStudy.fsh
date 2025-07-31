
Profile: M11_ResearchStudyProfile
Parent: $ebm-study
Id:  m11-research-study-profile
Title:  "M11 Research Study"
Description:    """Constraint of ResearchStudy to M11 Guidance
An instance of this profile represents a single version of the protocol definition. Previous amendments are represented
by further instances of ResearchStudy linked through the relatedArtifact attribute. 
"""
* ^extension[$ext-fmm].valueInteger = 1

* extension contains
    narrative-elements named narrative 0..* and
    M11_ProtocolAmendment named amendment 0..1

* identifier.type 1..1
* identifier.type ?!
* identifier.type. ^isModifierReason = "Protocols may have multiple business identifers from a given system - only with a type can they be distinguished." 
* identifier.type from $identifier-type-vs (extensible)
* identifier.type.coding.code 1..1

* label.type. ^comment = "The value set used here is defined by CDISC/DDF"
* label.type from $study-title-type-vs (extensible)

* phase. ^comment = "M11 has specified its own preferred terms rather than NCI terms and these should be provided in the display element of the coding."
* phase from $phase-vs (required)

* associatedParty.role. ^comment = "NCI has study roles defined - M11 only requires a limited set of these"
* associatedParty.role from $study-role-vs (extensible)

* focus. ^comment = "Expect MedicinalProductDefinition.name.type.code to be one of C71898 Proprietary name or C97054 Non-proprietary name"

* relatesTo.type. ^comment = "Set to a value of predecessor to indicate the target is the previous version of the protocol"


