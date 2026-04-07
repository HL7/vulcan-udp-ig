ValueSet: UDPNarrativeElementsVS
Id: udp-narrative-elements-vs
Title: "UDP Narrative Elements Value Set using NCIT codes to create a FHIR value set."
Description: """Composition Types to Manage Protocol Narrative Elements. This is a UDP specific value set."""
* insert rs-copyright-terminology
* ^extension[$ext-fmm].valueInteger = 2
* ^experimental = false
* ^status = #active

* $NCITURL#C207508 "Narrative Content Text"