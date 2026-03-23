Instance: Exemplar-ResearchStudy
InstanceOf: m11-research-study-profile
Title: "START HERE: Exemplar Research Study with narrative"
Usage: #example
Description: """Illustration of a protocol with some parts in narrative form and some in granular form.  The same example can also be viewed
on the server by following this link https://vhewer.com/display-product?url=https://jghxykgqfk.edge.aidbox.app/ResearchStudy/Exemplar-ResearchStudy-001.

This desceribes an entirely ficticious protocol for an imaginary product with Brand name Exotex and generic name Exoticillin produced by Exemplar 
Pharmaceuticals.  The regulator is the Exemplar Regulating Authority (ERA) 
"""
* id = "Exemplar-ResearchStudy-001"  // This is specified ONLY to allow documentatation of examples - it is not normally specified


//---------------------------------------------------------------
// Title Page
* extension[confidentialityStatement][+].valueString = "All data is confidential"

* identifier[+].type.coding[+] = $NCIT#C132351 "Sponsor Protocol Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "ABC-Exemplar"

* identifier[+].type.text = "EU CT Number"
* identifier[=].type.coding[+].system = $NCIT
* identifier[=].type.coding[=].code = #C218684
* identifier[=].system = $EMA_CTREG
* identifier[=].value = "EU-1234"

* identifier[+].type.text = "Other Regulatory or Clinical Trial Identifier"
* identifier[=].type.coding[+].system = $NCIT
* identifier[=].type.coding[=].code = #C218690
* identifier[=].system = $ERA_REG
* identifier[=].value = "ERA1234"
* identifier[=].assigner = Reference(Organization/Exemplar-Regulator-Organization)
 
* identifier[+].type.text = "Amendment Identifier"
* identifier[=].type.coding[+].system = $NCIT
* identifier[=].type.coding[=].code = #C218477
* identifier[=].system = $AmdID
* identifier[=].value = "ABC-Exemplar(a)"
// for rendition if there is an amendment at this level need to go and find the amendment with this ID and display the scope

* extension[m11-research-study].extension[originalProtocol].valueCodeableConcept = $NCIT#C218488	"Protocol Previously Amended See Summary of Changes Before the Table of Contents"

* version = "(a)"
* extension[m11-research-study].extension[versionDate].valueDate = 2017-10-01

* title = "A Phase 3 Study of Inhaled Exoticillin compared to Intramuscular Exoticillin for Treatment of Bronchtis Japanese Patients with Iatrogenic Diabetes Mellitus"
* label[+].type = $NCIT#C207646 "Study Acronym"
* label[=].value = "Inhaled vs IM Exoticillin"
* label[+].type = $NCIT#C207615 "Brief Study Title"
* label[=].value = "A Phase 3 Study of Inhaled versus Intramuscular Exoticillin for Bronchtis in Diabetic Japanese Patients"


* status = #active

* phase = $NCIT#C15602  "Phase III Trial"
* focus = Reference(Exemplar-MedicinalProduct)

* associatedParty[+].party = Reference(Organization/Exemplar-Sponsor-Organization)
* associatedParty[=].role = $NCIT#C70793 "Clinical Study Sponsor"
* associatedParty[+].party = Reference(Practitioner/Exemplar-Sponsor-Practitioner)
* associatedParty[=].role = $NCIT#C70793 "Clinical Study Sponsor"

* associatedParty[+].party = Reference(Organization/Exemplar-CoSponsor-Organization)
* associatedParty[=].role = $NCIT#C215669 "Study Co-Sponsor"
* associatedParty[+].party = Reference(Practitioner/Exemplar-CoSponsor-Practitioner)
* associatedParty[=].role = $NCIT#C215669 "Study Co-Sponsor"

* associatedParty[+].party = Reference(Organization/Exemplar-Local-Sponsor-Organization)
* associatedParty[=].role = $NCIT#C215670	"Local Legal Sponsor"
* associatedParty[+].party = Reference(Practitioner/Exemplar-Local-Sponsor-Practitioner)
* associatedParty[=].role = $NCIT#C215670	"Local Legal Sponsor"

* associatedParty[+].party = Reference(Organization/Exemplar-Devices-Organization)
* associatedParty[=].role = $NCIT#C156625  "Device Manufacturer"

* associatedParty[+].party = Reference(Practitioner/Exemplar-Sponsor-Expert-Practitioner)
* associatedParty[=].role = $NCIT#C51876  "Sponsor Medical Expert"

* extension[approval].extension[approvalDate].valueDate = 2017-10-05
* extension[approval].extension[signature].valueSignature.data = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPEVudmVsb3BlIHhtbG5zPSJ1cm46ZW52ZWxvcGUiPgogIDxTaWduYXR1cmUgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyMiPgogICAgPFNpZ25lZEluZm8+CiAgICAgIDxDYW5vbmljYWxpemF0aW9uTWV0aG9kIAogICAgICAgICAgIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvVFIvMjAwMS9SRUMteG1sLWMxNG4tCjIwMDEwMzE1I1dpdGhDb21tZW50cyIvPgogICAgICA8U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS8KeG1sZHNpZyNkc2Etc2hhMSIvPgogICAgICA8UmVmZXJlbmNlIFVSST0iIj4KICAgICAgICA8VHJhbnNmb3Jtcz4KICAgICAgICAgIDxUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5Lwp4bWxkc2lnI2VudmVsb3BlZC1zaWduYXR1cmUiLz4KICAgICAgICA8L1RyYW5zZm9ybXM+CiAgICAgICAgPERpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkvCnhtbGRzaWcjc2hhMSIvPgogICAgICAgIDxEaWdlc3RWYWx1ZT51b29xYldZYTVWQ3FjSkNidXltQktxbTE3dlk9PC9EaWdlc3RWYWx1ZT4KICAgICAgPC9SZWZlcmVuY2U+CiAgICA8L1NpZ25lZEluZm8+CjxTaWduYXR1cmVWYWx1ZT4KS2VkSnVUb2I1Z3R2WXg5cU0zazNnbTdrYkxCd1ZiRVFSbDI2UzJ0bVhqcU5ORDdNUkd0b2V3PT0KICAgIDwvU2lnbmF0dXJlVmFsdWU+CiAgICA8S2V5SW5mbz4KICAgICAgPEtleVZhbHVlPgogICAgICAgIDxEU0FLZXlWYWx1ZT4KICAgICAgICAgIDxQPgovS2FDem80U3lyb203OHozRVE1U2JiQjRzRjdleTgwZXRLSUk4NjRXRjY0QjgxdVJwSDV0OWpRVHhlCkV1MEltYnpSTXF6VkRaa1ZHOXhEN25OMWt1Rnc9PQogICAgICAgICAgPC9QPgogICAgICAgICAgPFE+bGk3ZHpEYWN1bzY3Smc3bXRxRW0yVFJ1T01VPTwvUT4KICAgICAgICAgIDxHPlo0UnhzbnFjOUU3cEdrbkZGSDJ4cWFyeVJQQmFRMDFraHBNZExSUW5HNTQxQXd0eC8KWFBhRjVCcHN5NHBOV01PSENCaU5VME5vZ3BzUVc1UXZubE1wQT09CiAgICAgICAgICA8L0c+CiAgICAgICAgICA8WT5xVjM4SXFyV0pHMFYvCm1aUXZSVmkxT0h3OVpqODRuREM0ak84UDBheGkxZ2I2ZCs0NzV5aE1qU2MvCkJySVZDNThXM3lkYmtLK1JpNE9LYmFSWmxZZVJBPT0KICAgICAgICAgPC9ZPgogICAgICAgIDwvRFNBS2V5VmFsdWU+CiAgICAgIDwvS2V5VmFsdWU+CiAgICA8L0tleUluZm8+CiAgPC9TaWduYXR1cmU+CjwvRW52ZWxvcGU+IA=="
* extension[approval].extension[signatureUrl].valueUrl = "https://somelocation" 
* extension[approval].extension[signatureMethod].valueString = "electronic and wet ink copy"

* relatesTo[+].type = http://terminology.hl7.org/CodeSystem/artifact-relationship-type#justification

//---------------------------------------------------------------
// Amendment
* relatesTo[=].targetReference = Reference(Exemplar-ResearchStudy-Current-Amendment)


//---------------------------------------------------------------
// Narrative
* extension[NarrativeElements][+].valueReference = Reference(Exemplar-Narrative)
* extension[NarrativeElements][+].valueReference = Reference(Exemplar-Narrative-2.1)



//---------------------------------------------------------------
// Section 1
* condition[0] = $SCT#1137328006 "Iatrogenic hypoglycaemia" 

//---------------------------------------------------------------
// TODO Section 12

// * extension[m11-protocol-amendment][=].extension[rationale].valueString = "Updates to address safety concern & align with product guidelines."
// * extension[m11-protocol-amendment][=].extension[description].valueString = "
// Protocol ABC-Exemplar A Phase 3 Study of Inhaled Exoticillin compared to Intramuscular Exoticillin for Treatment of Bronchtis Japanese Patients with Iatrogenic Diabetes Mellitus
// has been amended. The new protocol is indicated by Amendment (a) and will be used to conduct the study in place of any preceding version of the protocol. 
// The overall changes and rationale for the changes made to this protocol are as follows: • An exclusion criterion for patients with retinopathy or maculopathy was added due to the potential risk of 
// fundal hemorrhage induced by hypoglycemia. The Intravenous Exoticillin GlucaGen reconstitution volume was changed from 1.0 mL to 1.1 mL in accordance with instructions in the Summary of Product Characteristics (2015)."




// * extension[m11-protocol-amendment][=].extension[approvalDate].valueDate = 2017-12-05
// //* extension[m11-protocol-amendment][=].extension[signature].valueSignature.sigFormat = $mime#xml "application/fhir+xml"
// * extension[m11-protocol-amendment][=].extension[signature].valueSignature.data = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPEVudmVsb3BlIHhtbG5zPSJ1cm46ZW52ZWxvcGUiPgogIDxTaWduYXR1cmUgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyMiPgogICAgPFNpZ25lZEluZm8+CiAgICAgIDxDYW5vbmljYWxpemF0aW9uTWV0aG9kIAogICAgICAgICAgIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvVFIvMjAwMS9SRUMteG1sLWMxNG4tCjIwMDEwMzE1I1dpdGhDb21tZW50cyIvPgogICAgICA8U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS8KeG1sZHNpZyNkc2Etc2hhMSIvPgogICAgICA8UmVmZXJlbmNlIFVSST0iIj4KICAgICAgICA8VHJhbnNmb3Jtcz4KICAgICAgICAgIDxUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5Lwp4bWxkc2lnI2VudmVsb3BlZC1zaWduYXR1cmUiLz4KICAgICAgICA8L1RyYW5zZm9ybXM+CiAgICAgICAgPERpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkvCnhtbGRzaWcjc2hhMSIvPgogICAgICAgIDxEaWdlc3RWYWx1ZT51b29xYldZYTVWQ3FjSkNidXltQktxbTE3dlk9PC9EaWdlc3RWYWx1ZT4KICAgICAgPC9SZWZlcmVuY2U+CiAgICA8L1NpZ25lZEluZm8+CjxTaWduYXR1cmVWYWx1ZT4KS2VkSnVUb2I1Z3R2WXg5cU0zazNnbTdrYkxCd1ZiRVFSbDI2UzJ0bVhqcU5ORDdNUkd0b2V3PT0KICAgIDwvU2lnbmF0dXJlVmFsdWU+CiAgICA8S2V5SW5mbz4KICAgICAgPEtleVZhbHVlPgogICAgICAgIDxEU0FLZXlWYWx1ZT4KICAgICAgICAgIDxQPgovS2FDem80U3lyb203OHozRVE1U2JiQjRzRjdleTgwZXRLSUk4NjRXRjY0QjgxdVJwSDV0OWpRVHhlCkV1MEltYnpSTXF6VkRaa1ZHOXhEN25OMWt1Rnc9PQogICAgICAgICAgPC9QPgogICAgICAgICAgPFE+bGk3ZHpEYWN1bzY3Smc3bXRxRW0yVFJ1T01VPTwvUT4KICAgICAgICAgIDxHPlo0UnhzbnFjOUU3cEdrbkZGSDJ4cWFyeVJQQmFRMDFraHBNZExSUW5HNTQxQXd0eC8KWFBhRjVCcHN5NHBOV01PSENCaU5VME5vZ3BzUVc1UXZubE1wQT09CiAgICAgICAgICA8L0c+CiAgICAgICAgICA8WT5xVjM4SXFyV0pHMFYvCm1aUXZSVmkxT0h3OVpqODRuREM0ak84UDBheGkxZ2I2ZCs0NzV5aE1qU2MvCkJySVZDNThXM3lkYmtLK1JpNE9LYmFSWmxZZVJBPT0KICAgICAgICAgPC9ZPgogICAgICAgIDwvRFNBS2V5VmFsdWU+CiAgICAgIDwvS2V5VmFsdWU+CiAgICA8L0tleUluZm8+CiAgPC9TaWduYXR1cmU+CjwvRW52ZWxvcGU+IA=="
// * extension[m11-protocol-amendment][=].extension[signatureUrl].valueUrl = "https://somelocation" 
// * extension[m11-protocol-amendment][=].extension[signatureMethod].valueString = "electronic and wet ink copy"