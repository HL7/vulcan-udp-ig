### Protocol Preparation

To fully leverage this guidance, protocols natively aligned to ICH M11 in a digital format are ideal. There are also valuable use cases where transformation of a legacy protocol is required, such as pooling historical protocols to enable analytics.

ICH M11 aligned protocols can be created in several ways: 

- Creating an ICH M11 aligned protocol that is
  - Document based (narrative text with little or no structured content) – via implementation of the TransCelerate CPT as a starting point which aligns to ICH M11 (see below)
  - Document based (narrative text with little or no structured content) - utilizing the ICH M11 Protocol Template as a starting point
  - Digital (with structured content aligned to ICH M11) – by leveraging USDM which provides the data model and linkage to controlled terminology in ICH M11 as well as additional granular approaches to content if desired. (See Section 9, Links for more information on this topic.)
- Converting/reformatting existing historical protocols.

#### If You Are Starting With The TransCellerate CPT:

During preparation for earlier UDP connectathons it was noted that a significant number of sponsors had implemented the [TransCelerate Common Protocol Template (CPT)](https://www.transceleratebiopharmainc.com/assets/clinical-content-reuse-solutions/). To support end-users, there is a mapping tool (below) highlighting which CPT sections and content are aligned with the December 2025, ICH M11 Step 3 version of the Template, Guideline and Technical Specification.  [ICH M11 Template with CPT Mappings (Section Headings ONLY)](https://hl7.org/fhir/uv/pharmaceutical-research-protocol/2025Sep/Mappings/CPT_M11_Template_Mapping(SectionHeadingsOnly)_March-25_Aligned.docx)

- [**ICH M11 Template with CPT Mappings (Section Headings ONLY)**](Mappings/CPT_M11_Template_Mapping(SectionHeadingsOnly)_March-25_Aligned.docx)
  - Ideal for transferring content from existing protocols into the M11 formatted template
  - · OR can be used to create a NEW protocol draft without CPT content.
- [ICH M11 Technical Specification Final](https://database.ich.org/sites/default/files/ICH_Step4_M11_Final_TechnicalSpecification_2025_1119.pdf) 
  - Data Field specifications for the ICH M11 Template ([ICH_Step4_M11_Final_Template_2025_1119.pdf](https://database.ich.org/sites/default/files/ICH_Step4_M11_Final_Template_2025_1119.pdf))   Where the Data Type entry is “Valid Value”, the corresponding Value entry in the specification table will indicate the list of acceptable values. (See example, Figure 1, below)
  - Or alternatively, the valid values can be found in this spreadsheet [CTS_ITK_ICH_M11-Valid Values_V002](CTS_ITK_ICH-M11-Valid Values_V002.xlxs).

Where the **Data Type** entry is “Valid Value”, the corresponding **Value** entry in the specification table will indicate the list of acceptable values. (See example below)

<div><img src="protocol-prep-01.png" alt="protocol-prep-01.png" style="max-width: 80%; height: auto;" />
<p>Figure 1: Identification of valid values within the ICH M11 Technical Specification
</p></div>

Detailed steps – by approach:

#### **New Draft Protocol Approach:**

1. Open [**ICH M11 Template with CPT Mappings (Section Headings ONLY)**](Mappings/CPT_M11_Template_Mapping(SectionHeadingsOnly)_March-25_Aligned.docx) and save an instance of it with your protocol identifier.
2. Review the M11 authoring conventions within the red instructional text to understand which text is common, suggested or example throughout the template; where headings can be deleted or added, etc. (Note: the CPT style conventions have been aligned to ensure compliance with ICH M11 definitions for universal, universal conditional, or optional text and headings.) 
3. Begin to complete/draft content per the M11 red instructional text describing the intended section content. Draft new content and incorporate existing content elements from your base company or CPT templates based on the section mappings.
4. Where the template indicates specific values are expected, utilize the [ICH M11 Technical Specification Final](https://database.ich.org/sites/default/files/ICH_Step4_M11_Final_TechnicalSpecification_2025_1119.pdf) reference document.
5. Finally, per template guidance, remove all instructional text and mapping comments, update formatting inconsistencies and update Table of Contents

 **Historical Protocol Approach:** 

1. May or may not begin with a CPT-based protocol
2. Recommend using .docx files (vs PDF) to make cutting/pasting content easier
3. Guidance provided may be used in any way to support identifying & transferring content from the existing protocol into the ICH M11 template

**Steps**:

1. Open [**ICH M11 Template with CPT Mappings (Section Headings ONLY)**](Mappings/CPT_M11_Template_Mapping(SectionHeadingsOnly)_March-25_Aligned.docx) and save an instance of it with your protocol identifier.
2. Review the M11 authoring conventions within the red instructional text to understand which text is **universal**, **universal conditional**, or **optional** throughout the template; where headings can be deleted or added, etc.
3. Begin to copy and paste content from the source protocol into the appropriate sections of the M11 template
   - Use CPT section mapping comments in the M11 template or alternatively the M11 red instructional text describing the intended section content to aid in this process
   - We suggest highlighting text and headings in the source protocol once it has been copied into the M11 Template to help account for all the content.
4. Where the template indicates specific values are expected, utilize the [**ICH M11 Technical Specification_Updated Step 2_2025**](Mappings/ICH_M11_Technical Specification_Updated Step 2_2025_0203.docx)  or  [CTS_ITK_ICH_M11-Valid Values_V002](CTS_ITK_ICH-M11-Valid Values_V002.xlxs) reference document.
5. You will no doubt be faced with making judgement calls on where certain content elements align with the ICH M11 template. As this is not the primary goal of this IG, we recommend making the judgement call and applying consistently across the protocol. 
6. Finally per template guidance, remove all instructional text and mapping comments, update formatting inconsistencies and update Table of Contents

NOTE: Although not a long-term solution, document-based ICH M11 protocols may be transformed into FHIR using AI/ML (artificial intelligence/machine learning) and LLM (large language models).  Long-term strategy involves digitally native, ICH M11-aligned protocols primed for exchange in FHIR.

