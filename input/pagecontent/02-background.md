> [!NOTE]
>
> source: input/pagecontent/background.md
>
> 
>

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

The **long-term benefits** of compatible exchange of digitized protocols across stakeholders include but are not limited to:

- More efficient handoffs of protocol related information between stakeholders across the clinical development and clinical care processes
- Enabler for automation and application of machine learning and AI to drive smarter study design and conduct
- Potential to support better recruitment/patient matching
- Improvement of a variety of operational tasks for providers engaging in research

#### Compatibility Among Artifacts from various initiatives

This Implementation Guide was developed through collaboration contributions by multiple organizations (see “Information Models” under the Guidance Tab). The intention is to ensure compatible use of multiple standards to maximize benefits. To understand how the various artifacts can be utilized together for interoperable exchange across stakeholders, imagine a standard shipping container that allows universal exchange (FHIR). Inside the container, contents can be loosely organized (ICH M11 document-based formats) or highly organized (ICH M11 and USDM structured formats), depending on the needs of the sender & receiver.  

<div><img src="shipping-01.png" alt="shipping-01.png" style="max-width: 80%;
 height: auto;" />
<p>Figure 1: Visualizing the relationship between artifacts across initiatives</p></div>

Governance Considerations: The Vulcan UDP project will collaborate with the parties mentioned within this IG to establish governance practices to retain alignment with ICH M11, USDM, and Controlled Terminology, establishing processes for coordination across organizations such as ICH, CDISC, NIH, Vulcan, and HL7. This approach impacts governance by ensuring long-term alignment and collaboration among various stakeholders.
As a precursor to the long-term governance, one can consider how efforts have been aligned during the development of this and other artifacts. The image below shows a snapshot in time (as of June 2025) of how the various organizations collaboratively aligned their workplans.

<div><img src="plan-01.png" alt="plan-01.png" style="max-width: 80%;
 height: auto;" />
<p>Figure 1: Aligned workplans across ICH M11, CDISC, TransCelerate, and Vulcan during development of this Implementation Guide</p></div>
