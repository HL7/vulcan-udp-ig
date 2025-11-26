### Use Cases & Work Flows 

Selected use cases of value across clinical research and health IT settings can be enabled through FHIR-based exchange of narrative protocol text and structured protocol content. This vision is made practical by anchoring to the ICH M11 Clinical electronic Structured Harmonized Protocol and ensuring compatibility with the USDM (Unified Study Definition Model, developed by the TransCelerate Digital Data Flow initiative)

The detail looks first at the use case addressed in development of this Implementation Guide, then looks towards additional use cases with which compatibility will be necessary and at future opportunities. 

#### Use Case Demonstrated by this Implementation Guide

For the purposes of development of this initial version of this Implementation Guide, the use case was defined narrowly as enabling sponsor-to-regulator exchange of digital protocols aligned to ICH M11 in FHIR. The specific detailed technical and business requirements for submission of M11-aligned protocols to regulators will be determined as regulators adopt M11 and establish processes for receipt and utilization of digitized protocols. Because this simplistic approach was taken, it is expected that this Implementation Guide could also be utilized by other sender/receiver roles. 

##### Work Flow

The processes supporting testing scenarios were articulated as simply and with as much flexibility for implementation as possible:

1. Ensure protocol content and organization aligned to ICH M11

2. Generate protocol in FHIR

3. Send protocol 

4. Receive protocol in FHIR

5. Validate receipt of protocol (i.e., display, extraction of structured content)

   

<div><img src="work-flow-protocol-approval.png" alt="work-flow-protocol-approval.png" style="max-width: 80%;
 height: auto;" />
<p>Figure 1: Sponsor to Regulator</p></div>
##### Considerations to Enable Forward Compatibility

In order to ensure this Implementation Guide is set up to enable compatibility for future use cases and future specificity of requirements, variations on the above simple process were considered, such as:

- Conversion of legacy protocols as well as protocols written native to ICH M11
- Packaging of data elements in a single bundle as well as in multiple resources 
- FHIR in JSON as well as FHIR in XML
- Validation of the protocol on a local FHIR server before sending as well as validation on a FHIR server only after receipt
- Sending protocols directly to FHIR server as well as sending to FHIR server after receipt 
- Receiver extraction of structured elements relevant to various review needs (i.e., safety reviewer, medical reviewer)
- Receiver response to submitter via FHIR messages as well as through other routine mechanisms

#### Use Case Opportunities Present and Future

The information contained in a protocol is utilized in relation to numerous processes across the research and care continuum. Digitizing and enabling interoperable exchange of that information opens an opportunity for automation, reuse, improved quality across stakeholders. 

The Vulcan UDP project intends to address additional use cases. All are welcome to propose use cases to Vulcan and to participate in Vulcan UDP community meetings. 

Vulcan UDP is not the only group seeking to leverage digital protocols. Many have been mentioned within this Implementation Guide and others exist as well. In alignment with Vulcan principles, the Vulcan UDP project aims to ensure compatibility, avoid duplication, and make use of collective resources whenever possible. Coordination with other groups will be essential to this aim. 

To get a sense of the extent of use cases that exist across the ecosystem, see the visual below. Digitization of existing processes are often the first use cases implementers want to achieve, but the possibilities go beyond. Many of the use cases at the “tip of the iceberg” as well as those “below the surface” are currently implemented within certain environments though perhaps using bespoke approaches and models. Increasing compatibility across artifacts (i.e., standards, guidelines) will help to accelerate and broaden the value of digital protocols across many use cases.



<div><img src="iceberg-03.png" alt="iceberg-03.png" style="max-width: 90%;
 height: auto;" />
<p>Figure 2: Example Future Use Cases</p></div>




