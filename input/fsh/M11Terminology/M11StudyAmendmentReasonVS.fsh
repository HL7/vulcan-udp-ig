//ValueSet: C217276
//Id: C217276-vs
ValueSet: M11StudyAmendmentReasonVS
Id: m11-study-amendment-reason-vs
Title: "ICH M11 Reason for Amendment Value Set Terminology"
Description: """Terminology associated with the reason for amendment value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set C217276 drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
//* ^caseSensitive = false
* ^publisher = "ICH M11"
* $NCIT#C218497 "Change in Standard Of Care Amendment Reason"
* $NCIT#C218496 "Change in Strategy Amendment Reason"
* $NCIT#C218495 "IMP Addition Amendment Reason"
* $NCIT#C218501 "Inconsistency and/or Error in the Protocol Amendment Reason"
* $NCIT#C218499 "Investigator/Site Feedback Amendment Reason"
* $NCIT#C218492 "IRB/IEC Feedback Amendment Reason"
* $NCIT#C218494 "Manufacturing Change Amendment Reason"
* $NCIT#C218498 "New Data Available (Other Than Safety Data) Amendment Reason"
* $NCIT#C218491 "New Regulatory Guidance Amendment Reason"
* $NCIT#C218493 "New Safety Information Available Amendment Reason"
* $NCIT#C48660 "Not Applicable"
* $NCIT#C17649 "Other"
* $NCIT#C218502 "Protocol Design Error Amendment Reason"
* $NCIT#C218500 "Recruitment Difficulty Amendment Reason"
* $NCIT#C218490 "Regulatory Agency Request to Amend Amendment Reason"
