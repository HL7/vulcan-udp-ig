### Protocol Preparation

To fully leverage this guidance, protocols natively aligned to ICH M11 in a digital format are ideal. There are also valuable use cases where transformation of a legacy protocol is required, such as pooling historical protocols to enable analytics.

ICH M11 aligned protocols can be created in several ways: 

- Creating an ICH M11 aligned protocol that is
  - Document based – via implementation of the TransCelerate CPT (see below)
  - Document based - utilizing the ICH M11 Protocol Template draft
  - Digital - via implementation of USDM
- Converting/reformatting existing historical protocols.

#### If You Are Starting With The TransCellerate CPT:

During preparation for earlier UDP connectathons it was noted that a significant number of sponsors had implemented the TransCelerate Common Protocol Template (CPT). The most recent versions of the CPT have reflected ongoing alignment with ICH M11 drafts. To support end-users, there is a mapping tool highlighting which CPT sections and content are aligned with the ICH M11 draft template. This mapping is based on the March 2025 published draft of the ICH M11 Template.

- [**ICH M11 Template with CPT Mappings (Section Headings ONLY)**](https://hl7vulcan.sharepoint.com/:w:/r/sites/VulcanDownloads/_layouts/15/Doc.aspx?sourcedoc={8478AC1A-070D-4152-B0DA-8235939E8CEA}&file=CPT_M11_Template_Mapping(SectionHeadingsOnly)_March-25_Aligned.docx&action=default&mobileredirect=true)
  - Ideal for transferring content from existing protocols into the M11 formatted template
  - · OR can be used to create a NEW protocol draft without CPT content.
- [**ICH M11 Technical Specification_Updated Step 2_2025**](https://hl7vulcan.sharepoint.com/:w:/r/sites/VulcanDownloads/_layouts/15/Doc.aspx?sourcedoc={7B32F899-CC88-4A59-BEE9-AA49EFF4A346}&file=ICH_M11_Technical Specification_Updated Step 2_2025_0203.docx&action=default&mobileredirect=true)
  - Data Field specifications for the ICH M11 Template

Where the **Data Type** entry is “Valid Value”, the corresponding **Value** entry in the specification table will indicate the list of acceptable values. (See example below)

<div><img src="protocol-prep-01.png" alt="protocol-prep-01.png" style="max-width: 80%; height: auto;" />

<p>Figure 1: Specification table</p></div>

Detailed steps – by approach:

#### **New Draft Protocol Approach:**

1. Open **CPT_M11_Template Mapping (Section Headings Only)_March-2025_Aligned.docx** and save an instance of it with your protocol identifier.
2. Review the M11 authoring conventions within the red instructional text to understand which text is **universal**, **universal conditional**, or **optional** throughout the template; where headings can be deleted or added, etc.
3. Begin to complete/draft content per the M11 red instructional text describing the intended section content. Draft new content and incorporate existing content elements from your base company or CPT templates based on the section mappings.
4. Where the template indicates specific values are expected, utilize the **ICH M11 Technical Specification_Updated Step 2** reference document.
5. Finally, per template guidance, remove all instructional text and mapping comments, update formatting inconsistencies and update Table of Contents

 **Historical Protocol Approach:** 

- May or may not begin with a CPT-based protocol
- Recommend using .docx files (vs PDF) to make cutting/pasting content easier
- Guidance provided may be used in any way to support identifying & transferring content from the existing protocol into the ICH M11 template

**Steps**:

1. Open **CPT_M11_Template Mapping (Section Headings Only)_March-2025_Aligned.docx** and save an instance of it with your protocol identifier.
2. SourceReview the M11 authoring conventions within the red instructional text to understand which text is **universal**, **universal conditional**, or **optional** throughout the template; where headings can be deleted or added, etc.
3. Begin to copy and paste content from the source protocol into the appropriate sections of the M11 template
   - Use CPT section mapping comments in the M11 template or alternatively the M11 red instructional text describing the intended section content to aid in this process
   - We suggest highlighting text and headings in the source protocol once it has been copied into the M11 Template to help account for all the content.
4. Where the template indicates specific values are expected, utilize the **ICH M11 Technical Specification_Updated Step 2** reference document.
5. You will no doubt be faced with making judgement calls on where certain content elements align with the ICH M11 template. 
6. Finally per template guidance, remove all instructional text and mapping comments, update formatting inconsistencies and update Table of Contents

NOTE: Although not a long-term solution, document-based ICH M11 protocols may be transformed into FHIR using AI/ML and LLM *(see reference implementations)* Long-term strategy involves digitally native, ICH M11-aligned protocols primed for exchange in FHIR.

