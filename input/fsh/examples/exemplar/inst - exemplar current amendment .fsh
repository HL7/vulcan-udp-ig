Instance: Exemplar-ResearchStudy-Current-Amendment
InstanceOf: m11-research-study-profile
Title: "Current amendments details"
Usage: #example
Description: """Illustration of a protocol with some parts in narrative form and some in granular form.  The same example can also be viewed
on the server by following this link https://vhewer.com/display-product?url=https://jghxykgqfk.edge.aidbox.app/ResearchStudy/Exemplar-ResearchStudy-001.

This desceribes an entirely ficticious protocol for an imaginary product with Brand name Exotex and generic name Exoticillin produced by Exemplar 
Pharmaceuticals.  The regulator is the Exemplar Regulating Authority (ERA) 
"""

* status = #active
//---------------------------------------------------------------
// Title Page
* identifier[+].type.coding[+] = $NCIT#C132351 "Sponsor Protocol Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "ABC-Exemplar"
* identifier[=].use = #usual

* extension[m11-research-study].extension[originalProtocol].valueCodeableConcept = $NCIT#C218488	"Protocol Previously Amended See Summary of Changes Before the Table of Contents"

* version = "(a)"
* extension[m11-research-study].extension[versionDate].valueDate = 2017-10-01

* extension[approval].extension[approvalDate].valueDate = 2017-10-05
* extension[approval].extension[signature].valueSignature.data = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPEVudmVsb3BlIHhtbG5zPSJ1cm46ZW52ZWxvcGUiPgogIDxTaWduYXR1cmUgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyMiPgogICAgPFNpZ25lZEluZm8+CiAgICAgIDxDYW5vbmljYWxpemF0aW9uTWV0aG9kIAogICAgICAgICAgIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvVFIvMjAwMS9SRUMteG1sLWMxNG4tCjIwMDEwMzE1I1dpdGhDb21tZW50cyIvPgogICAgICA8U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS8KeG1sZHNpZyNkc2Etc2hhMSIvPgogICAgICA8UmVmZXJlbmNlIFVSST0iIj4KICAgICAgICA8VHJhbnNmb3Jtcz4KICAgICAgICAgIDxUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5Lwp4bWxkc2lnI2VudmVsb3BlZC1zaWduYXR1cmUiLz4KICAgICAgICA8L1RyYW5zZm9ybXM+CiAgICAgICAgPERpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkvCnhtbGRzaWcjc2hhMSIvPgogICAgICAgIDxEaWdlc3RWYWx1ZT51b29xYldZYTVWQ3FjSkNidXltQktxbTE3dlk9PC9EaWdlc3RWYWx1ZT4KICAgICAgPC9SZWZlcmVuY2U+CiAgICA8L1NpZ25lZEluZm8+CjxTaWduYXR1cmVWYWx1ZT4KS2VkSnVUb2I1Z3R2WXg5cU0zazNnbTdrYkxCd1ZiRVFSbDI2UzJ0bVhqcU5ORDdNUkd0b2V3PT0KICAgIDwvU2lnbmF0dXJlVmFsdWU+CiAgICA8S2V5SW5mbz4KICAgICAgPEtleVZhbHVlPgogICAgICAgIDxEU0FLZXlWYWx1ZT4KICAgICAgICAgIDxQPgovS2FDem80U3lyb203OHozRVE1U2JiQjRzRjdleTgwZXRLSUk4NjRXRjY0QjgxdVJwSDV0OWpRVHhlCkV1MEltYnpSTXF6VkRaa1ZHOXhEN25OMWt1Rnc9PQogICAgICAgICAgPC9QPgogICAgICAgICAgPFE+bGk3ZHpEYWN1bzY3Smc3bXRxRW0yVFJ1T01VPTwvUT4KICAgICAgICAgIDxHPlo0UnhzbnFjOUU3cEdrbkZGSDJ4cWFyeVJQQmFRMDFraHBNZExSUW5HNTQxQXd0eC8KWFBhRjVCcHN5NHBOV01PSENCaU5VME5vZ3BzUVc1UXZubE1wQT09CiAgICAgICAgICA8L0c+CiAgICAgICAgICA8WT5xVjM4SXFyV0pHMFYvCm1aUXZSVmkxT0h3OVpqODRuREM0ak84UDBheGkxZ2I2ZCs0NzV5aE1qU2MvCkJySVZDNThXM3lkYmtLK1JpNE9LYmFSWmxZZVJBPT0KICAgICAgICAgPC9ZPgogICAgICAgIDwvRFNBS2V5VmFsdWU+CiAgICAgIDwvS2V5VmFsdWU+CiAgICA8L0tleUluZm8+CiAgPC9TaWduYXR1cmU+CjwvRW52ZWxvcGU+IA=="
* extension[approval].extension[signatureUrl].valueUrl = "https://somelocation" 
* extension[approval].extension[signatureMethod].valueString = "electronic and wet ink copy"


//---------------------------------------------------------------
// Title Page Amemndment Summary
//

// This identifier is a duplicate of the one above
* extension[m11-protocol-amendment][+].extension[identifier][+].valueIdentifier.type.text = "Amendment Identifier"
* extension[m11-protocol-amendment][=].extension[identifier][=].valueIdentifier.system = $AmdID
* extension[m11-protocol-amendment][=].extension[identifier][=].valueIdentifier.value = "ABC-Exemplar(a)"

* extension[m11-protocol-amendment][=].extension[previous].valueCodeableConcept = $NCIT#C218488	"Protocol Previously Amended See Summary of Changes Before the Table of Contents"

* extension[m11-protocol-amendment][=].extension[scope].valueCodeableConcept = $NCIT#C217026	"Not Global"
* extension[m11-protocol-amendment][=].extension[country][+].valueCodeableConcept = $iso3166#DE "Germany"
* extension[m11-protocol-amendment][=].extension[country][+].valueCodeableConcept = $iso3166#GB "United Kingdom of Great Britain and Northern Ireland"
* extension[m11-protocol-amendment][=].extension[region].valueCodeableConcept = $iso3166-2#AU-NSW "New South Wales"
* extension[m11-protocol-amendment][=].extension[site][+].valueIdentifier.system = $AmdSite
* extension[m11-protocol-amendment][=].extension[site][=].valueIdentifier.value = "exemplarSite-14"



* extension[m11-protocol-amendment][=].extension[scopeImpact][+].extension[scope].valueCodeableConcept = $NCIT#C41065  "Locally"
* extension[m11-protocol-amendment][=].extension[scopeImpact][=].extension[number].valuePositiveInt = 234
* extension[m11-protocol-amendment][=].extension[scopeImpact][+].extension[scope].valueCodeableConcept = $NCIT#C68846  "Global"
* extension[m11-protocol-amendment][=].extension[scopeImpact][=].extension[number].valuePositiveInt = 983

* extension[m11-protocol-amendment][=].extension[primaryReason].valueCodeableConcept = $NCIT#C218490  "Regulatory Agency Request to Amend Amendment Reason"
* extension[m11-protocol-amendment][=].extension[secondaryReason][+].valueCodeableConcept = $NCIT#C218494  "Manufacturing Change Amendment Reason"
* extension[m11-protocol-amendment][=].extension[secondaryReason][+].valueCodeableConcept = $NCIT#C17649  "Other"
* extension[m11-protocol-amendment][=].extension[secondaryReason][=].valueCodeableConcept.text = "Packaging revision"
* extension[m11-protocol-amendment][=].extension[summary].valueString = "Manufacturing chanage to enable packaging change to recyclable materials."

* extension[m11-protocol-amendment][=].extension[substantialImpactSafety].valueCodeableConcept =  $NCIT#C49488  "Yes"
* extension[m11-protocol-amendment][=].extension[substantialImpactSafetyComment].valueString = "Specifically implemented to decrease safety risks."
* extension[m11-protocol-amendment][=].extension[substantialImpactReliability].valueCodeableConcept =  $NCIT#C49487  "No"

* extension[m11-protocol-amendment][=].extension[details][+].extension[detail].valueString = "Clarification"
* extension[m11-protocol-amendment][=].extension[details][=].extension[rationale].valueString = "Clarification of synopsis at request of regulator"
* extension[m11-protocol-amendment][=].extension[details][=].extension[section].valueCodeableConcept = $NCIT#C218515  "ICH M11 Protocol Section 1.1 Protocol Synopsis"

* extension[m11-protocol-amendment][=].extension[details][+].extension[detail].valueString = "Exclusion change"
* extension[m11-protocol-amendment][=].extension[details][=].extension[rationale].valueString = "Exclude regular drinkers at request of regulator"
* extension[m11-protocol-amendment][=].extension[details][=].extension[section].valueCodeableConcept = $NCIT#C218550  "ICH M11 Protocol Section 5.3 Exclusion Criteria"

* extension[m11-protocol-amendment][=].extension[details][+].extension[detail].valueString = "Packaging change"
* extension[m11-protocol-amendment][=].extension[details][=].extension[rationale].valueString = "Change to recyclable packaging (stated in proprietary name)."
* extension[m11-protocol-amendment][=].extension[details][=].extension[section].valueCodeableConcept = $NCIT#C222769  "ICH M11 Protocol Section Title Page"


// * extension[m11-protocol-amendment][=].extension[rationale].valueString = "Updates to address safety concern & align with product guidelines."
* extension[m11-protocol-amendment][=].extension[description].valueMarkdown = """#Protocol ABC-Exemplar A Phase 3 Study of Inhaled Exoticillin compared to Intramuscular Exoticillin for Treatment of Bronchtis Japanese Patients with Iatrogenic Diabetes Mellitus
    has been amended.
    The new protocol is indicated by *Amendment (a)* and will be used to conduct the study in place of any preceding version of the protocol. 
    The overall changes and rationale for the changes made to this protocol are as follows: 
    - An exclusion criterion for patients with retinopathy or maculopathy was added due to the potential risk of 
    fundal hemorrhage induced by hypoglycemia. 
    - The Intravenous Exoticillin GlucaGen reconstitution volume was changed from 1.0 mL to 1.1 mL in accordance with instructions in the Summary of Product Characteristics (2015).
    """



// * extension[m11-protocol-amendment][=].extension[approvalDate].valueDate = 2017-12-05
// //* extension[m11-protocol-amendment][=].extension[signature].valueSignature.sigFormat = $mime#xml "application/fhir+xml"
// * extension[m11-protocol-amendment][=].extension[signature].valueSignature.data = "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPEVudmVsb3BlIHhtbG5zPSJ1cm46ZW52ZWxvcGUiPgogIDxTaWduYXR1cmUgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyMiPgogICAgPFNpZ25lZEluZm8+CiAgICAgIDxDYW5vbmljYWxpemF0aW9uTWV0aG9kIAogICAgICAgICAgIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvVFIvMjAwMS9SRUMteG1sLWMxNG4tCjIwMDEwMzE1I1dpdGhDb21tZW50cyIvPgogICAgICA8U2lnbmF0dXJlTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS8KeG1sZHNpZyNkc2Etc2hhMSIvPgogICAgICA8UmVmZXJlbmNlIFVSST0iIj4KICAgICAgICA8VHJhbnNmb3Jtcz4KICAgICAgICAgIDxUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5Lwp4bWxkc2lnI2VudmVsb3BlZC1zaWduYXR1cmUiLz4KICAgICAgICA8L1RyYW5zZm9ybXM+CiAgICAgICAgPERpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkvCnhtbGRzaWcjc2hhMSIvPgogICAgICAgIDxEaWdlc3RWYWx1ZT51b29xYldZYTVWQ3FjSkNidXltQktxbTE3dlk9PC9EaWdlc3RWYWx1ZT4KICAgICAgPC9SZWZlcmVuY2U+CiAgICA8L1NpZ25lZEluZm8+CjxTaWduYXR1cmVWYWx1ZT4KS2VkSnVUb2I1Z3R2WXg5cU0zazNnbTdrYkxCd1ZiRVFSbDI2UzJ0bVhqcU5ORDdNUkd0b2V3PT0KICAgIDwvU2lnbmF0dXJlVmFsdWU+CiAgICA8S2V5SW5mbz4KICAgICAgPEtleVZhbHVlPgogICAgICAgIDxEU0FLZXlWYWx1ZT4KICAgICAgICAgIDxQPgovS2FDem80U3lyb203OHozRVE1U2JiQjRzRjdleTgwZXRLSUk4NjRXRjY0QjgxdVJwSDV0OWpRVHhlCkV1MEltYnpSTXF6VkRaa1ZHOXhEN25OMWt1Rnc9PQogICAgICAgICAgPC9QPgogICAgICAgICAgPFE+bGk3ZHpEYWN1bzY3Smc3bXRxRW0yVFJ1T01VPTwvUT4KICAgICAgICAgIDxHPlo0UnhzbnFjOUU3cEdrbkZGSDJ4cWFyeVJQQmFRMDFraHBNZExSUW5HNTQxQXd0eC8KWFBhRjVCcHN5NHBOV01PSENCaU5VME5vZ3BzUVc1UXZubE1wQT09CiAgICAgICAgICA8L0c+CiAgICAgICAgICA8WT5xVjM4SXFyV0pHMFYvCm1aUXZSVmkxT0h3OVpqODRuREM0ak84UDBheGkxZ2I2ZCs0NzV5aE1qU2MvCkJySVZDNThXM3lkYmtLK1JpNE9LYmFSWmxZZVJBPT0KICAgICAgICAgPC9ZPgogICAgICAgIDwvRFNBS2V5VmFsdWU+CiAgICAgIDwvS2V5VmFsdWU+CiAgICA8L0tleUluZm8+CiAgPC9TaWduYXR1cmU+CjwvRW52ZWxvcGU+IA=="
// * extension[m11-protocol-amendment][=].extension[signatureUrl].valueUrl = "https://somelocation" 
// * extension[m11-protocol-amendment][=].extension[signatureMethod].valueString = "electronic and wet ink copy"