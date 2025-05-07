//--------------------------------------------------------------
CodeSystem: SponsorIdentifier_CS
Id: sponsor-identifier-cs
Title: "Sponsor Identifier Code System"
Description: "A means of identifing the sponsor who generated the identifiers used in the protocol.
This needs discussion and should probably be some external code system, IDMP, and EPI will have guidance to follow."
* #SPON-1 "Acme Pharma" "Acme Pharmaceuticals (UK) Ltd"
* #SPON-2 "Exotic Int" "Exotoc Pharmaceuticals International Inc."

ValueSet: SponsorIdentifier_VS
Title: "Sponsor Identifier Value Set"
Id: sponsor-identifier-vs
Description: "Identification of the sponsor who generated the identifiers used in the protocol."
* include codes from system sponsor-identifier-cs

//--------------------------------------------------------------
CodeSystem: AmendmentOriginal_CS
Id: amendment-original-cs
Title: "Protocol Amendment Code System"
Description: "A set of values for originality of protocol - this is NOT how it should be done!"
* #AOVS-1 "Original"
"The protocol document reflects the original version of the protocol."
* #AOVS-2 "Modified"
"The protocol document is different from the original version of the protocol."

ValueSet: AmendmentOriginal_VS
Title: "Protocol Amendment Value Set"
Id: protocol-amendment-vs
Description: "Possible values for originality of protocol - this is NOT how it should be done!"
* amendment-original-cs#AOVS-1 "Original"
* amendment-original-cs#AOVS-2 "Modified"

//--------------------------------------------------------------
// Profile of ResearchStudy for M11 CeSHarP
Profile: CeSHarPResearchStudy
Parent: ResearchStudy
Id: cesharp-researchstudy
Title: "Profile of ResearchStudy for M11 CeSHarP"
Description: "Profile of ResearchStudy for M11 CeSHarP - particularly provides clarity on definitions and usage of elements"
//* date -> "CeSHarP.date shall be the only interpretation"
* extension contains study-amendment named amendments 0..1


//--------------------------------------------------------------
// Additions to ResearchStudy to support M11 CeSHarP
Extension:  ProtocolVersion
Parent: Extension
Id: protocol-version
Title: "Protocol Aversion for M11 CeSHarP"
Description: "Additions to ResearchStudy to support M11 CeSHarP
![Lego-bricks 64x58](Lego-bricks 64x58.png)

This Value Set is to *provoke* discussion and to illustrate terminology.
It is not really how this should be done."

* ^context.type = #element
* ^context.expression = "ResearchStudy"
* value[x] only code
* valueCode 1..1
* valueCode from protocol-amendment-vs (extensible)


//--------------------------------------------------------------
// Additions to ResearchStudy to support M11 CeSHarP
Extension:  ProtocolAmendment
Parent: Extension
Id: study-amendment
Title: "Protocol Amendment for M11 CeSHarP"
Description: "Additions to ResearchStudy to support M11 CeSHarP"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* extension contains
    originalProtocolIndicator 0..1 and
    versionNumber 0..1 and
    versionDate 0..1 and
    amendmentIdentifier 0..1
* extension[originalProtocolIndicator] ^short = "An indication as to whether the protocol document reflects the original version of the protocol."
* extension[originalProtocolIndicator].value[x] only string
* extension[versionNumber] ^short = "A string of numerals that uniquely identifies a specific version of a study protocol."
* extension[versionNumber].value[x] only string
* extension[versionDate] ^short = "The date on which the document is versioned."
* extension[versionDate].value[x] only date
* extension[amendmentIdentifier] ^short = "A sequence of characters used to uniquely identify a protocol amendment."
* extension[amendmentIdentifier].value[x] only string