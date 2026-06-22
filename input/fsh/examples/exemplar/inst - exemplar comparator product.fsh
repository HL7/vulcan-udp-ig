Instance: Exemplar-ComparatorProduct
InstanceOf: MedicinalProductDefinition
Title: "Exemplar Comparator Product"
Usage: #example
Description: """Illustration of a MedicinalProductDefinition used by the protocol for the Comparator Product
"""

// TODO Check COmparator product code type
* identifier[+].type.coding[+] = $NCIT#C218675 "Sponsor's Investigational Product Code"
* identifier[=].system = $SpID
* identifier[=].value = " EX2010/12"

* name[+].productName = "exoticillin 10micrograms/1.5ml intramuscular injection"
* name[=].type = $NCIT#C97054 "Nonproprietary Name(s)"
