Instance: IGBJ-ResearchStudy
InstanceOf: m11-research-study-profile
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

* title = "A Phase 3 Study of Nasal Glucagon (LY900018) Compared to Intramuscular Glucagon for Treatment of Insulin-induced Hypoglycemia in Japanese Patients with Diabetes Mellitus"
* label[+].type = $TitleType#short-title "Short title"
* label[=].value = "A Phase 3 Study of Nasal Glucagon (LY900018) Compared to Intramuscular Glucagon for Treatment of Insulin-induced Hypoglycemia in Japanese Patients with Diabetes Mellitus"
* date = 2017-12-05
* status = $Pub#draft "Draft" // TODO: Check we are really using this correctly
* phase = $NCIT#C15602  "Phase 3"
* focus = Reference(IGBJ-MedicinalProduct)
* condition[0] = $SCT#1137328006 "Iatrogenic hypoglycaemia" // Not "Insulin-induced Hypoglycemia" for which there is no snomed code

* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative)
//* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-1.3)
* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-2.1)
//* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-5.1)
* extension[NarrativeElements][+].valueReference = Reference(IGBJ-Narrative-9)


* extension[m11-protocol-amendment][+].extension[scope].valueCodeableConcept = $NCIT#C217026	"Not Global"
* extension[m11-protocol-amendment][=].extension[country][+].valueCodeableConcept = $iso3166-2#DE "Germany"
* extension[m11-protocol-amendment][=].extension[country][+].valueCodeableConcept = $iso3166-2#GB "United Kingdom of Great Britain and Northern Ireland"
* extension[m11-protocol-amendment][=].extension[region].valueCodeableConcept = $iso3166-2#AU-NSW "New South Wales"
* extension[m11-protocol-amendment][=].extension[site][+].valueIdentifier.system = $AmdSite
* extension[m11-protocol-amendment][=].extension[site][=].valueIdentifier.value = "sss"

* extension[m11-protocol-amendment][=].extension[approvalDate].valueDate = 2017-12-05
//* extension[m11-protocol-amendment][=].extension[signature].valueSignature.sigFormat = $mime#xml "application/fhir+xml"
* extension[m11-protocol-amendment][=].extension[signature].valueSignature.data = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPEVudmVsb3BlIHhtbG5zPSJ1cm46ZW52ZWxvcGUiPgogIDxTaWduYXR1cmUgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyMiPgogICAgPFNpZ25lZEluZm8+CiAgICAgIDxDYW5vbmljYWxpemF0aW9uTWV0aG9kIAogICAgICAgICAgIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvVFIvMjAwMS9SRUMteG1sLWMxNG4tCjIwMDEwMzE1I1dpdGhDb21tZW50cyIvPgogICAgICA8U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS8KeG1sZHNpZyNkc2Etc2hhMSIvPgogICAgICA8UmVmZXJlbmNlIFVSST0iIj4KICAgICAgICA8VHJhbnNmb3Jtcz4KICAgICAgICAgIDxUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5Lwp4bWxkc2lnI2VudmVsb3BlZC1zaWduYXR1cmUiLz4KICAgICAgICA8L1RyYW5zZm9ybXM+CiAgICAgICAgPERpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkvCnhtbGRzaWcjc2hhMSIvPgogICAgICAgIDxEaWdlc3RWYWx1ZT51b29xYldZYTVWQ3FjSkNidXltQktxbTE3dlk9PC9EaWdlc3RWYWx1ZT4KICAgICAgPC9SZWZlcmVuY2U+CiAgICA8L1NpZ25lZEluZm8+CjxTaWduYXR1cmVWYWx1ZT4KS2VkSnVUb2I1Z3R2WXg5cU0zazNnbTdrYkxCd1ZiRVFSbDI2UzJ0bVhqcU5ORDdNUkd0b2V3PT0KICAgIDwvU2lnbmF0dXJlVmFsdWU+CiAgICA8S2V5SW5mbz4KICAgICAgPEtleVZhbHVlPgogICAgICAgIDxEU0FLZXlWYWx1ZT4KICAgICAgICAgIDxQPgovS2FDem80U3lyb203OHozRVE1U2JiQjRzRjdleTgwZXRLSUk4NjRXRjY0QjgxdVJwSDV0OWpRVHhlCkV1MEltYnpSTXF6VkRaa1ZHOXhEN25OMWt1Rnc9PQogICAgICAgICAgPC9QPgogICAgICAgICAgPFE+bGk3ZHpEYWN1bzY3Smc3bXRxRW0yVFJ1T01VPTwvUT4KICAgICAgICAgIDxHPlo0UnhzbnFjOUU3cEdrbkZGSDJ4cWFyeVJQQmFRMDFraHBNZExSUW5HNTQxQXd0eC8KWFBhRjVCcHN5NHBOV01PSENCaU5VME5vZ3BzUVc1UXZubE1wQT09CiAgICAgICAgICA8L0c+CiAgICAgICAgICA8WT5xVjM4SXFyV0pHMFYvCm1aUXZSVmkxT0h3OVpqODRuREM0ak84UDBheGkxZ2I2ZCs0NzV5aE1qU2MvCkJySVZDNThXM3lkYmtLK1JpNE9LYmFSWmxZZVJBPT0KICAgICAgICAgPC9ZPgogICAgICAgIDwvRFNBS2V5VmFsdWU+CiAgICAgIDwvS2V5VmFsdWU+CiAgICA8L0tleUluZm8+CiAgPC9TaWduYXR1cmU+CjwvRW52ZWxvcGU+IA=="
* extension[m11-protocol-amendment][=].extension[signatureUrl].valueUrl = "https://somelocation" 
* extension[m11-protocol-amendment][=].extension[signatureMethod].valueString = "electronic and wet ink copy"

* extension[m11-protocol-amendment][=].extension[scopeImpact][+].extension[scope].valueCodeableConcept = $NCIT#C41065  "Locally"
* extension[m11-protocol-amendment][=].extension[scopeImpact][=].extension[number].valuePositiveInt = 234
* extension[m11-protocol-amendment][=].extension[scopeImpact][+].extension[scope].valueCodeableConcept = $NCIT#C68846  "Globally"
* extension[m11-protocol-amendment][=].extension[scopeImpact][=].extension[number].valuePositiveInt = 983

* extension[m11-protocol-amendment][=].extension[primaryReason].valueCodeableConcept = $NCIT#C218490  "Regulatory Agency Request To Amend"
* extension[m11-protocol-amendment][=].extension[secondaryReason].valueCodeableConcept = $NCIT#C218494  "Manufacturing Change"

* extension[m11-protocol-amendment][=].extension[summary].valueString = "Regulator required manufacturing chanage."

* extension[m11-protocol-amendment][=].extension[substantialImpactSafety].valueCodeableConcept =  $NCIT#C49488  "Yes"
* extension[m11-protocol-amendment][=].extension[substantialImpactSafetyComment].valueString = "Specifically implemented to decrease safety risks."
* extension[m11-protocol-amendment][=].extension[substantialImpactReliability].valueCodeableConcept =  $NCIT#C17998  "Unknown"
* extension[m11-protocol-amendment][=].extension[substantialImpactReliabilityComment].valueString = "ccc"

* extension[m11-protocol-amendment][=].extension[details][+].extension[detail].valueString = "amendment one"
* extension[m11-protocol-amendment][=].extension[details][=].extension[rationale].valueString = "clarification"
* extension[m11-protocol-amendment][=].extension[details][=].extension[section].valueCodeableConcept = $NCIT#C218515  "1.1 Protocol Synopsis"

* extension[m11-protocol-amendment][=].extension[details][+].extension[detail].valueString = "amendment two"
* extension[m11-protocol-amendment][=].extension[details][=].extension[rationale].valueString = "exclude regular drinkers"
* extension[m11-protocol-amendment][=].extension[details][=].extension[section].valueCodeableConcept = $NCIT#C218550  "5.3 Exclusion Criteria"

* extension[m11-protocol-amendment][=].extension[rationale].valueString = "Updates to address safety concern & align with product guidelines."
* extension[m11-protocol-amendment][=].extension[description].valueString = "Protocol I8R-JE-IGBJ A Phase 3 Study of Nasal Glucagon (LY900018) Compared to Intramuscular Glucagon for Treatment of Insulin-induced Hypoglycemia in Japanese Patients with Diabetes Mellitus has been amended. The new protocol is indicated by Amendment (a) and will be used to conduct the study in place of any preceding version of the protocol. The overall changes and rationale for the changes made to this protocol are as follows: • An exclusion criterion for patients with retinopathy or maculopathy was added due to the potential risk of fundal hemorrhage induced by hypoglycemia. • The GlucaGen reconstitution volume was changed from 1.0 mL to 1.1 mL in accordance with instructions in the Summary of Product Characteristics (2015)."

* extension[confidentialityStatement][+].valueString = "All data is confidential"