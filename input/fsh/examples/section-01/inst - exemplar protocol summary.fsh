Instance: Exemplar-Protocol-Summary
InstanceOf: m11-research-study-profile
Title: "Protocol Summary"
Usage: #example
Description: """Illustration of a Protocol Summary as specified for Section 01 of the M11 Specification.

This desceribes an entirely ficticious protocol for an imaginary product with Brand name Exotex and generic name Exoticillin produced by Exemplar Pharmaceuticals.  The regulator is the Exemplar Regulating Authority (ERA) 
"""

* status = #active
//---------------------------------------------------------------
// Title Page
* identifier[+].type.coding[+] = $NCIT#C132351 "Sponsor Protocol Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "ABC-Exemplar"
* identifier[=].use = #usual

//---------------------------------------------------------------
// Section 1.1.1	Primary and Secondary Objectives and Estimands

// C218839 Primary and Secondary Objectives and Estimands
* extension[m11-protocol-summary].extension[objectiveAndEstimandSummary].valueString = 	"""The primary objective of this study is to see if Inhaled Exoticillin achieves similar or better results compared to intramuscular Exoticillin when treating Bronchtis in Japanese Patients who also have Iatrogenic Diabetes Mellitus.  The seconday objective is to evaluate the cost differences in treatment.
Evaluation will be by recording the average days to recovery, the total combined cost of medication and cost of hospital stay."""

//---------------------------------------------------------------
// Section 1.1.2	Overall Design

// C218675 Intervention
* focus = Reference(Exemplar-MedicinalProduct)

// C217277 Intervention Model
* extension[m11-protocol-summary].extension[interventionModel].valueCodeableConcept = $NCIT#C82639 "Parallel Group"

// C217278 Population Type
* extension[m11-protocol-summary].extension[populationType].valueCodeableConcept = $NCIT#C218503 "With Disease"

// C217279 Control Type
* extension[m11-protocol-summary].extension[controlType].valueCodeableConcept = $NCIT#C218505 "Different Dose or Regimen"

// condition - see binding Population Diagnosis or Condition
* condition[+] = $SCT#32398004 "Bronchitis (disorder)" 
* condition[+] = $SCT#1137328006 "Iatrogenic hypoglycaemia" 

// C97054 M11 requires a narrative representation of the comparator - the name
* extension[m11-protocol-summary].extension[comparator].valueReference = Reference(Exemplar-ComparatorProduct)

// C49693/C25301 Minimum Age value/units
* extension[m11-protocol-summary].extension[minimumAge].valueQuantity = 18 $NCIT#C29848 "Years"

// C49694/C25301 Maximum Age value/units
* extension[m11-protocol-summary].extension[maximumAge].valueQuantity = 55 $NCIT#C29848 "Years"

// C217280 Intervention Assignment Method
* extension[m11-protocol-summary].extension[interventionAssignmentMethod].valueCodeableConcept = $NCIT#C25196 "Randomisation"

// C223137 Randomisation Type
* extension[m11-protocol-summary].extension[randomisationType].valueCodeableConcept.text = "block randomisation"

// C223138 Other Intervention Assignment Method
* extension[m11-protocol-summary].extension[otherInterventionAssignmentMethod].valueString = 	""

// C223136 Stratification Indicator
* extension[m11-protocol-summary].extension[stratificationIndicator].valueCodeableConcept = $NCIT#C49488 "Yes"

// C217049 Site Distribution
* extension[m11-protocol-summary].extension[siteDistribution].valueCodeableConcept = $NCIT#C217005 "Multicentre"

// C217050: Site geographic scope
* extension[m11-protocol-summary].extension[siteGeographicScope].valueCodeableConcept = $NCIT#C217007 "Multiple Countries "

// C217046 Master Protocol Indicator
* extension[m11-protocol-summary].extension[masterProtocolIndicator].valueCodeableConcept = $NCIT#C49487 "No"

// C217046 Drug-Device Combination Product Indicator
* extension[m11-protocol-summary].extension[drug-DeviceCombinationProductIndicator].valueCodeableConcept = $NCIT#C49488 "Yes"

// C217046 Adaptive Trial Design Indicator
* extension[m11-protocol-summary].extension[adaptiveTrialDesignIndicator].valueCodeableConcept = $NCIT#C49487 "No"

// C98771 Number of Arms
* extension[m11-protocol-summary].extension[numberOfArms].valueInteger = 2

// C217051 Trial Blind Schema
* extension[m11-protocol-summary].extension[trialBlindSchema].valueCodeableConcept = $NCIT#C187674 "Observer Blind"

// C217281: Blinded Roles"
* extension[m11-protocol-summary].extension[blindedRoles][+].valueCodeableConcept = $NCIT#C142710 "Participant"  
* extension[m11-protocol-summary].extension[blindedRoles][+].valueCodeableConcept = $NCIT#C17445 "Care Provider " 

// Target-Maximum"
* extension[m11-protocol-summary].extension[targetOrMaximum].valueCodeableConcept = $UDP_Target#T "Target"

// C49692 Number of Participants
* extension[m11-protocol-summary].extension[numberOfParticipants].valueInteger = 200

// C218712/C218713 total planned duration of trial intervention value/units
// * extension[m11-protocol-summary].extension[totalPlannedDurationOfTrialIntervention].valueQuantity =

// C218714 alternate description of planned duration of trial intervention if duration will vary
* extension[m11-protocol-summary].extension[alternateDescriptionOfPlannedDurationOfTrialIntervention].valueString = """Will depend on response to treatment"""

// C218715/C218716 total planned duration of trial participation value/units
* extension[m11-protocol-summary].extension[totalPlannedDurationOfTrialParticipation].valueQuantity = 3 $NCIT#C29846 "Months"

// C218717 alternate description of planned duration of trial participation if duration will vary
// * extension[m11-protocol-summary].[alternateDescriptionOfPlannedDurationOfTrialParticipation].

// C218838 Additional Description of Duration
// * extension[m11-protocol-summary].extension[additionalDescriptionofDuration].

// C217282 Independent Committees
* extension[m11-protocol-summary].extension[independentCommittees][+].valueCodeableConcept = $NCIT#C142578 "Independent Data Monitoring Committee"
* extension[m11-protocol-summary].extension[independentCommittees][+].valueCodeableConcept = $NCIT#C17649 "Other"

// C218719 Other Committees
* extension[m11-protocol-summary].extension[otherCommittees].valueString = "Exemplar Monitoring Board"

//---------------------------------------------------------------
// Section 1.2	Trial Schema
// C93682 Trial Schema
* extension[m11-protocol-summary].extension[trialSchema].

// C218720 Schema Notes
* extension[m11-protocol-summary].extension[schemaNotes].valueString = """Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus."""

//---------------------------------------------------------------
// Section 1.3	Schedule of Activities
// C132349 Schedule of Activities
* extension[m11-protocol-summary].extension[scheduleofActivities].