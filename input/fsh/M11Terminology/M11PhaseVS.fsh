//ValueSet: C217045
//Id: C217045-vs
ValueSet: M11PhaseVS
Id: m11-phase-vs
Title: "ICH M11 Trial Phase Value Set Terminology"
Description: """Terminology associated with the trial phase value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set C217045 drawn from the NCI Thesaurus."""
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
//* ^caseSensitive = false
* ^publisher = "ICH M11"
* $NCIT#C54721 "Early Phase 1 Trial"
* $NCIT#C15600 "Phase I Trial"
* $NCIT#C15693 "Phase I/II Trial"
* $NCIT#C198366 "Phase I/II/III Trial"
* $NCIT#C198367 "Phase I/III Trial"
* $NCIT#C15601 "Phase II Trial"
* $NCIT#C15694 "Phase II/III Trial"
* $NCIT#C217024 "Phase II/III/IV Trial"
* $NCIT#C15602 "Phase III Trial"
* $NCIT#C217025 "Phase III/IV Trial"
* $NCIT#C15603 "Phase IV Trial"
