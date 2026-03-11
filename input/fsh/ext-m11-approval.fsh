Extension: M11_Approval
Id: m11-approval
Description: "Approval and sign off"
Context: M11_ResearchStudyProfile
* ^extension[$ext-fmm].valueInteger = 2
* ^extension[$ext-wg].valueCode = #brr
* ^extension[$ext-standards-status].valueCode = #draft

* value[x] 0..0
* . ^short = "Sign-off details"
* . ^definition = "Signature and date for approval."
* . ^comment = "This may need transferring into the StudyDesign profile eventually."


* extension contains
  approvalDate 0..1 and
  signature 0..1 and //Signature
  signatureUrl 0..1 and
  signatureMethod 0..1

* extension[approvalDate].value[x] only date
* extension[signature].value[x] only Signature
* extension[signatureUrl].value[x] only string or url
* extension[signatureMethod].value[x] only string