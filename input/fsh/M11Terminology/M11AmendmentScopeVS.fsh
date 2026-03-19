//ValueSet: C217047
//Id: C217047-vs
ValueSet: M11AmendmentScopeVS
Id: m11-study-amendment-scope-vs
Title: "ICH M11 Amendment Scope Value Set Terminology"
Description: """Terminology associated with the amendment scope value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set C217047 drawn from the NCI Thesaurus.

The M11 guidance to "leave blank" if not applicable has to be replaced by an explicit "Not Applicable"
"""
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
//* ^caseSensitive = false
* ^publisher = "ICH M11"
* $NCIT#C68846 "Global"
* $NCIT#C217026 "Not Global"
* $NCIT#C48660 "Not Applicable" // Definition is "Determination of a value is not relevant in the current context."  Use when blank has to be stated
