//ValueSet: C217277
//Id: C217277-vs
// ICH OID 2.16.840.1.113883.3.989.2.3.1.6 
ValueSet: M11InterventionModelVS
Id: m11-interventionModel-vs
Title: "ICH M11 Intervention Model Value Set Terminology"
Description: """Terminology associated with the |Intervention Model value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set C217277 drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"

* $NCIT#C82640 "Single Group"
// Single Group (C82640); Parallel Group (C82639); Cross-over (C82637); Factorial (C82638); Sequential (C142568); Other (C17649) 

//-----------------------------------------------------
// Code ListC217278: 
// ICH OID 2.16.840.1.113883.3.989.2.3.1.12 
ValueSet: M11PopulationTypeVS
Id: m11-populationType-vs
Title: "ICH M11 ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set ... drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"

* $NCIT#C218503 "With Disease"
* $NCIT#C218504 "Without Disease"



//-----------------------------------------------------


// Code ListC217279
// ICH OID 2.16.840.1.113883.3.989.2.3.1.4 
ValueSet: M11ControlTypeVS
Id: m11-controlType-vs
Title: "ICH M11 ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set ... drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"

* $NCIT#C49648 "Placebo"
* $NCIT#C49649 "Active Comparator"
* $NCIT#C120841 "Dose Response"
* $NCIT#C218505 "Different Dose or Regimen"
* $NCIT#C218506 "External"
* $NCIT#C184727 "Sham Procedure"
* $NCIT#C28280 "No Control"



//-----------------------------------------------------
// Code ListC217280
// ICH OID 2.16.840.1.113883.3.989.2.3.1.18 
ValueSet: M11InterventionAssignmentMethodVS 
Id: m11-interventionAssignmentMethod-vs
Title: "ICH M11 ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set ... drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"
* $NCIT#C25196 "Randomisation"
* $NCIT#C222801 "No Intervention Assignment Method"
* $NCIT#C17649 "Other"



//-----------------------------------------------------
// Code ListC217049
// ICH OID 2.16.840.1.113883.3.989.2.3.1.20 
ValueSet: M11SiteDistributionVS 
Id: m11-siteDistribution-vs
Title: "ICH M11 ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set ... drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"
* $NCIT#C217004 "Single-Centre"
* $NCIT#C217005 "Multicentre"



//-----------------------------------------------------
// Code ListC217050
// ICH OID 2.16.840.1.113883.3.989.2.3.1.21 
ValueSet: M11SiteGeographicscopeVS
Id: m11-siteGeographicscope-vs
Title: "ICH M11 ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set ... drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"


* $NCIT#C217006 "Single Country"
* $NCIT#C217007 "Multiple Countries"



//-----------------------------------------------------
// Code ListC217051
// ICH OID 2.16.840.1.113883.3.989.2.3.1.17 
ValueSet: M11TrialBlindSchemaVS
Id: m11-trialBlindSchema-vs
Title: "ICH M11 ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set ... drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"
* $NCIT#C15228 "Double Blind"
* $NCIT#C187674 "Observer Blind" 
* $NCIT#C49659 "Open Label"
* $NCIT#C28233 "Single Blind"



//-----------------------------------------------------
// Code ListC217281
// ICH OID 2.16.840.1.113883.3.989.2.3.1.16 
ValueSet: M11BlindedRolesVS
Id: m11-blindedRoles-vs
Title: "ICH M11 ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set ... drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"
* $NCIT#C142710 "Participant"
* $NCIT#C17445 "Care Provider"
* $NCIT#C25936 "Investigator" 
* $NCIT#C207599 "Outcomes Assessor"
* $NCIT#C70793 "Sponsor"
* $NCIT#C48660 "Not Applicable"

//-----------------------------------------------------
ValueSet: UDPTarget-MaximumVS
Id: m11-target-Maximum-vs
Title: "UDP ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "Vulcan UDP"
* $UDP_Target#1 "Target"
* $UDP_Target#2 "Maximum"



//-----------------------------------------------------
// Code ListC217282
// ICH OID 2.16.840.1.113883.3.989.2.3.1.5 
ValueSet: M11IndependentCommitteesVS
Id: m11-independentCommittees-vs
Title: "ICH M11 ..."
Description: """Terminology associated with the ... value set codelist of the ICH M11 protocol template.
This is ICH M11 Value Set ... drawn from the NCI Thesaurus and represented here in FHIR format."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 0
* ^experimental = false
* ^status = #active
* ^publisher = "ICH M11"
* $NCIT#C142578 "Independent Data Monitoring Committee"
* $NCIT#C215671 "Dose Escalation Committee"
* $NCIT#C78726 "Endpoint Adjudication Committee"
* $NCIT#C17649 "Other"
* $NCIT#C41132 "None" 
//should this be extensible?
