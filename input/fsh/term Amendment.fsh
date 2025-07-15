ValueSet: M11AmendmentScopeVS
Id: m11-study-amendment-scope-vs
Title: "Study Amendment Scope Value Set"
Description: """Codes drawn from NCI Thesaurus to represent the scope of an amendment to a study.
"""
* ^experimental = true

* $NCIT#C68846	"Global"
* $NCIT#C217026	"Not Global"

ValueSet: M11AmendmentScopeEnrollmentVS
Id: m11-amendment-scope-enrollment-vs
Title: "Study Amendment Scope Enrollment Value Set"
Description: """Categorising numbers affected by the amendment"""
* ^experimental = true

* $NCIT#C68846  "Globally"
* $NCIT#C41065  "Locally"
* $NCIT#C218489  "By Cohort"

ValueSet: M11CountryRegionVS
Id: m11-country-region-vs
Title: "Study Amendment Country Value Set"
Description: """Codes drawn from 
ISO 3166 Country Codes, Alpha 3; 
ISO 3166 Country Codes, Alpha 2; 
GENC
country affected by an amendment to a study.
"""
* ^experimental = true

* codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-2
* codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-3
//* codes from "GENC"  // Not immediately obvious how this is to be used: https://nsgreg.nga.mil/doc/view?i=2500&month=7&day=4&year=2025
