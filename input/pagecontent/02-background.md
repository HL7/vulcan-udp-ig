### Background

#### Related Initiatives

Efforts to harmonize and structure protocols have been undertaken by various groups over many years.

- In the early 2000s, CDISC created a Protocol Representation model. This foundation was folded into the BRIDG model, a collaboration between HL7, ISO, CDISC, FDA, NIH and others. For more detail see [-BRIDG Website](https://bridgmodel.nci.nih.gov/),  [-Model](https://bridgmodel.nci.nih.gov/model-subset) and [-Background](https://bridgmodel.nci.nih.gov/about-bridg/background)
- In 2014 TransCelerate embarked on a journey to create a model Common Protocol Template which was later aligned with the US FDA/NIH Joint Protocol template.
- In 2018 ICH launched the M11 topic to create a Clinical electronic Structured Harmonized Protocol.
- Also in 2018 TransCelerate formed the Digital Data Flow initiative and partnered with CDISC to develop the USDM (Unified Study Definition Model) and a reference implementation of the USDM called the Study Definitions Repository (SDR) to store information in the USDM. The work leveraged and aligned with the BRIDG model.
- PHUSE incorporated work on digitizing the Schedule of Activities found within a protocol as part of their ongoing RWD project, which was launched in 2014 with an initial focus on CDISC ODM-xml. 
- In 2021 the Vulcan FHIR Accelerator initiated a collaborative effort with PHUSE driving towards leveraging FHIR .
- Upon issue of the ICH M11 draft deliverables, members of the health IT community began exploring use of FHIR to enable exchange of ICH M11-aligned protocols, sharing practices and learnings in the EBM project as well as with the Vulcan community.

Today we see the evolution of these protocol initiatives towards a common vision of compatible exchange across the ecosystem. Vulcan UDP has coordinated closely with ICH M11, CDISC, TransCelerate, Vulcan Schedule of Activities, EBM, and others. Through collaboration, parties have aimed to identify opportunities for synergistic development, increased compatibility of artifacts, and establish communications which will serve to enable future governance models.

#### Benefits of Compatible Exchange of Digital Protocols Across Stakeholders

Vulcan UDP views the **near-term** benefits of this Implementation Guide and engagement in the Vulcan UDP project to include:

- Exchange of protocols aligned to ICH M11 that leverage structured content organized according to standard data models
- Readiness for regulator requirement of ICH M11
- Enhanced long-term sustainability of implementation efforts

The **long-term benefits** of compatible exchange of digitized protocols across stakeholders include but are not limited to:

- More efficient handoffs of protocol related information between stakeholders across the clinical development and clinical care processes
- Enabler for automation and application of machine learning and AI to drive smarter study design and conduct
- Potential to support better recruitment/patient matching
- Improvement of a variety of operational tasks for providers engaging in research

#### Compatibility Among Artifacts from Various Initiatives

This Implementation Guide was developed through collaboration contributions by multiple organizations (see “Information Models” under the Guidance Tab). The intention is to ensure compatible use of multiple standards to maximize benefits. While this initial Implementation Guide version is limited to the sponsor-to-regulator use case, it is important to understand the conceptual vision for alignment of information models. To understand how the various artifacts can be aligned and utilized together for interoperable exchange across stakeholders, imagine a standard shipping container that allows universal exchange (FHIR). Inside the container, contents can be loosely organized (ICH M11 document-based formats) or highly organized (ICH M11 and USDM structured formats), depending on requirements.  

<div><img src="shipping-01.png" alt="shipping-01.png" style="max-width: 80%;
 height: auto;" />
<p>Figure 1: Visualizing the relationship between artifacts across initiatives</p></div>
Governance Considerations: The Vulcan UDP project will collaborate with the parties mentioned within this IG to establish governance practices to retain alignment with ICH M11, USDM, and Controlled Terminology, establishing processes for coordination across organizations such as ICH, CDISC, NIH, Vulcan, and HL7. This approach impacts governance by ensuring long-term alignment and collaboration among various stakeholders.
As a precursor to the long-term governance, one can consider how efforts have been aligned during the development of this and other artifacts. The image below shows a snapshot in time (as of June 2025) of how the various organizations collaboratively aligned their workplans.

<div><img src="plan-01.png" alt="plan-01.png" style="max-width: 90%;
 height: auto;" />
<p>Figure 2: Aligned workplans across ICH M11, CDISC, TransCelerate, and Vulcan during development of this Implementation Guide</p></div>


#### List of Abbreviations

|        |                                                              |
| ------ | ------------------------------------------------------------ |
| CDISC  | Clinical Data Interchange Standards Consortium               |
| CPT    | Common Protocol Template (TransCelerate Solution)            |
| CTIS   | Clinical Trials Information System                           |
| DDF    | Digital Data Flow (a TransCelerate initiative developed in collaboration with CDISC) |
| EBM    | Evidence Based Medicine (HL7 Project)                        |
| EEA    | European Economic Area                                       |
| EHR    | Electronic Health Record                                     |
| EMA    | European Medicines Agency                                    |
| FDA    | Food and Drug Administration (US)                            |
| FHIR   | Fast Healthcare Interoperability Resources (HL7 Standard)    |
| GCP    | Good Clinical Practice                                       |
| HL7    | Health Level Seven International                             |
| ICH    | International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use |
| IG     | Implementation Guide                                         |
| M11    | Multidisciplinary Topic 11 Clinical Electronic Structured 21 Harmonised Protocol Template (ICH Guideline) |
| NCI    | National Cancer Institute (US)                               |
| NIH    | National Institutes for Health (US)                          |
| PQ-CMC | Pharmaceutical Quality documentation of Chemistry, Manufacturing and Controls) |
| SDTM   | Study Data Tabulation Model                                  |
| SoA    | Schedule of Activities                                       |
| UDP    | Utilizing Digital Protocol (Vulcan FHIR Accelerator Project) |
| USDM   | Unified Study Definition Model (CDISC Standard developed in partnership with TransCelerate under the Digital Data Flow initiative) |
|        |                                                              |

