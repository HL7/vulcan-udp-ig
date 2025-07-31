ValueSet: NCIStudyRoleVS
Id: nci-study-role-vs
Title: "NCI Study Role Value Set"
Description: """Codes drawn from NCI Thesaurus as children of $NCIT#C48355 Sponsor
These codes represent the roles an individual or an organization can play in a study.
There is a value set $NCIT#C215480 - CDISC DDF Study Role Code Value Set Terminology 
but it does not have any members.
"""
* ^extension[$ext-fmm].valueInteger = 1
* ^experimental = false

* $NCIT#C70793  "Clinical Study Sponsor"
//*   $NCIT#C187708  "Commercial Clinical Trial Sponsor"
//*   $NCIT#C187709  "Non-commercial Clinical Trial Sponsor"
//*   $NCIT#C70794  "Primary Clinical Study Sponsor"
//*   $NCIT#C70795  "Secondary Clinical Study Sponsor"
* $NCIT#C215670  "Local Legal Sponsor"
//* $NCIT#C71136  "Regulatory Application Sponsor"
//* $NCIT#C142679  "Secondary Sponsor"
* $NCIT#C215669  "Study Co-Sponsor"
* $NCIT#C93478  "Study Legal Sponsor"
//* $CNEW#b0001  "Device Manufacturer"

