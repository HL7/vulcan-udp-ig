### Information Models

**Primary Inputs into this Implementation Guide**

There are multiple original sets of work that have been brought together to develop this Implementation Guide and set the vision for future versions.   

 

**ICH M11 CeSHarP** – is establishing a standardized framework for protocols, ensuring information is consistently presented using the same headings and sequence within the document. This familiar structure promotes efficient review and reduces the risk of significant elements being overlooked. While the document may be in paper format, it is expected to be machine-readable, preventing information from being "trapped" and requiring manual reentry. ICH aims to have one of these machine-readable formats be FHIR-based, which is the genesis of this Implementation Guide . The primary use case ICH is concerned with is the transfer of a protocol from a sponsor to a regulator if and when FHIR is required. 

**CDISC USDM** – This is a collaboration between CDISC and TransCelerate under the Digital Data Flow (DDF) initiative. DDF aims to modernize clinical trials by transitioning from a document-centric to a data-centric approach, focusing on digitizing protocols to enable automation, interoperability, and reuse across the study lifecycle. One of the critical outputs is the CDISC Unified Study Definitions Model (USDM), an information model aligned to ICH M11 that defines data elements required to specify a study design, enable reuse and automation of study design information in downstream systems and processes for conduct, reporting and analysis of studies. Through use of the USDM, DDF seeks to reduce cycle times, improve data reliability and quality, and eliminate non-value-added activities through automation. This digital workflow supports automated study asset creation and system configuration, ultimately transforming the drug development process.

Through CDISC collaboration with ICH M11, it has been established that **ICH M11 elements are a subset of the USDM**. In other words, those who adopt USDM will have adopted ICH M11 data elements. Stakeholders depending on their use cases of interest can elect to adopt only ICH M11 elements or they can adopt the full USDM. Vulcan UDP has leveraged the ICH M11 elements via leveraging the ICH M11 subset of USDM, and then enabled the exchange of this information via FHIR. 

Since USDM was first introduced there has been significant progress in implementation of it, primarily for sponsor-oriented use cases. Collaboration with Vulcan UDP and ICH M11 aims to accelerate the implementation and thereby bring additional value to, various stakeholders. 

> **NOTE:** ICH M11 USDM The relationship between the M11 protocol template specification and the structured and unstructured capabilities of the USDM is illustrated on the DDF GitHub site. Each logical area of the M11 protocol template is highlighted along with the associated area within the USDM. in this infographic: See  [usdm_m11.pdf](https://github.com/data4knowledge/usdm_m11_resources/blob/main/documents/infographics/usdm_m11.pdf) 

More detailed background and links to source material for each of these projects can be found in the Links section.

To understand how these artifacts relate to, and can be compatible with, each other, consider that standards can have different purposes. 

In one very simplistic view:

- Exchange Standards are containers to move information from one     system to another. For example, FHIR is used to exchange health data     across multiple systems. 
- Content Standards are those which specify how structured the information     needs to be, how it should be referred to, and how the pieces of     information relate to each other.  For     example, the ICH M11 technical specification details which protocol content     needs to be structured (as opposed to narrative text). As another example USDM     specifies the structured items detailed by M11 as well as specifying     structure for additional content. 
- Terminology Standards specify semantic definitions and the     possible values of structured items. For example, ICH M11 and USDM both specify terms centrally managed by CDISC. 

Another way to think about how the artifacts mentioned relate to, and can be compatible with, each other is through the analogy of building a house. 

- FHIR can be considered the physical building clearly and universally recognizable as a house. 
- Inside the building contains a network of plumbing, a network of electrical wiring, etc. that need to adhere to specifications in order to be functional. The specifications for these various networks are analogous to ICH M11 and USDM. 
- Within each of the networks (plumbing, electrical, etc.) are single components that were created according to tightly defined rules; these can be considered terminology. 

It is worth noting that in order for all of these components to come together into a functioning house, there were various models, testing, regulations put into place by a wide variety of experts across many different environments, often having to adjust their outputs to be compatible and flow with others. The same can be said for the digital protocol ecosystem.

Visual representation of the house analogy:

<div style="text-align: center;"><img src="InfoModelLayers.png" alt="InfoModelLayers" style="height:400px" />
</div>

> 

To understand this Implementation Guide, consider that ICH M11 is a subset of USDM and both leverage Controlled Terminology defined in the NCI Thesaurus.

<div style="text-align: center;"><img src="image-20250415143104846.png" alt="Controlled terms" style="height:400px" />
</div>
