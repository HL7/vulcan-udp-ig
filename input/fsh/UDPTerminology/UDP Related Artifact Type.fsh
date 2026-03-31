ValueSet: UDPRelatedArtifactType
Id: udp-related-artifact-type-vs
Title: "UDP Related Artifact Type Value Set"
Description: """These codes represent the relationship between an artifact and it related target.
There is an HL7 value set for Related Artifact type - this has "extensible" binding.  This will 
be included in this value set.
This is a UDP specific value set using NCIT codes to extend a required HL7 value set.

The HL7 value set does not have the concept of information that is a summary of an amendment that has been applied.
The amends and amended-with concepts talk of content that must be applied to get the final version.  M11 only
wants to know what has been done - it is more of an amendment trail than an actual amendment.  M11 uses a concept
from the NCI Thesaurus which is suitable for use here.
"""
* ^extension[$ext-fmm].valueInteger = 1
* ^experimental = false
* ^status = #active
* ^publisher = "UDP"

* include codes from valueset http://terminology.hl7.org/ValueSet/artifact-relationship-type
* $NCIT#C218694 "Protocol Amendment Details" // A written message within the study protocol that describes the amendment details, especially as to whether the protocol has been amended previously.

