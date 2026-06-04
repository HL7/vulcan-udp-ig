//-----------------------------------------------------------------------------------------------------
Extension: M11_ProtocolSummary
Id: m11-protocol-summary
Description: "Summary to a protocol."
Context: M11_ResearchStudyProfile
* insert rs-copyright-structure
* ^extension[$ext-fmm].valueInteger = 2
* ^status = #active

* value[x] 0..0
* . ^short = "Summary of a protocol"
* . ^definition = "Representation of summary of a study protocol."
* . ^comment = "This is Section 1 of the ICH Technical Summary and Guideline."

// * obeys xxxxx


* extension contains

objectiveAndEstimandSummary 1..1 MS and
interventionModel 1..1 MS and
populationType 1..1 MS and
controlType 1..1 MS and
populationDiagnosisOrCondition 1..* MS and

controlNonproprietaryname 1..* and
// notapplicable 1..1 at least one of [Nonproprietary Name] or [INN] or <"Not applicable">  and
minimumAge 1..1 MS and
unitsOfMinimumAge 1..1 MS and
maximumAge 1..1 MS and
unitsOfMaximumAge 1..1 MS and
interventionAssignmentMethod 1..1 MS and
randomisationType 1..(0,1) MS if type is randomisation and
otherInterventionAssignmentMethod 1..(0,1) MS and // invariant
stratificationIndicator 1..1 MS and
siteDistribution 1..1 MS and
siteGeographicScope 1..1 MS and
masterProtocolIndicator 1..1 MS and
drug-DeviceCombinationProductIndicator 1..1 MS and
adaptiveTrialDesignIndicator 1..1 MS and
numberOfArms 1..1 MS and
trialBlindSchema 1..1 MS and
blindedRoles 1..1 MS and
targetOrMaximum 1..1 MS and
numberOfParticipants 1..1 MS and
//randomlyassignedtotrialintervention-enrolled 1..1 MS and
totalPlannedDurationOfTrialIntervention 1..(0,1) and // invariant either quantity or alterative text
totalPlannedDurationOfTrialInterventionUnitOfTime 1..(0,1) and // invariant either quantity or alterative text
alternateDescriptionOfPlannedDurationOfTrialIntervention 1..(0,1) and // invariant ifdurationwillvary either quantity or alterative text 
totalPlannedDurationOfTrialParticipation 1..(0,1) either quantity or alterative text and
totalPlannedDurationOfTrialParticipationUnitOfTime 1..(0,1) and // invariant either quantity or alterative text
alternateDescriptionOfPlannedDurationOfTrialParticipation 1..(0,1) // invariant ifdurationwillvary either quantity or alterative text and
additionalDescriptionofDuration 1..(0,1)  and
independentCommittees 1..(1..*) MS and
otherCommittees 1..(0..*) and
trialSchema 1..1 MS and
schemaNotes 1..(0,1) and
scheduleofActivities 1..1 MS


* extension[objectiveAndEstimandSummary].value[x] only string or xhtml
  * ^short = "C218839 Primary and Secondary Objectives and Estimands"
  * ^definition = "A descriptive summary of the primary and secondary objectives and their associated estimands related to the trial."

* extension[interventionModel].value[x] only CodeableConcept  
* extension[interventionModel].value[x] from M11InterventionModelVS (required)
  * ^short = "C217277 Intervention Model"  
  * ^definition = "The overall design configuration for assigning intervention to participants."

* extension[populationType].value[x] only CodeableConcept  
* extension[populationType].value[x] from M11PopulationTypeVS (required)
  * ^short = "C217278 Population Type"  
  * ^definition = "A characterisation or classification of the trial population."

* extension[controlType].value[x] only CodeableConcept  
* extension[controlType].value[x] from M11ControlTypeVS (required)
  * ^short = "C217279 Control Type"  
  * ^definition = "A characterization or classification of the comparator against which the study intervention is evaluated."

// ResearchStudy.condition
// * extension[populationDiagnosisOrCondition].value[x] only string  
//   * ^short = "see binding Population Diagnosis or Condition" 
//   * ^definition = "A description of the condition, disease or disorder that the clinical trial is intended to investigate or address."

* extension[comparator].value[x] only Reference(MedicinalProduct) 
  * ^short = "Comparator" 
  * ^definition = "The comparator against which the study intervention is evaluated."
  * ^comment = "M11 CC97054 requires on a narrative representation of the comparator - the name."

* extension[minimumAge].value[x] only real 
  * ^short = "C49693/C25301 Minimum Age value/units" 
  * ^definition = "The anticipated minimum age of the participants to be entered in a clinical trial."

* extension[maximumAge].value[x] only real 
  * ^short = "C49694/C25301 Minimum Age value/units" 
  * ^definition = "The anticipated maximum age of the participants to be entered in a clinical trial."

* extension[interventionAssignmentMethod].value[x] only CodeableConcept 
* extension[interventionAssignmentMethod].value[x] from M11InterventionAssignmentMethodVS (required)
  * ^short = " C217280 Intervention Assignment Method" 
  * ^definition = "The process used to assign trial participants to a trial intervention or trial arm."
 
* extension[randomisationType].value[x] only string or CodeableConcept
  * ^short = "C223137 Randomisation Type" 
  * ^definition = "The type of randomisation to be used (e.g., simple randomisation, block randomisation)"
  * ^comment = "this is just a text description - implementers may want to provide a value set that tehe text can be drawn from."

* extension[otherInterventionAssignmentMethod].value[x] only string 
  * ^short = "C223138 Other Intervention Assignment Method}" 
  * ^definition = "If applicable, describe the other intervention assignment method."

* extension[stratificationIndicator].value[x] only CodeableConcept 
* extension[stratificationIndicator].value[x] from $YesNoUnknownVS (required)
  * ^short = "C223136 Stratification Indicator" 
  ///TODO need definition for Stratification Indicator
  * ^definition = ""

* extension[siteDistribution].value[x] only CodeableConcept 
* extension[siteDistribution].value[x] from M11SiteDistributionVS (required)
  * ^short = " C217049 Site Distribution" 
  * ^definition = "An indication as to whether the occurrence applies to a single or multiple trial sites."

* extension[siteGeographicScope].value[x] only CodeableConcept 
* extension[siteGeographicScope].value[x] from M11SiteGeographicscopeVS (required) 
  * ^short = "C217050: Site geographic scope" 
  * ^definition = "An indication as to whether the trial is taking place in one or more countries."

* extension[masterProtocolIndicator].value[x] only CodeableConcept 
* extension[masterProtocolIndicator].value[x] from $YesNoUnknownVS (required)
  * ^short = "C217046 Master Protocol Indicator" 
  * ^definition = "An indication as to whether the protocol is a master protocol."

* extension[drug-DeviceCombinationProductIndicator].value[x] only CodeableConcept 
* extension[drug-DeviceCombinationProductIndicator].value[x] from $YesNoUnknownVS (required)
  * ^short = "C217046 Drug-Device Combination Product Indicator" 
  * ^definition = "An indication as to whether the clinical trial is testing a drug-device combination product."

* extension[adaptiveTrialDesignIndicator].value[x] only CodeableConcept 
* extension[adaptiveTrialDesignIndicator].value[x] from $YesNoUnknownVS (required)
  * ^short = "C217046 Adaptive Trial Design Indicator" 
  * ^definition = "An indication as to whether the clinical trial uses an adaptive trial design."

* extension[numberOfArms].value[x] only integer 
  * ^short = "C98771 Number of Arms" 
  * ^definition = "The planned number of intervention groups."

* extension[trialBlindSchema].value[x] only CodeableConcept 
* extension[trialBlindSchema].value[x] from M11TrialBlindSchemaVS (required)
  * ^short = "C217051 Trial Blind Schema" 
  * ^definition = "The type of experimental design used to describe the level of awareness of the trial participants and/ or personnel as it relates to the respective intervention(s) or assessments being observed, received or administered."

* extension[blindedRoles].value[x] only CodeableConcept 
* extension[blindedRoles].value[x] from M11BlindedRolesVS (required)
  * ^short = "C217281: Blinded Roles" 
  * ^definition = "An identifying designation assigned to a blinded individual within a clinical trial that corresponds with their function"

* extension[targetOrMaximum].value[x] only CodeableConcept // UDP valuse set 
* extension[targetOrMaximum].value[x] from UDPTarget-MaximumVS (required)
  * ^short = "Target-Maximum" 
  * ^definition = "A characterisation or classification of the trial participant numbers as to whether the numbers reflect a target or maximum."
  * ^comment = "The ICH spec has this as optional boilerplate text but it has to be a variable to be processable"

* extension[numberOfParticipants].value[x] only integer 
  * ^short = "C49692 Number of Participants" 
  * ^definition = "The planned number of participant be entered in a clinical trial."

* extension[totalPlannedDurationOfTrialIntervention].value[x] only time 
  * ^short = "C218712/C218713 total planned duration of trial intervention value/units" 
  * ^definition = "The total planned duration of trial intervention"

* extension[alternateDescriptionOfPlannedDurationOfTrialIntervention].value[x] only string 
  * ^short = "C218714 alternate description of planned duration of trial intervention if duration will vary" 
  * ^definition = "An alternative textual narrative for the planned duration of trial intervention."

* extension[totalPlannedDurationOfTrialParticipation].value[x] only time 
  * ^short = " C218715/C218716 total planned duration of trial participation value/units" 
  * ^definition = "The total planned duration of trial participation"

* extension[alternateDescriptionOfPlannedDurationOfTrialParticipation].value[x] only string 
  * ^short = "C218717 alternate description of planned duration of trial participation if duration will vary" 
  * ^definition = "An alternative narrative for the planned duration of trial participation."

* extension[additionalDescriptionofDuration].value[x] only string 
  * ^short = "C218838 Additional Description of Duration" 
  * ^definition = "A narrative providing additional details about the duration of an participant's use of a trial intervention or their planned participation time in the trial."

* extension[independentCommittees].value[x] only CodeableConcept 
* extension[independentCommittees].value[x] from M11IndependentCommitteesVS (required)
  * ^short = "C217282 Independent Committees" 
  * ^definition = "An independent group of experts that has oversight over, and conducts periodic review of, specific trial activities."

* extension[otherCommittees].value[x] only string 
  * ^short = "C218719 Other Committees" 
  * ^definition = "A committee that is different than the one(s) previously specified or mentioned."

* extension[trialSchema].value[x] only string 
  * ^short = "C93682 Trial Schema" 
  * ^definition = "A diagram that outlines the decision points (e.g. randomisation, response evaluation) that define the different paths a participant could take through the trial."

* extension[schemaNotes].value[x] only string 
  * ^short = "C218720 Schema Notes" 
  * ^definition = "A brief written record describing the trial schematic."

* extension[scheduleofActivities].value[x] only string 
  * ^short = "C132349 Schedule of Activities" 
  * ^definition = "The schedule of activities captures the procedures that will be accomplished at each trial visit, contact with participants. A tabular format is recommended."


// Invariants ..................


// nonproprietaryname 1..* 
// at least one of [Nonproprietary Name] or [INN] or <"Not applicable">  and

// otherInterventionAssignmentMethod 1..(0,1) MS if type is randomisation and