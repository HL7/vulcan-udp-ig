ValueSet: UDPStudyTitleTypeVS
Id: udp-study-title-type-vs
Title: "UDP Study Title Type Value Set"
Description: """These codes represent the types of title or name a study can have 
This is a UDP specific value set using NCIT codes to extend an HL7 value set.

These are codes used in M11 but in the M11 Specification each code is associated with a distinct M11 attribute 
rather than being a classifier for a more general attribute.  FHIR structures are designed to work with a repeating
attribute classified by an approriate terminology. This value set enables that.
Note that the NCI Thesaurus holds separate codes for protocol name (C132300) that are separate from study title (C49802)
"""
* ^extension[$ext-fmm].valueInteger = 2
* ^experimental = false
* ^status = #active
* ^publisher = "UDP"

* include codes from valueset http://terminology.hl7.org/ValueSet/title-type
* $NCIT#C207615  "Brief Study Title"
* $NCIT#C207646  "Study Acronym"

