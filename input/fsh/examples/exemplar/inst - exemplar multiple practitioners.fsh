//=======================================
//
Instance: Exemplar-Sponsor-Practitioner
InstanceOf: Practitioner
Title: "Exemplar Sponsor Practitioner"
Usage: #example
Description: "A minimal Practitioner definition"

* name.text = "Dr Exemplar Practitioner"
// assume Sponsor as an individual has the same legal address
* address[+].line[+] = "Exemplar Road"
* address[=].city = "Exemplarton"
* address[=].postalCode = "EX99 2AB"
* address[=].country = "United Kingdom"


//=======================================
//
Instance: Exemplar-CoSponsor-Practitioner
InstanceOf: Practitioner
Title: "Exemplar CoSponsor Practitioner"
Usage: #example
Description: "A minimal Practitioner definition"

* name.text = "Dr Exemplar von Practitioner"
// assume Sponsor as an individual has the same legal address
* address[+].line[+] = "Exemplar Strasse"
* address[=].city = "Exemplarburg"
* address[=].postalCode = "75172"
* address[=].country = "Germany"


//=======================================
//
Instance: Exemplar-Local-Sponsor-Practitioner
InstanceOf: Practitioner
Title: "Exemplar Local Sponsor Practitioner"
Usage: #example
Description: "A minimal Practitioner definition"

* name.text = "Bruce Exemplar"
// assume Sponsor as an individual has the same legal address
* address[+].line[+] = "Fictive High Road"
* address[=].city = "Fictive Docks"
* address[=].state = "New South Wales"
* address[=].country = "Australia"

//=======================================
//
Instance: Exemplar-Sponsor-Expert-Practitioner
InstanceOf: Practitioner
Title: "Exemplar Sponsor Expert Medical Practitioner"
Usage: #example
Description: "A minimal Practitioner definition"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <p>Dr Exemplar Consultant: </p><p>Mobile: +44 7999 999 999 </p><p>eMail: Ex.Consultant@ExemplarHospital.nhs.uk</p>
    </div>"
* name.text = "Dr Exemplar Consultant"
* telecom[+].system = #email
* telecom[=].value = "Ex.Consultant@ExemplarHospital.nhs.uk"
* telecom[=].rank = 2
* telecom[+].system = #phone
* telecom[=].use = #mobile
* telecom[=].value = "+44 7999 999 999"
* telecom[=].rank = 1
* address[+].line[+] = "General Medicine Dept"
* address[+].line[+] = "Exemplar Hospital"
* address[=].city = "Exemplarton"
* address[=].postalCode = "XR99 2AY"
* address[=].country = "United Kingdom"