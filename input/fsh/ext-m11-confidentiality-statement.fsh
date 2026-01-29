Extension: M11_ConfidentialityStatement
Id: m11-confidentiality-statement
Description: "Sponsor Confidentiality Statement.  This is a replica of EBM ResearchStudySponsorConfidentialityStatewent"
* ^extension[$ext-fmm].valueInteger = 1
* ^extension[$ext-wg].valueCode = #cds
* ^extension[$ext-standards-status].valueCode = #draft
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only string
* . ^short = "Sponsor Confidentiality Statement, if applicable."
* . ^definition = "Sponsor Confidentiality Statement, if applicable."
