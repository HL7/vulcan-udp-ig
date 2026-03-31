ValueSet: UDPAddressPurposeType
Id: udp-address-purpose-type-vs
Title: "UDP Address Purpose Type Value Set"
Description: """These codes represent intended use of an address.  There is an HL7 value set 
for Contact entity type - this has "prefered" binding and must therefore be included in this value set
This is a UDP specific value set using NCIT codes to extend a required HL7 value set.

Neither HL7 nor NCIT have the simle concept of a "legal address".  HL7 has the concept of an Administrative address
which is not precise enough and NCIT has Sponsor Legal Address, Co-SPonsor Legal Address etc
For the present we shall use the HL7 ADMIN address as the designation of the legal address.
"""
* ^extension[$ext-fmm].valueInteger = 1
* ^experimental = false
* ^status = #active
* ^publisher = "UDP"

* include codes from valueset http://terminology.hl7.org/ValueSet/contactentity-type
* $NCIT#C218677 "Sponsor Legal Address"
* $NCIT#C218679 "Co-Sponsor Legal Address"
* $NCIT#C70946 "Postal Address"
