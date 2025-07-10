> <blockquote>
>   <p><img src="icon-warning.png" alt="Take note:" /></p>
>   <p> source: best-practice </p>
> </blockquote>

### Implementation Best Practice 

In consideration of the wide range of audiences that may be interested in this FHIR Implementation Guide, and that audiences may be in various stages of implementation of digital protocols, the following are considerations for specific audiences:

As this is the first version, best practices specific to this implementation guide are still being identified and consolidated. Future versions will incorporate insights and recommendations based on real-world implementation experiences.

#### General Implementation Considerations 

General implementation considerations for a digital protocol include:

1. **Stakeholder Engagement**: Involve stakeholders early and maintain communication.
2. **Use Case Prioritization**: Focus on the most critical pain points that a digital protocol can address in your situations 
3. **Technical Readiness**: Explore infrastructure needs, conduct exploratory work in available community     environments (i.e., GitHub) until ready to come out. Plan for integrations.
4. **Regulatory Compliance**: Familiarize yourself with relevant standards and guidelines (e.g., ICH M11, TransCelerate, CDISC, HL7, Vulcan) as well as any regional requirements.
5. **Training  and Support**: Provide education and support systems.
6. **Data  Management**: Centralize protocol elements and automate tasks.
7. **Performance Metrics**:  Monitor and improve protocol performance.
8. **Security and Privacy**: Protect data and comply with regulations.
9. **Stakeholder Engagement**:

By considering these factors, you can create a robust plan for implementing a digital protocol that meets your organization's needs and enhances overall efficiency.

#### Audience-Specific Implementation Considerations 

##### Protocol Authors, Template Owners, and Business Process Owners

Those involved with protocol authoring processes may wish to consider several key aspects when assessing this FHIR Implementation Guide, ICH M11, CDISC USDM and TransCelerate Digital Data Flow initiative artifacts:

·    Assess current templates against ICH M11 and plan for adjustments as necessary to align headings, sequences, and nested content as outlined in ICH M11. If utilizing the TransCelerate Common Protocol Template, refer to the version of it that has been aligned to ICH M11.

·    Identify a current business process that can be improved with digitized protocols. Concentrate on near-term achievable use cases while building in compatibility with additional use cases.

·    Consider the advantage of machine-readable formats to your specific downstream users and audiences. Embrace the transition from paper formats to machine-readable formats to avoid information being "trapped" in documents and requiring manual reentry. FHIR-based formats are particularly important for interoperability and automation and are commonly used by some stakeholders. 

·    Engaging actively in standards governance processes can build awareness of and consideration to your business needs.

By considering these aspects, protocol authors can effectively leverage the FHIR Implementation Guide, ICH M11, and CDISC USDM to enhance their processes. Refer to prior Vulcan UDP Webinars for content on implementation strategies.

##### System Architects

System Architects building the conceptual design who need to understand how the artifacts can be made to work together and what systems and connections are needed within their environments may wish to consider:

·    The general principles of how messaging works: e.g. creation of FHIR messages, submission to a FHIR server for validation, etc. Consider the identity of the particular instance of the message, the related process flows, and the uses involved. 

·    Multiple bundling approaches and which is best fit in the context of how the information will be used will be a key decision to be made. 

·    Terminology concerns, e.g., what terminology is already in use with the organization and how it aligns to that which is required by M11 in order to confirm the approach for terminology management. To prepare for implementation, developers will need specific guidance. For example, if terminology is hard coded it may accelerate implementation but have implications on maintenance when standards evolve via future governance processes.

·    Strategies for integration and interoperability across the targeted workflows. This may include creation of FHIR profiles that can be used in Electronic Health Record (EHR) systems to support clinical research needs in the healthcare environment. 

##### Systems Developers

Systems developers using this Implementation Guide to translate the conceptual design into systems ready to utilize digital protocols may wish to consider: 

·    Ensuring decisions such as those about bundling and terminology management are well understood

·    How the detailed mappings included within, and linked to from, this guide which aim at ensuring accurate representation of elements across standards can be used

·    How this mapping will be utilized with their environment

·    Think about tooling - reference implementation