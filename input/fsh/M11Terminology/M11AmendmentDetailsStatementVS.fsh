//ValueSet: C217274
ValueSet: M11AmendmentDetailsStatementVS
Id: m11-amendment-details-statement-vs
Title: "ICH M11 Amendment Details Statement Value Set Terminology"
Description: """Terminology associated with whether or not a protocol has been amended.
This is ICH M11 Value Set C217274 drawn from the NCI Thesaurus and represented here in FHIR format."""
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
//* ^caseSensitive = false
* ^publisher = "ICH M11"

* $NCIT#C218486	"First Protocol Amendment"
* $NCIT#C218485	"Protocol Not Amended"
* $NCIT#C218488	"Protocol Previously Amended See Summary of Changes Before the Table of Contents"
* $NCIT#C218487	"Protocol Previously Amended, Details Presented"


