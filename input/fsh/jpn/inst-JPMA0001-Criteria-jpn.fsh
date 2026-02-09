Instance: JPMA0001-Criteria-JPN
InstanceOf: Group
Usage: #Example
Description: "Example showing Janapese text"

* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = $ID-EligibilityCriteria
* identifier.value = "425098"

* name = "JPMA Eligibility Example"
* title = "Japanese Protocol from Vulcan UDP Eligibility Criteria"
* status = #active

* type = #person
* membership = #definitional
* combinationMethod = #all-of

// Inclusion 1
// Patients diagnosed with type 2 diabetes before consent is obtained.
* characteristic[0].description = "同意取得前に2型糖尿病と診断されている患者" 
* characteristic[=].code = $SCT#64572001 "Disease (disorder)"
* characteristic[=].valueCodeableConcept = $SCT#44054006 "Diabetes mellitus type 2 (disorder)"
* characteristic[=].exclude = false
* characteristic[=].timing.contextCode.coding.system = "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"
* characteristic[=].timing.contextCode.coding.code = #C16735
* characteristic[=].timing.contextCode.coding.display = "Informed Consent"
* characteristic[=].timing.offsetDuration.comparator = #<
* characteristic[=].timing.offsetDuration.value = 0
* characteristic[=].timing.text = "before obtaining informed consent"

// Inclusion 2
// Male and female patients on diet and exercise therapy who are receiving treatment with one of the following oral hypoglycemic drugs
//* characteristic[+].description = "食事療法および運動療法を実施中の男女患者で以下の経口血糖降下薬1剤による治療を受けている患者" 
//* characteristic[=].code = $fhir-types#MedicationRequest "MedicationRequest"
//* characteristic[=].valueReference = Reference(Group/425099) "Dosing characteristics of oral hypoglycemic agents"
//* characteristic[=].valueReference.type = "Group"
//* characteristic[=].exclude = false

// Inclusion 3
// missing

// Inclusion 4
// Visit 1でのHbA1cが≥7.5% ≤12.0%（NGSP）
* characteristic[+].description = "Visit 1でのHbA1cが≥7.5% ≤12.0%（NGSP）" 
* characteristic[=].code = $LOINC#59261-8 "Hemoglobin A1c/Hemoglobin.total in Blood"
* characteristic[=].valueRange.low = 7.5 '%' "%"
* characteristic[=].valueRange.high = 12 '%' "%"
* characteristic[=].exclude = false
* characteristic[=].timing.text = "at Visit 1"

// Inclusion 5
// Patients with hypertension on drug treatment, patients who have been using the antihypertensive drug stably for more than 4 weeks before the allocation of the study drug.
* characteristic[+].description = "薬物治療中の高血圧症を合併している患者の場合，その降圧薬が治験薬の割付前4週間以上変更なく安定して使用されている患者" 
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "薬物治療中の高血圧症を合併している患者の場合，その降圧薬が治験薬の割付前4週間以上変更なく安定して使用されている患者"
* characteristic[=].exclude = false

// Inclusion 6
// Age 20 years or older at the time of obtaining consent
* characteristic[+].description = "同意取得時の年齢が20歳以上" 
* characteristic[=].code = $SCT#397669002 "Age"
* characteristic[=].valueQuantity.comparator = #>=
* characteristic[=].valueQuantity = 20 'a' "years"
* characteristic[=].exclude = false
* characteristic[=].timing.contextCode.coding.system = "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"
* characteristic[=].timing.contextCode.coding.code = #C16735
* characteristic[=].timing.contextCode.coding.display = "Informed Consent"
* characteristic[=].timing.offsetDuration.value = 0

// Inclusion 7
// BMI (body mass index) less than or equal to 40.0 kg/m2 at Visit 1
* characteristic[+].description = "Visit 1でのBMI（体格指数）が40.0 kg/m2以下" 
* characteristic[=].code = $LOINC#39156-5 "Body mass index (BMI) [Ratio]"
* characteristic[=].valueQuantity.comparator = #<=
* characteristic[=].valueQuantity = 40 'kg/m2' "kilogram per square meter (kg/m2)"
* characteristic[=].exclude = false
* characteristic[=].timing.text = "At Visit 1"

// Inclusion 8
// Patients who have obtained signed and dated written consent by Visit 1 in accordance with the GCP (Standards for the Conduct of Clinical Trials of Pharmaceuticals, March 27, 27, Ministry of Health and Welfare Ordinance) and the Pharmaceutical Affairs Act
* characteristic[+].description = "GCP（医薬品の臨床試験の実施の基準，平成9年3月27日，厚生省令第28号）および薬事法に従い，Visit 1 までに署名・日付入りの文書同意が得られた患者" 
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "GCP（医薬品の臨床試験の実施の基準，平成9年3月27日，厚生省令第28号）および薬事法に従い，Visit 1 までに署名・日付入りの文書同意が得られた患者"
* characteristic[=].exclude = false

// Exclusion 1
// Patients with uncontrolled hyperglycemia with a fasting blood glucose level of 240 mg/dL (13.3 mmol/L) after an overnight fast measured during the placebo induction period.
* characteristic[+].description = "プラセボ導入期間中に測定した一晩絶食後の空腹時血糖値が240 mg/dL（13.3 mmol/L）を確認された，コントロール不良な高血糖を有する患者"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "プラセボ導入期間中に測定した一晩絶食後の空腹時血糖値が240 mg/dL（13.3 mmol/L）を確認された，コントロール不良な高血糖を有する患者"
* characteristic[=].exclude = true

// Exclusion 2
// Patients who are not treated with oral hypoglycemic drugs and patients who are treated with two or more oral hypoglycemic drugs
* characteristic[+].description = "経口血糖降下薬で治療されていない患者，および2種類以上の経口血糖降下薬で治療されている患者"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "経口血糖降下薬で治療されていない患者，および2種類以上の経口血糖降下薬で治療されている患者"
* characteristic[=].exclude = true

// Exclusion 3
// Patients with a history of acute coronary syndrome (non-ST-elevation myocardial infarction, ST-elevation myocardial infarction, and unstable angina), stroke, or transient ischemic attack within 24 weeks prior to obtaining consent
* characteristic[+].description = "同意取得前24週間以内に急性冠症候群（非ST上昇型心筋梗塞，ST上昇型心筋梗塞および不安定狭心症），脳卒中または一過性脳虚血発作の既往を有する患者"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "同意取得前24週間以内に急性冠症候群（非ST上昇型心筋梗塞，ST上昇型心筋梗塞および不安定狭心症），脳卒中または一過性脳虚血発作の既往を有する患者"
* characteristic[=].exclude = true

// Exclusion 4
// Patients with signs of hepatic dysfunction in which serum ALT (SGPT), AST (SGOT), or alkaline fisphatase measured at screening or during the placebo induction period exceeds 3 times the upper limit of the reference value.
* characteristic[+].description = "スクリーニング時またはプラセボ導入期間中に測定した血清ALT（SGPT），AST（SGOT），ｱﾙｶﾘﾌｨｽﾌｧﾀｰｾﾞのいずれかが基準値上限の3倍を超えた，肝機能障害の兆候を示す患者"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "スクリーニング時またはプラセボ導入期間中に測定した血清ALT（SGPT），AST（SGOT），ｱﾙｶﾘﾌｨｽﾌｧﾀｰｾﾞのいずれかが基準値上限の3倍を超えた，肝機能障害の兆候を示す患者"
* characteristic[=].exclude = true

// Exclusion 5
// Patients who have undergone bariatric surgery within the past 2 years or other gastrointestinal surgery that causes chronic malabsorption
* characteristic[+].description = "肥満外科手術を過去2年以内に受けた患者，または慢性的吸収障害を引き起こす他の消化管手術を受けた患者"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "肥満外科手術を過去2年以内に受けた患者，または慢性的吸収障害を引き起こす他の消化管手術を受けた患者"
* characteristic[=].exclude = true

// Exclusion 6
// Patients who have other clinical conditions that are considered to threaten the safety of the patient during the study as judged by the investigator (co-investigator)
* characteristic[+].description = "その他治験に参加している間に，患者の安全性を脅かすと考えられる臨床状態を有すると治験責任（分担）医師が判断した患者"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "その他治験に参加している間に，患者の安全性を脅かすと考えられる臨床状態を有すると治験責任（分担）医師が判断した患者"
* characteristic[=].exclude = true

// Exclusion 7
// Translation does not make sense
// Test EX, 7-1: ± (plus or minus), 7-2: × (magnification), 7-3: μg (micrograms)
* characteristic[+].description = "テストEX、7-1: ±（プラスマイナス）、7-2: ×（倍率）、7-3: µg(マイクログラム)"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "テストEX、7-1: ±（プラスマイナス）、7-2: ×（倍率）、7-3: µg(マイクログラム)"
* characteristic[=].exclude = true

// Exclusion 8
// Translation does not make sense
// Test EX, 8-1: α, β, δ, etc. (Greek), 8-2: Δ (variable), 8-3: σ (sigma)
* characteristic[+].description = "テストEX、8-1: α、β、δ等（ギリシャ文字）、8-2:Δ（変化量）、8-3: σ（シグマ）"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "テストEX、8-1: α、β、δ等（ギリシャ文字）、8-2:Δ（変化量）、8-3: σ（シグマ）"
* characteristic[=].exclude = true

// Exclusion 9
// Translation does not make sense
// Test EX, 9-1: = (equal), 9-2: ≠ (not equal), 9-3: ® (trade mark)
* characteristic[+].description = "テストEX、9-1: ＝（イコール）、9-2: ≠（ノットイコール）、9-3: ®（商標記号）"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "テストEX、9-1: ＝（イコール）、9-2: ≠（ノットイコール）、9-3: ®（商標記号）"
* characteristic[=].exclude = true

// Exclusion 10
// Translation does not make sense
// Test EX, 10-1: References and supplementary explanations: *, †, ‡, *, 10-2: Fraction symbols: 1/2, 10-3: °C
* characteristic[+].description = "テストEX、10-1:参照や補足説明：*、†、‡、※、10-2:分数記号：½、10-3:℃"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "テストEX、10-1:参照や補足説明：*、†、‡、※、10-2:分数記号：½、10-3:℃"
* characteristic[=].exclude = true

// Exclusion 11
// Translation does not make sense
// Test EX, 11-1: ␣ (non-newline space), (non-newline space), Å (umlaut)
* characteristic[+].description = "テストEX、11-1:␣ （改行しないスペース）、（改行しないハイフン）、Å（ウムラウト）"
* characteristic[=].code.text = "Defined by CodeableConcept"
* characteristic[=].valueCodeableConcept.text = "テストEX、11-1:␣ （改行しないスペース）、（改行しないハイフン）、Å（ウムラウト）"
* characteristic[=].exclude = true