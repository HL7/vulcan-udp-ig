Instance: IGBJ-Narrative
InstanceOf: m11-research-study-narratives
Title: "IGBJ Protocol Narrative"
Usage: #example
Description: "1.3 Schedule of Activities and 5.1	Description of Trial Population and Rationale"
* status = #final
* type = $narrative-elements-cs#b001 "Protocol narrative"
* subject = Reference(IGBJ-ResearchStudy)
* date = "2025-06-30T12:46:00Z"
* author = Reference(IGBJ-Organization) // Reference to Organization: Marketing Authorization Holder

* title = "IGBJ Protocol Narratives"
* section[0]
  * title = "1.3 Schedule of Activities"
  * code = $NCIT#C218519
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
  text describing SoA
  </div>
  """

* section[1]
  * title = "5.1	Description of Trial Population and Rationale"
  * code = $NCIT#C218548 
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
Seventy-five patients may be enrolled in order to have at least 66 patients (at least 30 patients with T1DM and T2DM, respectively) complete the study. For purposes of this study, a completer is defined as a patient who completes both periods with evaluable primary outcome. If patients discontinue from the study before completion of both periods with evaluable primary outcome for any reason, the patient may be replaced to ensure 66 patients complete the study. The replacement patients will be assigned the same treatment sequence as the patients to be replaced and will complete that treatment sequence in its entirety. Replacement should not occur beyond 75 patients enrolled, if it is expected to have at least 66 patients complete the study.
Eligibility of patients for the study will be based on the results of screening medical history, physical examination, vital signs, clinical laboratory tests, and ECG. 
The nature of any conditions present at the time of the physical examination and any preexisting conditions will be documented. 
Screening may occur up to 28 days prior to enrollment. Patients who are not enrolled within 28 days of screening may be subjected to an additional medical assessment and/or clinical measurements to confirm their eligibility. 
Prospective approval of protocol deviations to recruitment and enrollment criteria, also known as protocol waivers or exemptions, are not permitted.
   </div>"""

