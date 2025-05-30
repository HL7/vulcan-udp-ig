Alias: SCT = http://snomed.info/sct

Instance: H2Q-MC-LZZT-ResearchStudy
InstanceOf: ResearchStudy
Title: "H2Q-MC-LZZT Research Study with version"
Usage: #example
* identifier[0].use = #usual
* identifier[0].value = "H2Q-MC-LZZT with version" 
* identifier[1].use = #official
* identifier[1].value = "NCTA12313212"
* identifier[1].system = "https://clinicaltrials.gov/show/"
* identifier[2].use = #secondary
* identifier[2].type = #PLAC
* identifier[2].value = "NCTA12313212"
* title = "Safety and Efficacy of the Xanomeline Transdermal Therapeutic System (TTS) in Patients with Mild to Moderate Alzheimer’s Disease"
* status = #draft
* primaryPurposeType = #treatment
* phase = #phase-3
* condition[0] = SCT#26929004 "Alzheimer's Disease (Disorder)"
* description = """
# Primary Objectives
The primary objectives of this study are:
* To determine if there is a statistically significant relationship (overall Type 1 error rate, α=.05) between the change in both ADAS-Cog (see Attachment LZZT.2) and CIBIC+ (see Attachment LZZT.3) scores, and drug dose (0, 50 cm2 [54 mg], and 75 cm2 [81 mg]).
* To document the safety profile of the xanomeline TTS.
"""

Instance: ResearchStudy-Protocol
InstanceOf: ResearchStudy
Title: "Research Study - protocol"
Usage: #example
* identifier[0].use = #official
* identifier[0].value = "NCTA12313212"
* identifier[0].system = "https://clinicaltrials.gov/show/"
* title = "Safety and Efficacy of the Xanomeline Transdermal Therapeutic System (TTS) in Patients with Mild to Moderate Alzheimer’s Disease"
* status = #draft
* protocol = Reference(Exoticillin-Protocol-01)

Instance: Exoticillin-Protocol-01
InstanceOf: PlanDefinition
Title: "Exoticillin Protocol 01"
Usage: #example
* status = #draft
* version = "v01.0"
* action[+].definitionUri = "Exoticillin-Visit-1"
* action[=].title = "Visit-1"
* action[=].description = "Planned Visit 1"

* action[+].definitionUri = "Exoticillin-Visit-2"
* action[=].title = "Visit-2"
* action[=].description = "Planned Visit 2"

* action[+].definitionUri = "Exoticillin-Visit-3"
* action[=].title = "Visit-3"
* action[=].description = "Planned Visit 3"

Instance: Exoticillin-Visit-1
InstanceOf: PlanDefinition
Usage: #example
Title: "Visit-1"
Description: "Planned Visit 1"
* status = #draft
* action[+].title = "Record Visit Date"
* action[=].definitionUri = "Activity-Visit-Date"
* action[+].title = "Informed Consent "
* action[=].definitionUri = "Activity-Informed-Consent"
* action[+].title = "Patient number assigned "
* action[=].definitionUri = "Activity-Patient-number-assigned"
* action[+].title = "Laboratory (Urinalysis)"
* action[=].definitionUri = "Activity-Laboratory-Urinalysis"

Instance: H2Q-MC-LZZT-Visit-Date
InstanceOf: ActivityDefinition
Description: "Planned Activity [Record Visit Date]"
Usage: #example
Title: "Visit Date"
* status = #active
* identifier[+].value = "F.DOV"
* identifier[=].system = "http://www.cdisc.org/ns/odm/v1.3/FormDef#"
* identifier[=].type.coding[0].system = "http://www.cdisc.org/ns/odm/v1.3#"
* identifier[=].type.coding[0].display = "OID"
* identifier[=].use = #secondary

