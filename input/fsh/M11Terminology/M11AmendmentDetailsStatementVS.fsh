//ValueSet: C217274
ValueSet: M11AmendmentDetailsStatementVS
Id: m11-amendment-details-statement-vs
Title: "ICH M11 Amendment Details Statement Value Set Terminology"
Description: """Terminology associated with whether or not a protocol has been amended.
This is ICH M11 Value Set C217274 drawn from the NCI Thesaurus and represented here in FHIR format."""

* ^copyright = """
Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. 
The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license. 

CDISC publishes semantics for the ICH M11 protocol data elements and valid 
value sets. This terminology set is published and stored in the NCI Thesaurus 
Subset C217023 - ICH M11 Terminology 
(https://evsexplore.semantics.cancer.gov/evsexplore/subset/ncit/C217023) 

For more licensing information see: [licenses.html](licenses.html)
"""
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
//* ^caseSensitive = false
* ^publisher = "ICH M11"

* $NCIT#C218486	"First Protocol Amendment"
* $NCIT#C218485	"Protocol Not Amended"
* $NCIT#C218488	"Protocol Previously Amended See Summary of Changes Before the Table of Contents"
* $NCIT#C218487	"Protocol Previously Amended, Details Presented"


