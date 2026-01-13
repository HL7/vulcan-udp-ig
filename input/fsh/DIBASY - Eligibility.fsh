Instance: DIBASY-Eligibility
InstanceOf: Group
Usage: #example
Description: "Simple Eligibility criteria - Age 30-60 years + BMI>=35 + History type 2 diabetes >5y"

* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = $ID-EligibilityCriteria
* identifier.value = "172461"

* name = "DIBASY Eligibility Criteria"
* title = "StudyEligibilityCriteria: Eligibility Criteria for DIBASY Trial"
* status = #active

* description = "Patients aged 30-60 years with a body-mass index of 35 kg/m(2) or more and a history of type 2 diabetes lasting at least 5 years"
* membership = #definitional
* combinationMethod = #all-of

* characteristic[0].code = $SCT#64572001 "Disease (disorder)"
* characteristic[=].valueCodeableConcept = $SCT#44054006 "Diabetes mellitus type 2 (disorder)"
* characteristic[=].exclude = false
* characteristic[=].description = "history of type 2 diabetes lasting at least 5 years"
* characteristic[=].durationDuration.value = 5
* characteristic[=].durationDuration.comparator = #>=
* characteristic[=].durationDuration.code = #a // "a" is the UCUM code for year
* characteristic[=].durationDuration.system = $UCUM
* characteristic[=].durationDuration.unit = "years"

* characteristic[+].code = $SCT#397669002 "Age"
* characteristic[=].valueRange.low = 30 'a' "years"
* characteristic[=].valueRange.high = 60 'a' "years"
* characteristic[=].exclude = false
* characteristic[=].description = "aged 30-60 years"

* characteristic[+].code = $LOINC#39156-5 "Body mass index (BMI) [Ratio]"
* characteristic[=].valueQuantity.comparator = #>=
* characteristic[=].valueQuantity = 35 'kg/m2' "kilogram per square meter"
* characteristic[=].exclude = false
* characteristic[=].description = "body-mass index of 35 kg/m(2) or more"