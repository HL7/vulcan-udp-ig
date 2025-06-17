Alias: $EMAReason = http://spor.ema.europa.eu/v1/example-reason
Alias: $RegID = https://example.org/regulatory-agency-identifier
Alias: $SpID = https://example.org/sponsor-identifier
Alias: $AmdID = https://example.org/amendment-identifier
Alias: $TitleType = http://hl7.org/fhir/title-type
Alias: $Phase = http://hl7.org/fhir/research-study-phase
Alias: $Pub = http://hl7.org/fhir/publication-status

Instance: IGBJ-ResearchStudy
InstanceOf: ResearchStudy
Title: "IGBJ Research Study with narrative"
Usage: #example
Description: """Illustration of a protocol with some parts in narrative form and some in granular form.  The same example can also be viewed
on the server by following this link https://vhewer.com/display-product?url=https://fs-01.azurewebsites.net/Bundle/ICH-M11-Template-IGBJ-Bundle
"""
* identifier[+].type.text = "Regulatory Agency Identifier"
* identifier[=].system = $RegID
* identifier[=].value = "NCT03421379"
* identifier[=].use = #official

* identifier[+].type.text = "Sponsor Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "I8R-JE-IGBJ"
* identifier[=].use = #usual
 
* identifier[+].type.text = "Amendment Identifier"
* identifier[=].system = $AmdID
* identifier[=].value = "I8R-JE-IGBJ(a)"
* identifier[=].use = #usual // TODO: Check usage of "use"

* version = "(a)"

* title = "A Phase 3 Study of Nasal Glucagon (LY900018) Compared to Intramuscular Glucagon for Treatment of Insulin-induced Hypoglycemia in Japanese Patients with Diabetes Mellitus "
* label[+].type = $TitleType#short-title "Short title"
* label[=].value = "A Phase 3 Study of Nasal Glucagon (LY900018) Compared to Intramuscular Glucagon for Treatment of Insulin-induced Hypoglycemia in Japanese Patients with Diabetes Mellitus"
* date = 2017-12-05
* status = $Pub#draft "Draft" // TODO: Check we are really using this correctly
* phase = $Phase#phase-3 "Phase 3"
* focus = Reference(SubstanceDefinition/substance) // TODO: Create substance
* condition[0] = SCT#xxx "Insulin-induced Hypoglycemia" // TODOD: Find Snomed code here

* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-2.1)
* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-5.1)
* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-9)

* extension[ResearchStudyStudyAmendment][+].extension[scope].valueString = "Global"
* extension[ResearchStudyStudyAmendment][+].extension[details].valueString = "This protocol has not been amended previously."
* extension[ResearchStudyStudyAmendment][+].extension[description].valueString = "Protocol I8R-JE-IGBJ A Phase 3 Study of Nasal Glucagon (LY900018) Compared to Intramuscular Glucagon for Treatment of Insulin-induced Hypoglycemia in Japanese Patients with Diabetes Mellitus has been amended. The new protocol is indicated by Amendment (a) and will be used to conduct the study in place of any preceding version of the protocol. The overall changes and rationale for the changes made to this protocol are as follows: • An exclusion criterion for patients with retinopathy or maculopathy was added due to the potential risk of fundal hemorrhage induced by hypoglycemia. • The GlucaGen reconstitution volume was changed from 1.0 mL to 1.1 mL in accordance with instructions in the Summary of Product Characteristics (2015)."
* extension[ResearchStudyStudyAmendment][+].extension[rationale].valueString = "Updates to address safety concern & align with product guidelines."
* extension[ResearchStudyStudyAmendment][+].extension[substantialImpactSafety].valueBoolean = true
* extension[ResearchStudyStudyAmendment][+].extension[substantialImpactSafetyComment].valueString = "Specifically implemented to decrease safety risks."
* extension[ResearchStudyStudyAmendment][+].extension[substantialImpactReliability].valueBoolean = false
//* extension[ResearchStudyStudyAmendment][+].extension[substantialImpactReliabilityComment]
* extension[ResearchStudyStudyAmendment][+].extension[primaryReason].valueCodeableConcept = $EMAReason#2 "Safety"
* extension[ResearchStudyStudyAmendment][=].extension[primaryReason].valueCodeableConcept.text = "Safety"

* extension[ResearchStudySaeReportingMethod].valueString = "Report Serious Adverse Events to the sponsor by phone. Refer to Section 9.4 for detailed reporting instructions."