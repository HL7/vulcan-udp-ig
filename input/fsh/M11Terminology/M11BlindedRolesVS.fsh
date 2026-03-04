//ValueSet: C217281
//Id: C217281-vs
ValueSet: M11BlindedRolesVVS
Id: m11-blinded-roles-vs
//Id: nci-study-role-vs
Title: "ICH M11 Trial Blinding Role Value Set Terminology"
Description: """Terminology associated with the trial blinding role value set codelist of the ICH M11 protocol template.
This is an ICH M11 Value Set drawn from the NCI Thesaurus."""
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
//* ^caseSensitive = false
* ^publisher = "ICH M11"
* $NCIT#C17445 "Caregiver"
* $NCIT#C70793 "Clinical Study Sponsor"
* $NCIT#C25936 "Investigator"
* $NCIT#C48660 "Not Applicable"
* $NCIT#C207599 "Outcomes Assessor"
* $NCIT#C142710 "Study Participant"
