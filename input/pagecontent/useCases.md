### Use Cases & Work Flows 

The establishment of a clinical trial protocol standard by ICH M11, a standard model for structuring protocol and study information in the CDSIC USDM (Unified Study Definition Model, developed by the TransCelerate Digital Data Flow initiative), and the use of FHIR to exchange narrative text and structured content aligned to those artifacts, facilitates use of digitized protocols across research and health IT settings, and in doing so enables a vast array of business use cases across the clinical research spectrum. 
The detail following first looks specifically at the use case used in development this IG, then looks towards additional use cases and future opportunities. 

#### Use Case Demonstrated by this Implementation Guide

This implementation Guide enables exchange of protocols aligned to ICH M11 and was developed centered on the use case of sponsor-to-regulator exchange.

##### Use Case Work Flow Diagrams

(the detail of the Sponsor to Regulatory submission flow. More technical detail of what was tested.)

##### Sponsor to Regulator for Protocol Approval

This detail within this Implementation Guide could be used to augment the current common workflow with a shift from point A-to-point B document exchange (e.g. PDF) to FHIR exchange of a digital protocol between sponsors and regulators.  The image below illustrates use of a local FHIR server for validation of content before submission directly to a regulator’s "reviewer" system.

![work-flow-protocol-approval](C:\Filing\UDP\IG_HL7\input\images\work-flow-protocol-approval.png)

##### Protocol Definition during design and submission

This illustrates the use of a local FHIR server for validation of content before submission directly to a "reviewer" system.

![work-flow-protocol-definition](C:\Filing\UDP\IG_HL7\input\images\work-flow-protocol-definition.png)

#### Applicability to Additional Use Cases 

The Vulcan UDP project specifically tested the “Sponsor to Regulatory” use case for the submission of ICH M11-aligned protocols; however, the process flow and guidance associated with this use case may be directly applicable to many other use cases.

#### Opportunities for Stakeholders through Compatibility of Artifacts across initiatives

Both the automation of existing business processes (e.g. clinical trial budgeting, patient recruitment, regulatory review) and the enablement of new, previously unavailable (or impractical) practices (e.g. design analytics, stakeholder collaboration) are now available.  The following table provides insights into the potential automation opportunities and the link below provides a more detailed catalog of Protocol Use Cases:

![iceberg-01](C:\Filing\UDP\IG_HL7\input\images\iceberg-01.png)



![iceberg-02](C:\Filing\UDP\IG_HL7\input\images\iceberg-02.png)

![ddf-use-cases](C:\Filing\UDP\IG_HL7\input\images\ddf-use-cases.png)

 


