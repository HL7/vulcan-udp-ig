ValueSet: UDPIdentifierType_VS
Id: udp-identifier-type-vs
Title: "UDP Identifier Type Value Set"
Description: """These codes represent the types of identifier used ina study.
This is a UDP specific value set.
These are codes used in M11 but in the M11 Specification each code is associated with a distinct M11 attribute 
rather than being a classifier for a more general attribute.  FHIR structures are designed to work with a repeating
identifier attribute classified by an approriate terminology. This value set enables that by using NCIT codes to create a FHIR value set.
"""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 1
* ^experimental = false
* ^status = #active
* ^publisher = "UDP"

* $NCIT#C132351 "Sponsor Protocol Identifier" 
* $NCIT#C218672 "Original Protocol Indicator" 
* $NCIT#C218477 "Amendment Identifier" 
* $NCIT#C218684 "EU Clinical Trial Register Number" 
* $NCIT#C218685 "US FDA Investigational New Drug Application Number"
* $NCIT#C218686 "US FDA Investigational Device Exemption Application Number"
* $NCIT#C218687 "Japan Registry for Clinical Trials Number" 
* $NCIT#C172240 "Clinicaltrials.gov Identifier"
* $NCIT#C218688 "NMPA IND Number"
* $NCIT#C218689 "WHO/UTN Number"
* $NCIT#C218690 "Other Regulatory or Clinical Trial Identifier"

