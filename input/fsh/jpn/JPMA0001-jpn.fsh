Instance: JPMA0001-jpn
InstanceOf: m11-research-study-profile
Title: "JPMA0001 Provided Example - Japanese Language"
Usage: #example
Description: """Illustration of a Japanese language protocol - this is the original Japanese"""

* identifier[+].type.text = "Sponsor Identifier"
* identifier[=].system = $SpID
* identifier[=].value = "JPMA001"
* identifier[=].use = #usual

* version = "2.0"
// version date

* title = "	経口血糖降下薬単剤による治療では血糖コントロール不十分な2型糖尿病患者を対象として，JPMA001を併用投与した時の安全性および有効性を検討する多施設共同，52週間，ランダム化，並行群間試験"
* label[+].type = $TitleType#short-title "Short title"
* label[=].value = "2型糖尿病患者への投与"
* date = 2026-01-14
* status = $Pub#draft "Draft" // TODO: Check we are really using this correctly
* phase = $NCIT#C15602  "Phase 3"

* recruitment[+].eligibility = Reference(JPMA0001-Criteria-JPN)

* extension[NarrativeElements][+].valueReference = Reference(JPMA0001-Section5-jpn)
