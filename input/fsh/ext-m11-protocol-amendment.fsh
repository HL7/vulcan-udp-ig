//-----------------------------------------------------------------------------------------------------
Extension: M11_AmendmentScopeImpact
Id: m11-amendment-scope-impact
Description: "Provides number or percentage of each group affected by a single amendment"
//Context: m11-research-study-profile
* ^extension[$ext-fmm].valueInteger = 1

* value[x] 0..0
* extension contains
  number 1..1 and  // Integer or Percent
  scope 1..1  // code for one of country, region or site

* extension[number].value[x] only positiveInt or Quantity // Need to constrain to %
  * ^short = "Number of participants, or % of participants"

* extension[scope].value[x] only CodeableConcept // Changed from code in EBM
* extension[scope].value[x] from M11AmendmentScopeEnrollmentVS



//-----------------------------------------------------------------------------------------------------
Extension: M11_AmendmentDetails
Id: m11-amendment-detail
Description: "Provides detail of a single amendment - repeats within the overal amendment report"
* ^extension[$ext-fmm].valueInteger = 1
* value[x] 0..0
* extension contains
  detail 1..1 and 
  rationale 1..1 and 
  section 1..1

* extension[detail].value[x] only string
  * ^short = "Statement regarding prior amendments"
  * ^definition = "Statement regarding prior amendments."
  * ^comment = "State {Not applicable. This protocol has not been amended.} or state {This protocol has been amended previously. Details of prior amendments are presented in Prior Protocol Amendment(s).} or include Current Amendment details as appropriate (See instructions)."

* extension[rationale].value[x] only string
  * ^short = "Rationale"
  * ^definition = "Rationale."

* extension[section].value[x] only CodeableConcept
* extension[section].value[x] from m11-section-codes-vs
  * ^short = "Section where the amendment was made"
  * ^definition = "M11 Section where the amendment was made e.g. 1.2 Trial Schema."

//-----------------------------------------------------------------------------------------------------
Extension: M11_ProtocolAmendment
Id: m11-protocol-amendment
Description: "Amendment to a protocol. This is originally from EBM."
* ^extension[$ext-fmm].valueInteger = 1
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] 0..0
* . ^short = "Amendment to a protocol - from EBM"
* . ^definition = "Representation of amendments to a study protocol."
* . ^comment = "The original extension is from EBM and is being modified to separate general amendments (which belong in EBM) and those specific to the UDP use cases."
* extension contains
// // profile  version 0..1 and
// // profile identifier 1..1 and
// // profile date 1..1 and
  scope 1..1 and 
  country 0..* and
  region 0..* and
  site 0..* and
  approvalDate 0..1 and
  signature 0..1 and //Signature
  signatureUrl 0..1 and
  signatureMethod 0..1 and
  M11_AmendmentScopeImpact named scopeImpact 0..3 and
  primaryReason 0..1 and
  secondaryReason 0..1 and
  summary 0..1 and 
  substantialImpactSafety 0..1 and 
  substantialImpactSafetyComment 0..1 and 
  substantialImpactReliability 0..1 and 
  substantialImpactReliabilityComment 0..1 and
  M11_AmendmentDetails named details 0..* and 
  rationale 0..1 and
  description 0..1

* extension[scope].value[x] only CodeableConcept // Changed from code in EBM
* extension[scope].value[x] from M11AmendmentScopeVS (extensible)
  * ^short = "Global, Not Global"
  * ^definition = "C218673 Global, Country, Region, or Site."
  * ^comment = "If an amendment applies to all sites in the trial, enter Global and delete the Country, Region and Site Identifier fields. 
  If amending a single-country study, enter global. 
  If the amendment does not apply to all sites in the trial, select Not Global and utilize one of the identifiers based on amendment scope. 
  Use the ISO-3166 region or country identifier (for example, DE or EU)."

* extension[country].value[x] only CodeableConcept // Changed from code in EBM
* extension[country].value[x] from M11CountryRegionVS (extensible)
  * ^definition = "C20108"

* extension[region].value[x] only CodeableConcept // Changed from code in EBM
* extension[region].value[x] from M11CountryRegionVS (extensible)
  * ^definition = "C218674"

* extension[site].value[x] only Identifier or Reference // Changed from code in EBM
  * ^definition = "C83081"

* extension[approvalDate].value[x] only date

* extension[signature].value[x] only Signature
  * ^comment = "//TODO Need to review the example"
* extension[signatureUrl].value[x] only string or url
* extension[signatureMethod].value[x] only string

//* extension[scopeImpact].value[x] only M11_AmendmentScopeImpact

* extension[primaryReason].value[x] only CodeableConcept
* extension[primaryReason].value[x] from M11StudyAmendmentReasonVS (extensible)
  * ^short = "Reason for amendment, e.g. Safety"
  * ^definition = "Reason for amendment, e.g. Safety."

* extension[secondaryReason].value[x] only CodeableConcept
* extension[secondaryReason].value[x] from M11StudyAmendmentReasonVS (extensible)
  * ^short = "Reason for amendment, e.g. Manufacturing change"
  * ^definition = "Reason for amendment, e.g. Manufacturing change."

* extension[summary].value[x] only string
  * ^short = "summary of changes"
  * ^definition = "Summary of amendmets."

* extension[substantialImpactSafety].value[x] only CodeableConcept // Changed from code in EBM
* extension[substantialImpactSafety].value[x] from $YesNoUnknownVS (required)
  * ^short = "Substantial impact on safety"
  * ^definition = "Substantial impact on safety."

* extension[substantialImpactSafetyComment].value[x] only string
  * ^short = "Comment on substantial impact on safety"
  * ^definition = "Comment on substantial impact on safety."

* extension[substantialImpactReliability].value[x] only CodeableConcept // Changed from code in EBM
* extension[substantialImpactReliability].value[x] from $YesNoUnknownVS (required)
  * ^short = "Substantial impact on reliability"
  * ^definition = "Substantial impact on reliability."

* extension[substantialImpactReliabilityComment].value[x] only string
  * ^short = "Comment on substantial impact on reliability"
  * ^definition = "Comment on substantial impact on reliability."

* extension[rationale].value[x] only string
* extension[description].value[x] only string

