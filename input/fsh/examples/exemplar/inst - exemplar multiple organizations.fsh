//=======================================
//
Instance: Exemplar-Sponsor-Organization
InstanceOf: Organization
Title: "Exemplar Sponsor Organization"
Usage: #example
Description: "A minimal Organization definition"

* name = "Exemplar Pharmaceuticals Co."
* contact[+].purpose.coding[+] = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN "Administrative" //"Contact details for administrative enquiries."
* contact[=].address.line[+] = "Exemplar Road"
* contact[=].address.city = "Exemplarton"
* contact[=].address.postalCode = "EX99 2AB"
* contact[=].address.country = "United Kingdom"

* contact[+].purpose.coding[+] = $NCIT#C70946 "Postal Address"
* contact[=].address.line[+] = "Box 123"
* contact[=].address.city = "Exemplarton"
* contact[=].address.country = "United Kingdom"

//=======================================
//
Instance: Exemplar-CoSponsor-Organization
InstanceOf: Organization
Title: "Exemplar CoSponsor Organization"
Usage: #example
Description: "A minimal Organization definition"

//* name = "Exemplaire Produits Pharmaceutiques Co."
* name = "Exemplar Pharmazeutika GmBH."
* contact[+].purpose.coding[+] = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN "Administrative" //"Contact details for administrative enquiries."
* contact[=].address.line[+] = "Exemplar Strasse"
* contact[=].address.city = "Exemplarburg"
* contact[=].address.postalCode = "75172"
* contact[=].address.country = "Germany"

//=======================================
//
Instance: Exemplar-Local-Sponsor-Organization
InstanceOf: Organization
Title: "Exemplar Local Sponsor Organization"
Usage: #example
Description: "A minimal Organization definition"

* name = "Fictive Pharmaceuticals (Australia) Pty"
* contact[+].purpose.coding[+] = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN "Administrative" //"Contact details for administrative enquiries."
* contact[=].address.line[+] = "Fictive High Road"
* contact[=].address.city = "Fictive Docks"
* contact[=].address.state = "New South Wales"
* contact[=].address.country = "Australia"

//=======================================
//
Instance: Exemplar-Devices-Organization
InstanceOf: Organization
Title: "Exemplar Devices Organization"
Usage: #example
Description: "A minimal Organization definition"

* name = "Exemplar Devices Ltd"
* contact[+].purpose.coding[+] = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN "Administrative" //"Contact details for administrative enquiries."
* contact[=].address.line[+] = "Exemplar Road"
* contact[=].address.city = "Exemplarton"
* contact[=].address.postalCode = "EX99 2AB"
* contact[=].address.country = "United Kingdom"


//=======================================
//
Instance: Exemplar-Regulator-Organization
InstanceOf: Organization
Title: "Exemplar Regulating Authority (ERA)"
Usage: #example
Description: "A minimal Regulator definition"

* name = "Exemplar Regulating Authority (ERA)"
* contact[+].purpose.coding[+] = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN "Administrative" //"Contact details for administrative enquiries."
* contact[=].address.line[+] = "Exemplar Road"
* contact[=].address.city = "Exemplarton"
* contact[=].address.postalCode = "EX99 2AB"
* contact[=].address.country = "United Kingdom"