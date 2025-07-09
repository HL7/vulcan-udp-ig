`input/pagecontent/guidance.md`

### Guidance

This section provides more detailed background and guidance on the use that can be made of a digital protocol in FHIR and the mechanics of translating your existing protocol into FHIR.

#### Context and Core Objectives

Having the protocol for a clinical study in digital format is an enabling step for a wide range of transformations to processes for authoring, approving, executing and reporting studies. Some examples are shown in Figure 1: Potential developments enabled by a Digital Protocol.

<div><img src="image-20250415140641414.png" alt="image-20250415140641414.png" style="max-width: 80%;
 height: auto;" />
<p>Figure 1: Potential developments enabled by a Digital Protocol</p></div>

This Implementation Guide gives general guidance on the creation in FHIR format of a digital representation of a protocol for a clinical study. It shows how the placement of data items within the FHIR format is derived from the USDM data model and also shows how the sections of the M11 CeSHarP specification are represented within the FHIR structures.

##### Background

There are three original sets of work that have been brought together to develop this IG. 

###### ICH HARMONISED GUIDELINE - CLINICAL ELECTRONIC STRUCTURED HARMONISED PROTOCOL (CeSHarP)

The purpose of this new harmonised guideline is to introduce the clinical protocol template and the technical specification to ensure that protocols are prepared in a consistent fashion and provided in a harmonised data exchange format acceptable to the regulatory authorities. The ICH M11 Clinical Electronic Structured Harmonised Protocol Template provides comprehensive clinical protocol organization with standardised content with both required and optional components. The Technical Specification (TS) that are acceptable to all regulatory authorities of the ICH regions presents the conformance, cardinality, and other technical attributes that enable the interoperable electronic exchange of protocol content with a view to develop an open, non-proprietary standard to enable electronic exchange of clinical protocol information. [Ref](https://www.ema.europa.eu/en/ich-m11-guideline-clinical-study-protocol-template-technical-specifications-scientific-guideline)

Key to this is establishing a framework for clinical study protocols so that information is presented consistently always using the same headings and the same sequence within the document. Having a familiar structure promotes efficient review and reduces the risks of significant elements being overlooked. This “document” may be a paper format but is expected to be in a machine readable format and hence avoiding information being “trapped” in a document and requiring manual reentry. There can be several different formats at machine readable level and ICH want one such format to be FHIR based and this requirement is the genesis of this IG. The primary use case that ICH are concerned with is the transfer of a protocol from a sponsor to a regulator (XREF: Sponsor to Regulator Use Case)



### 1.1.2.   CDISC Unified Study Definition Model (USDM)

The USDM is a key technical component of the CDISC/Transcelerate Digital Data Flow (DDF) reference architecture. Clinical trial protocols serve as the anchor for specifying clinical trial requirements and parameters. Currently, protocols do not exist in a common, machine-readable format that can be easily exchanged among disparate systems. An average lag time of 4 months exists between protocol approval and study start up. Furthermore, converting data to Study Data Tabulation Model (SDTM) by third parties lengthens cycle time and limits traceability and re-use. Finally, working in a document-based environment results in significant manual duplication of effort.[Ref](https://www.transceleratebiopharmainc.com/initiatives/digital-data-flow/)

By starting with the Unified Study Definitions Model (USDM), an industry standard data format used during study design, the Digital Data Flow initiative offers a mechanism to digitize clinical study components to enable automation, interoperability, and reuse across the study lifecycle.  The Digital Data Flow initiative will help modernize clinical trials by enabling a digital workflow. Such a workflow will enable automated study asset creation and study system configuration to support clinical trial execution. This initiative will establish a foundation for a future state of automated and dynamic readiness that can transform the drug development process.[Ref](https://www.cdisc.org/ddf)

The USDM Class Diagram is a UML Class diagram that functions as the Study Definitions Logical Data Model (LDM). The class diagram as LDM depicts the classes and attributes that represent data entities and the relationships between those entities that are needed to support a conformant Study Definitions application. The class diagram includes a data dictionary that defines each of the classes and attributes to provide the semantics needed to implement the model consistently.[Ref](https://www.cdisc.org/ddf)

The purpose of the LDM is to provide guidance to the solution implementer. It does not attempt to be inclusive of every class, attribute, and relationship implemented by any given solution. Instead, the LDM describes all elements for a conformant solution based on the Minimal Viable Product. It provides input into the solution architecture with the expectation that every effort will be made to ensure the solution architecture aligns with the RA LDM. The LDM represented by the class diagram may be implemented in a variety of physical data stores, including relational databases, property graph databases, RDF triple stores, document databases, and others. The semantics represented in the LDM and data dictionary support a uniform understanding of the Study Definition data elements to improve interoperability. The LDM will be used to define the resources available in the API specification; these resource definitions represent the data exchange format for applications implementing the API.[Ref](https://www.cdisc.org/ddf)

(XREF: Protocol Definition during design and submission)

Question[[HG1\]](#_msocom_1) 

### 1.1.3   HL7 Vulcan Schedule of Activities (SoA) Implementation Guide

The core of the Vulcan SoA IG is to define a usable pattern for a Clinical Trial Schedule of Activities (SoA) structure using FHIR Resources and Processes, such that:
* it can be shared
* it can be interpreted, and 
* it can be implemented in healthcare systems (such as EHR or PHR systems) and/or clinical research systems 

The IG uses FHIR resources, Workflow patterns and extensions to define a structure that represents the study activities (SoA) in a way so that healthcare systems can interpret and implement them.  The SoA represents a key part of a Protocol, that along with the trial schema defines the different paths a patient may take in the conduct of a study.   

The IG is used to define FHIR resources that define the Encounters and Activities, and relationships between them.  It needs to be able support core concepts such as the general flow of study execution for a patient or patient group, as well as more complex concepts that are peculiar to the Clinical Research process (eg Visits and Visit Windows).  In the frame of the protocol, activities and encounters are cross-referenced extensively with other sections of the document.  The implicit linking within the presentation of a document will not suffice when the protocol is a digital specification intended for interpretation by systems as well as humans.  The Vulcan SoA should satisfy the operational, semantic and presentational aspects for the study activities.


(XREF: Protocol Use during study execution)

More detailed background and links to source material for each of these projects can be found in (XREF Support:4. [Other Links](links.html))

------



 [[HG1\]](#_msoanchor_1)Do we need to talk more about DDF
