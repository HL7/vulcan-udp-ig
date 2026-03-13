ValueSet: UDPPartyRoleType
Id: udp-party-role-type-vs
Title: "UDP Party Role Type Value Set"
Description: """These codes represent the types of role ResearchStudy.AssociatedParty can play.
This is a UDP specific value set.
"""
* ^extension[$ext-fmm].valueInteger = 1
* ^experimental = false
* ^status = #active
* ^publisher = "UDP"

* $NCIT#C70793  "Clinical Study Sponsor"
* $NCIT#C215670	"Local Legal Sponsor"
* $NCIT#C71136	"Regulatory Application Sponsor"
* $NCIT#C142679	"Secondary Sponsor"
* $NCIT#C215669	"Study Co-Sponsor"
* $NCIT#C93478	"Study Legal Sponsor"
* $NCIT#C156625 "Device Manufacturer"
* $NCIT#C51876  "Sponsor Medical Expert"


