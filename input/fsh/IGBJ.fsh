Instance: IGBJ-Narrative-2.1
InstanceOf: m11-research-study-narratives
Title: "IGBJ Protocol Narrative 2.1"
Usage: #example
Description: "2.1 Purpose of Trial"
* status = #final
* type = UDP#b001 "Protocol narrative"
* subject = Reference(IGBJ-ResearchStudy)
* date = "2025-06-03T12:46:00Z"
* author = Reference(acmeinc) // Reference to Organization: Marketing Authorization Holder
* title = "IGBJ Protocol Narrative 2.1"
* section[0]
  * title = "2.1 Purpose of Trial"
  * code = UDP#a0008
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
|1. have had a diagnosis of either:|

|a.   T1DM based on the World Health Organization (WHO) diagnostic criteria, and have been on the following daily insulin therapy for at least 1 year 

​               i.   multiple daily injection of long-acting insulin analog (either insulin glargine [U-100 or U-300] or insulin degludec [U-100]) and rapid-acting insulin analog (insulin lispro, insulin aspart, or insulin glulisine), or 

​                   ii.   continuous subcutaneous insulin infusion (CSII) 
|
|**Or** 

b.   T2DM based on the WHO diagnostic criteria, and have received the following daily insulin therapy with or without oral anti-hyperglycemic medications (OAMs) for at least 1 year 

​                    i.   insulin: long-acting insulin analog (either insulin glargine [U-100 or U-300] or insulin degludec [U-100]) alone, or in combination with rapid-acting insulin analog (insulin lispro, insulin aspart, or insulin glulisine) or CSII 

​                   ii.   OAM: up to 3 of the following OAMs in accordance with local regulations: metformin, dipeptidyl peptidase-4 inhibitor, sodium glucose cotransporter 2 inhibitor, sulfonylurea (should not be more than half of maximum approved doses), glinides, alpha-glucosidase inhibitor, or thiazolidine
|

| tabl title |
| ---------- |
| row 1      |
| row 2      |
| row 3      |
</div>
"""

Instance: IGBJ-Narrative-5.1
InstanceOf: m11-research-study-narratives
Title: "IGBJ Protocol Narrative 5.1"
Usage: #example
Description: "5.1	Description of Trial Population and Rationale"
* status = #final
* type = UDP#b001 "Protocol narrative"
* subject = Reference(IGBJ-ResearchStudy)
* date = "2025-06-03T12:46:00Z"
* author = Reference(acmeinc) // Reference to Organization: Marketing Authorization Holder
* title = "IGBJ Protocol Narrative 5.1"
* section[0]
  * title = "5.1	Description of Trial Population and Rationale"
  * code = UDP#a0008
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
Seventy-five patients may be enrolled in order to have at least 66 patients (at least 30 patients with T1DM and T2DM, respectively) complete the study. For purposes of this study, a completer is defined as a patient who completes both periods with evaluable primary outcome. If patients discontinue from the study before completion of both periods with evaluable primary outcome for any reason, the patient may be replaced to ensure 66 patients complete the study. The replacement patients will be assigned the same treatment sequence as the patients to be replaced and will complete that treatment sequence in its entirety. Replacement should not occur beyond 75 patients enrolled, if it is expected to have at least 66 patients complete the study.
Eligibility of patients for the study will be based on the results of screening medical history, physical examination, vital signs, clinical laboratory tests, and ECG. 
The nature of any conditions present at the time of the physical examination and any preexisting conditions will be documented. 
Screening may occur up to 28 days prior to enrollment. Patients who are not enrolled within 28 days of screening may be subjected to an additional medical assessment and/or clinical measurements to confirm their eligibility. 
Prospective approval of protocol deviations to recruitment and enrollment criteria, also known as protocol waivers or exemptions, are not permitted.
   </div>"""


Instance: IGBJ-ResearchStudy
InstanceOf: ResearchStudy
Title: "IGBJ Research Study with narrative"
Usage: #example
* identifier[0].use = #usual
* identifier[0].value = "I8R-JE-IGBJ" 
* identifier[1].use = #official
* identifier[1].value = "NCT03421379"
* identifier[1].system = "https://clinicaltrials.gov/show/"
* identifier[2].use = #secondary
* identifier[2].type = #PLAC
* identifier[2].value = "I8R-JE-IGBJ"
* title = "A Phase 3 Study of Nasal Glucagon (LY900018) Compared to Intramuscular Glucagon for Treatment of Insulin-induced Hypoglycemia in Japanese Patients with Diabetes Mellitus "
* status = #draft
* primaryPurposeType = #treatment
* phase = #phase-3
* condition[0] = SCT#xxx "Insulin-induced Hypoglycemia"

* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-2.1)
* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-5.1)