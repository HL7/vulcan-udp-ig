//ValueSet: C217046
//Id: C217046-vs
ValueSet: M11YesNoVS
Id: m11-yes-no-vs
Title: "ICH M11 No Yes Value Set Terminology"
Description: """Terminology associated with the no yes value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set C217046 drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
//* ^caseSensitive = false
* ^publisher = "ICH M11"
* $NCIT#C49487 "No"
* $NCIT#C49488 "Yes"
