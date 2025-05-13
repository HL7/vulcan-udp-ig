Alias: NCIT = http://terminology.hl7.org/NamingSystem/v3-nciThesaurus

Extension: NarrativeElements
Id: narrative-elements
Title: "Narrative Elements"
Description: "Narrative content for the ResearchStudy."
Context: ResearchStudy
* value[x] only valueReference
* valueReference only Reference(ResearchStudyNarratives)

Profile: ResearchStudyNarratives
Parent: Composition
Id:  research-study-narratives
Title:  "Research Study Narratives"
Description:    "Additional narrative elements associated with a research study."
* section.code from M11SectionCodesVS (preferred)

ValueSet: M11SectionCodesVS
Id: m11-section-codes-vs
Title: "M11 Section Codes Value Set"
Description: "Codes representing sections of M11."
* NCIT#C181236 "Protocol Confidentiality Statement"
* NCIT#C132346
* NCIT#C94108
* NCIT#C132351
* NCIT#C181232
* NCIT#C93813
* NCIT#C20108
* NCIT#C20108
* NCIT#C20108
* NCIT#C97054
* NCIT#C71898
* NCIT#C48281
* NCIT#C132345
* NCIT#C70793
* NCIT#C17649
* NCIT#C17649
* NCIT#C98746
* NCIT#C112038
* NCIT#C49647
* NCIT#C49693
* NCIT#C50400
* NCIT#C49694
* NCIT#C50400
* NCIT#C98771
* NCIT#C49658
* NCIT#C49692
* NCIT#C93682
* NCIT#C146997
* NCIT#C85826
* NCIT#C70833
* NCIT#C49236
* NCIT#C25212
* NCIT#C188853
* NCIT#C188853
* NCIT#C188857
* NCIT#C163559
* NCIT#C142698
* NCIT#C25532 
* NCIT#C25370
* NCIT#C17708
* NCIT#C49628
* NCIT#C93729
* NCIT#C172457
* NCIT#C177930
* NCIT#C98747
* NCIT#C42636
* NCIT#C94394
* NCIT#C38114
* NCIT#C176274
* NCIT#C115525
* NCIT#C176267
* NCIT#C25196
* NCIT#C189349
* NCIT#C165822
* NCIT#C165835
* NCIT#C53630
* NCIT#C20989
* NCIT#C154628
* NCIT#C168186
* NCIT#C92949
* NCIT#C25676
* NCIT#C82552
* NCIT#C164387
* NCIT#C142582
* NCIT#C115467
* NCIT#C184390
* NCIT#C125442
* NCIT#C25294
* NCIT#C20108
* NCIT#C184397
