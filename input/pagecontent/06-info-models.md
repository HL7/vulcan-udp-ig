> [!NOTE]
>
> source: infoModels.md
>
> Links in this section need further work and an explanation for the drawing needs to be added.

### Information Models

**Primary Inputs into this Implementation Guide**

There are multiple original sets of work that have been brought together to develop this Implementation Guide and set the vision for future versions.   

 

**ICH M11 CeSHarP** – is establishing a standardized framework for clinical study protocols, ensuring information is consistently presented using the same headings and sequence within the document. This familiar structure promotes efficient review and reduces the risk of significant elements being overlooked. While the document may be in paper format, it is expected to be machine-readable, preventing information from being "trapped" and requiring manual reentry. ICH aims to have one of these machine-readable formats be FHIR-based, which is the genesis of this Implementation Guide . The primary use case ICH is concerned with is the transfer of a protocol from a sponsor to a regulator. (XREF: Sponsor to Regulator Use Case)

**CDISC USDM** – This is joint work between CDISC and TransCelerate under the Digital Data Flow (DDF) initiative. DDF aims to modernize clinical trials by transitioning from a document-centric to a data-centric approach, focusing on digitizing clinical trial protocols to enable automation, interoperability, and reuse across the study lifecycle. One of the critical outputs is the CDISC Unified Study Definitions Model (USDM), ~~ ~~an information model aligned to ICH M11 that defines data elements required to specify a study protocol, enable reuse and automation of protocol and study information with systems and processes for conduct, reporting and analysis of studies. Through use of the USDM, DDF seeks to reduce cycle times, improve data reliability and quality, and eliminate non-value-added activities through automation. This digital workflow supports automated study asset creation and system configuration, ultimately transforming the drug development process.

Through CDISC collaboration with ICH M11, it has been established that **ICH M11 elements are a subset of the USDM**. In other words, those who adopt USDM will have adopted ICH M11 data elements, stakeholders depending on their use cases of interest can elect to adopt only ICH M11 elements or they can adopt the full USDM. Vulcan UDP has leveraged the ICH M11 elements via leveraging the ICH M11 subset of USDM, and then enabled the exchange of this information via FHIR. ~~~~

Since USDM was first introduced there has been significant progress in implementation of it, primarily for sponsor-oriented use cases. Collaboration with Vulcan UDP and ICH M11 aims to accelerate the implementation and thereby bring additional value to, various stakeholders. (XREF: Protocol Definition during design and submission)

**NOTE:** ICH M11 USDM The relationship between the M11 protocol template specification and the structured and unstructured capabilities of the USDM is illustrated on the DDF Github site. Each logical area of the M11 protocol template is highlighted along with the associated area within the USDM. in this infographic: See 

https://github.com/data4knowledge/usdm_m11_resources/blob/main/documents/infographics/usdm_m11.pdf

**Vulcan Schedule of Activities** – This work originated in PHUSE and later transitioned into a Vulcan project. It provides a FHIR representation of the Schedule of Activities, a crucial component of most protocols. The use case focuses on maintaining an unambiguous definition of the Schedule of Activities during study execution, which can be utilized to generate a detailed care plan for specific patients. (XREF: Protocol Use during study execution)

**Evidence-Based Medicine (EBM)** – EBM is a project within HL7 also working on practices for leveraging FHIR for exchange of protocol information. While Vulcan Utilizing the Digital Protocol (UDP) project focuses on the design, conduct, and generation of data generally to support clinical development, EBM aims at a systematic approach to clinical decision-making that integrates the best available research evidence with clinical expertise and patient values. It involves systematically finding, appraising, and applying the results of well-designed clinical research, particularly randomized controlled trials (RCTs) and systematic reviews, to inform clinical decisions and optimize patient outcomes. Together, they enable a learning health system by utilizing digital protocol standards to facilitate research and apply systematic evidence. Vulcan UDP leverages practices and learnings from EBM. (XREF: EBM IG)

More detailed background and links to source material for each of these projects can be found in (XREF Support:4. Other Links)



<div style="text-align: center;"><img src="InfoModelLayers.png" alt="InfoModelLayers" style="height:400px" />
</div>



> [!NOTE]
>
> Add a section here that explains the relationship between the different models
>
> 

Need to illustrate what is in M11 not to provide a full representation but to make the IG readable. (XREF M11 Documents) 

<div style="text-align: center;"><img src="image-20250415143104846.png" alt="Controlled terms" style="height:400px" />
</div>
