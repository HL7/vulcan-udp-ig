Extension: M11_ConfidentialityStatement
Id: m11-confidentiality-statement
Description: "Sponsor Confidentiality Statement.  This is a replica of EBM ResearchStudySponsorConfidentialityStatement"
Context: M11_ResearchStudyProfile
* insert rs-copyright-structure
* ^extension[$ext-fmm].valueInteger = 2
* ^extension[$ext-wg].valueCode = #brr
//* ^context.type = #element
//* ^context.expression = "ResearchStudy"
* ^status = #active

* value[x] only string
* . ^short = "Sponsor Confidentiality Statement, if applicable."
* . ^definition = "Sponsor Confidentiality Statement, if applicable."
