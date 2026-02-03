The following links provide important context for parties looking to make use of the Implementation Guide:

### Fundamental Standards

The following are the documents for the M11 and CDISC standards that this IG is aligned with.

| Link                                                         | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [M11 Template](https://database.ich.org/sites/default/files/ICH_Step4_M11_Final_Template_2025_1119.pdf) | CLINICAL ELECTRONIC STRUCTURED HARMONISED  PROTOCOL <br />(CeSHarRP) <br />M11 Template<br />Final Version<br />Adopted on 19 November 2025 |
| [M11 Guideline](https://database.ich.org/sites/default/files/ICH_Step4_M11_Final_Guideline_2025_1119.pdf) | ICH HARMONISED GUIDELINE <br />CLINICAL ELECTRONIC STRUCTURED HARMONISED  PROTOCOL <br />(CeSHarRP) <br />M11<br />Final Version<br />Adopted on 19 November 2025 |
| [M11 Technical Specification](https://database.ich.org/sites/default/files/ICH_Step4_M11_Final_TechnicalSpecification_2025_1119.pdf) | CLINICAL ELECTRONIC STRUCTURED HARMONISED  PROTOCOL  <br />(CeSHarP) <br />M11 TECHNICAL SPECIFICATION<br /> Final version<br /> Adopted on 19 November 2025 |
| [CDISC USDM Data Model](https://github.com/cdisc-org/DDF-RA) | Reference implementation for the CDISC/TransCelerate DDF Reference Architecture (home of the USDM model)<br /><br />Phase 4, Version 4.0.0 |
| [ICH M11 Template with CPT Mappings (Section Headings ONLY)](Mappings/CPT_M11_Template_Mapping(SectionHeadingsOnly)_March-25_Aligned.docx) | Draft mapping against the Final release of M11 Template      |

### Informational Links

These links provide general information that are germane to the development of the standards.

| Link              | Description              |
| ----------------- | ------------------------ |
| [ICH M11 (EMA)](https://www.ema.europa.eu/en/ich-m11-guideline-clinical-study-protocol-template-technical-specifications-scientific-guideline) | ICH M11 guideline, protocol template and technical specifications - Scientific guideline (EMA)   |
| [ICH M11 (FDA)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/m11-clinical-electronic-structured-harmonised-protocol) | M11 Clinical Electronic Structured Harmonized Protocol, Center for Drug Evaluation and Research, Office of Regulatory Policy |
| [CDISC Digital Data Flow (DDF)](https://www.cdisc.org/ddf) | CDISC/TransCelerate Digital Data Flow (DDF) |
| [HL7 Vulcan Utilizing the Digital Protocol](https://www.hl7vulcan.org/udp-project) | UDP: Utilizing the Digital Protocol |
| [CTIS](https://euclinicaltrials.eu/ctis-for-sponsors/) | Clinical Trials Information System (CTIS) assists clinical trial sponsors and other organizations involved in running clinical trials in preparing and compiling clinical trial applications and dossiers to submit for assessment by Member States in the European Union (EU) and European Economic Area (EEA). |

### Mapping Links

These links are published mappings between the different standards developed as part of the development process

| Link | Target | Source | Description |
| -------------- | -------------- | -------------- | -------------- |
| [CTIS Mapping](https://github.com/cdisc-org/DDF-RA/blob/main/Documents/Mappings/ctis_mapping.xlsx) | USDM | CTIS | CDISC Mapping from USDM to EMA CTIS |
| [SDTM Mapping](https://github.com/cdisc-org/DDF-RA/blob/main/Documents/Mappings/sdtm_mapping.xlsx) | USDM | SDTM | CDISC Mapping from USDM to CDISC SDTM Model |
| [ClinicalTrials.gov Mapping](https://github.com/cdisc-org/DDF-RA/blob/main/Documents/Mappings/ct-gov_mapping.xlsx) | USDM | ClinicalTrials.gov | CDISC Mapping from USDM to NCI ClinicalTrials.gov schema |
| [Common Protocol Template Mapping](https://github.com/cdisc-org/DDF-RA/blob/main/Documents/Mappings/cpt_mapping.xlsx) | USDM | Common Protocol Template | CDISC Mapping from USDM to TransCelerate Common Protocol Template (CPT) |
| [M11 Mapping](https://github.com/cdisc-org/DDF-RA/blob/main/Documents/Mappings/m11_mapping.xlsx) | USDM | M11 | CDISC Mapping from USDM to ICH M11 Technical Specification |
| <a href="Mappings/M11 to FHIR Mapping 01.xlsx">M11 to USDM to FHIR Mapping</a> | FHIR | M11<br />FHIR | Three way mapping discussed in the FHIR Representation section |

### Technical Links

| Link                                                         | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [Evidence Based Medicine on FHIR Implementation Guide v1.0.0-ballot2](https://build.fhir.org/ig/HL7/ebm/) | From the introduction to EBM “This implementation guide is intended for developers of systems using FHIR for data exchange of scientific knowledge and for authors of more specialized implementation guides in this domain”. As such this IG has some profiles and extensions of ResearchStudy that are a basis for further use by the UDP IG. |
| [HL7 Vulcan Schedule of Activities Implementation Guide](https://hl7.org/fhir/uv/vulcan-schedule/) | The link here is to the build version of the EBM IG as late 2025 – this has content that is anticipated by the UDP IG but is not yet published and useable. Readers should check for the latest version.HL7 Vulcan Schedule of Activities Implementation Guide |

### Introduction to FHIR

Readers who are unfamiliar with FHIR will find the following links helpful for reading this implementation guide. The links are to the first full ballot of release 6 which is a development version and as such the most current at the time of writing this IG.  Equivalent pages will be found in any release of the FHIR specification. 

For changes that are in development for the next version of FHIR (R6), use the Continuous Integration Build of [FHIR](https://build.fhir.org/index.html) to find related content.

| Link                                                         | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [Documentation](https://hl7.org/fhir/6.0.0-ballot4/documentation.html) | The home page for all the documentation for FHIR.  There are many sections here which can be overwhelming.  The links below are a selection as a starting point |
| [FHIR Overview](http://hl7.org/fhir/6.0.0-ballot4/overview.html) | General overview of the basics of FHIR                       |
| [Developer's introduction](http://hl7.org/fhir/6.0.0-ballot4/overview-dev.html) | More detailed explanation of the mechanics of FHIR           |
| [Clinical introduction](http://hl7.org/fhir/6.0.0-ballot4/overview-clinical.html) | This introduction does not delve into the mechanics but does provide an explanation of why the principles of FHIR are relevant from a clinical practice perspective. |
| [FHIR data types](http://hl7.org/fhir/6.0.0-ballot4/datatypes.html) | FHIR Resources represent their attributes using data types which may themselves have multiple attributes.  This section explains the hierarchy of data types from the very simple to the complex. |
| [Terminology - Using codes](http://hl7.org/fhir/6.0.0-ballot4/terminologies.html) | Correct use of coded values is central to transfer of data between systems.  FHIR provides mechanisms for identifying the source of a code and for managing the availability of codes.  This introduces the concepts of Value Sets and Code Systems and correct use of code values. |
| [References between resources](http://hl7.org/fhir/6.0.0-ballot4/references.html) | Links between resources do not work in quite the same way as links between tables in a database. |
| [How to read resource & profile definitions](http://hl7.org/fhir/6.0.0-ballot4/formats.html) | The resources definitions in the specification are all defined in the same way - this section explains that pattern. |
| [Base resource](http://hl7.org/fhir/6.0.0-ballot4/resource.html) | The early parts of this section discuss custom resources which are not required for this IG and which are discouraged.  What is useful in this section is the discussion of identification of resource instances. |
| [FHIR Validation](http://hl7.org/fhir/6.0.0-ballot4/validation.html) | The ability the validate to check that data represented in a FHIR instance is correctly formatted, uses valid codes and meets other constraints is a key benefit of FHIR.  This sections explains the different validation options. |
|                                                              |                                                              |
