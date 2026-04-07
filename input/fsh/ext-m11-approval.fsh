Extension: M11_Approval
Id: m11-approval
Description: """Approval and sign off"""
Context: M11_ResearchStudyProfile
* ^copyright = """
Portions of this material derives from the ICH M11 Harmonised Guideline CeSHarP. 
The ICH M11 Harmonised Guideline CeSHarP is copyright ©2025+ International Committee on Harmonisation and is made available under license. 

For more licensing information see: [licenses.html](licenses.html)
"""

* ^extension[$ext-fmm].valueInteger = 2
* ^extension[$ext-wg].valueCode = #brr
* ^status = #active

* value[x] 0..0
* . ^short = "Sign-off details"
* . ^definition = "Signature and date for approval."
* . ^comment = "This may need transferring into the StudyDesign profile eventually."

* obeys date-required

* extension contains
  approvalDate 0..1 MS and
  signature 0..1 and //Signature
  signatureUrl 0..1 MS and
  signatureMethod 0..1

* extension[approvalDate].value[x] only date
* extension[signature].value[x] only Signature
* extension[signatureUrl].value[x] only string or url
* extension[signatureMethod].value[x] only string

Invariant: date-required
Description: "At least one of approvalDate or signatureUrl SHOULD be populated."
Expression: "extension.where(url = 'approvalDate').exists() or extension.where(url = 'signatureUrl').exists()"
Severity: #warning