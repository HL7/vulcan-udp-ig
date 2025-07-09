`input/pagecontent/background.md

### Background

#### Introduction

Vulcan UDP is an umbrella project  integrating related outputs being developed by ICH M11 and CDISC/TransCelerate to ensure compatible, standards-based exchange of ICH M11-aligned protocols that can flow across research stakeholders including sponsors, sites and regulators.
Efforts to harmonize and structure protocols have been undertaken by various groups over many years.

- In the early 2000s, CDISC created a Protocol Representation model.
- In 2014 TransCelerate embarked on a journey to create a single Common Protocol Template which was later aligned with the FDA/NIH Joint Protocol template.
- In 2018 ICH kicked off the M11 topic to create a Clinical electronic Structured Harmonized Protocol Clinical.
- Also in 2018 TransCelerate formed the Digital Data Flow initiative and partnered with CDISC to develop the USDM (Unified Study Definition Model) and a reference implementation of a Study Definitions Repository to store information in the USDM.
- In 2021 the Vulcan FHIR Accelerator kicked off the Schedule of Activities project to leverage FHIR for exchange of site-execution information extracted from a Schedule of Activities found within a protocol.
- Upon issue of the ICH M11 draft deliverables, members of the health IT community began exploring use of FHIR to enable exchange of ICH M11-aligned protocols, sharing practices and learnings in the EBM project as well as with the Vulcan community.

Today we see the evolution of these protocol initiatives towards a common vision of compatible exchange across the ecosystem. Vulcan UDP has coordinated closely with ICH M11, CDISC, TransCelerate, Vulcan Schedule of Activities, EBM, and others. Through collaboration, parties have aimed to identify opportunities for synergistic development, increased compatibility of artifacts, and establish communications which will serve to enable future governance models.

#### Benefits of Compatible Exchange of Digital Protocols Across Stakeholders

Vulcan UDP views the **near-term** benefits of this Implementation Guide and engagement in the Vulcan UDP project to include:

- Exchange of protocols aligned to ICH M11 that leverage structured content organized according to standard data models
- Readiness for regulator requirement of ICH M11
- Increased future-proofing of implementation efforts
- The **long-term benefits** of compatible exchange of digitized protocols across stakeholders include but are not limited to:
- More efficient handoffs of protocol related information between stakeholders across the clinical development and clinical care processes
- Enabler for automation and application of machine learning and AI to drive smarter study design and conduct
- Potential to support better recruitment/patient matching
- Improvement of a variety of operational tasks for providers engaging in research

#### Primary Inputs into this Implementation Guide

There are multiple original sets of work that have been brought together to develop this Implementation Guide through collaborative contributions by relevant organizations.  

**ICH M11 CeSHarP** – is establishing a standardized framework for clinical study protocols, ensuring information is consistently presented using the same headings and sequence within the document. This familiar structure promotes efficient review and reduces the risk of significant elements being overlooked. While the document may be in paper format, it is expected to be machine-readable, preventing information from being "trapped" and requiring manual reentry. ICH aims to have one of these machine-readable formats be FHIR-based, which is the genesis of this Implementation Guide . The primary use case ICH is concerned with is the transfer of a protocol from a sponsor to a regulator. (XREF: Sponsor to Regulator Use Case)

**CDISC USDM** – This is joint work between CDISC and TransCelerate under the Digital Data Flow (DDF) initiative.  DDF aims to modernize clinical trials by transitioning from a document-centric to a data-centric approach, focusing on digitizing clinical trial protocols to enable automation, interoperability, and reuse across the study lifecycle. One of the critical outputs is the CDISC Unified Study Definitions Model (USDM),  an information model aligned to ICH M11 that defines data elements required to specify a study protocol, enable reuse and automation of protocol and study information with systems and processes for conduct, reporting and analysis of studies. Through use of the USDM, DDF seeks to reduce cycle times, improve data reliability and quality, and eliminate non-value-added activities through automation. This digital workflow supports automated study asset creation and system configuration, ultimately transforming the drug development process.

Through CDISC collaboration with ICH M11, it has been established that **ICH M11 elements are a subset of the USDM**. In other words, those who adopt USDM will have adopted ICH M11 data elements, stakeholders depending on their use cases of interest can elect to adopt only ICH M11 elements or they can adopt the full USDM.  Vulcan UDP has leveraged the ICH M11 elements via leveraging the ICH M11 subset of USDM, and then enabled the exchange of this information via FHIR.

Since USDM was first introduced there has been significant progress in implementation of it, primarily for sponsor-oriented use cases. Collaboration with Vulcan UDP and ICH M11 aims to accelerate the implementation and thereby bring additional value to, various stakeholders. (XREF: Protocol Definition during design and submission)

**Vulcan Schedule of Activities** – This work originated in PHUSE and later transitioned into a Vulcan project. It provides a FHIR representation of the Schedule of Activities, a crucial component of most protocols. The use case focuses on maintaining an unambiguous definition of the Schedule of Activities during study execution, which can be utilized to generate a detailed care plan for specific patients. (XREF: Protocol Use during study execution)

**Evidence-Based Medicine (EBM)** – EBM is a project within HL7 also working on practices for leveraging FHIR for exchange of protocol information. While Vulcan Utilizing the Digital Protocol (UDP) project focuses on the design, conduct, and generation of data generally to support clinical development, EBM aims at a systematic approach to clinical decision-making that integrates the best available research evidence with clinical expertise and patient values. It involves systematically finding, appraising, and applying the results of well-designed clinical research, particularly randomized controlled trials (RCTs) and systematic reviews, to inform clinical decisions and optimize patient outcomes. Together, they enable a learning health system by utilizing digital protocol standards to facilitate research and apply systematic evidence. Vulcan UDP leverages practices and learnings from EBM. (XREF: EBM IG)
More detailed background and links to source material for each of these projects can be found in (XREF Support:4. Other Links)

#### Compatibility Among Artifacts from various initiatives

To understand how the various artifacts above can be utilized together to ensure compatible exchange across stakeholders, imagine a standard shipping container that allows universal exchange (FHIR). Inside the container, contents can be loosely organized (ICH M11 document-based formats) or highly organized (ICH M11 and USDM structured formats), depending on the needs of the sender \& receiver.

###### Figure 1: Visualizing the relationship between artifacts across initiatives

Governance Considerations: The Vulcan UDP project will collaborate with the parties mentioned within this IG to establish governance practices to retain alignment with ICH M11, USDM, and Controlled Terminology, establishing processes for coordination across organizations such as ICH, CDISC, NIH, Vulcan, and HL7. This approach impacts governance by ensuring long-term alignment and collaboration among various stakeholders.
As a precursor to the long-term governance, one can consider how efforts have been aligned during the development of this and other artifacts. The image below shows a snapshot in time (as of June 2025) of how the various organizations collaboratively aligned their workplans.

###### Figure 2: Aligned workplans across ICH M11, CDISC, TransCelerate, and Vulcan during development of this Implementation Guide

