  <blockquote>
    <p><img src="icon-warning.png" alt="Take note:" /></p>
  <p>
    <code>`source: mappings.md`</code>
  </p>
  <p>
    <b></b>
  </p>
  </blockquote>



### FHIR Representation

#### FHIR Resources

We assume a basic understanding of FHIR - to get an introduction see XREF: xxxx.

The elements of FHIR we will refer to are as follows:

**Resource** - the basic building block defined by the FHIR specification that represents a concept and a its key attributes.  For our present purposes the key attribute is the **ResearchStudy** resource.

**Datatype** - each attribute within a resource has a specific data type.  In addition to the usual string, integer etc FHIR also defines complex data types for concepts such as Address, Signature and many more.  Of particular relevance is the Code and the CodeableConcept

**Terminology** - Many items are represented by a fixed *Code* which represents a specific concept.  The human readable representation of the concept is the *Term* and a code may have multiple different terms to meet conventional wording in a given context but all the terms have the same meaning (concept).  Codes can be arranged in a hierarchy and this constitutes a *CodeSystem*. To express meaning we have to know both the Code and the CodeSystem and for human readability we often include the preferred Term.  The Code and the CodeableConcept contain attributes for all three of these elements.  To determine which codes are allowed for an attribute we specify a *ValueSet* which explicitly or implicitly specifies the codes that are allowed.  The codes may come from more than one code system. In attition to binding a ValueSet to an attribute we also specify if that ValueSet is the only one that can be used (*Required* Binding), codes must be used if they cover the concept but new codes can be added for concepts not in the value set (*Extensible* binding) or the value set is optional (*Preferred* and *Example* bindings).

**Extensions** - FHIR does not attempt to cover all minority concepts but restricts itself to those that are widely used and then provides a mechanism for defining extensions to a resource in a way that existing FHIR servers can handle even though they may never have seen the extension before.  To represent the entirety of USDM and M11 concepts we make significant use of extensions.

**Profiles** - Resources are defined by the FHIR specification generally have a lot of flexibility in them attributes may occur zero to many times, value sets have an Example binding, references from one resource to another allow as wide a set of options as possible.  Profiles are about reducing these options to what is relevant for a particular use case. Attributes that were optional can be made mandatory, allowable codes can be restricted to a small set and so on.  Extensions can also be subject to profiling.

#### Protocol Content - Narrative vs Structured   

The M11 template details both narrative content and structured content

Implementers will vary in their desired use of M11: some will treat as a document, others will leverage structured content, others will utilize for machine processing

The FHIR implementation must therefore cover both narrative and structured content. The Challenge is that some data is purely textual while others is quite granular.  We also have to recognise that some implementers will cling to a document paradigm while others will want to use the granular machine readable content as they automate systems.

<div><img src="narrative-and-structured-01.png" alt="narrative-and-structured-01.png" style="max-width: 50%;height: auto;"/>
<p>Figure 1: Narrative vs Structured</p></div>

##### Narrative Representation

In FHIR representation of "documents" is done using a *Composition* resource.  This is not immediately accessible from the ResearchStudy resource and so we create an extension to attach Composition to ResearchStudy. 



<div><img src="narrative-content-01.png" alt="narrative-content-01.png" style="max-width: 80%;height: auto;"/>
<p>Figure 2: Narrative Content</p></div>

To properly reflect the M11 template, the sections and sub-sections in the **Composition** need to match those in the template. 

The template sections can be defined in terminology

<div><img src="section-vs-01.png" alt="section-vs-01.png" style="max-width: 80%;height: auto;"/>
<p>Figure 3: Section Code List</p></div>

Specific narrative instances can then use the codes to specify which parts of the M11 Template they represent.

<div><img src="narrative-content-02.png" alt="narrative-content-02.png" style="max-width: 50%;height: auto;"/>
    <p>Figure 4: Narrative Content Example</p></div>

In the illustration above **ResearchStudy** has two **NarrativeContent** sections attached. One with code *a004* which is *1.1.2 Overall Design* and one with code *a007* which is *2 INTRODUCTION* and this would then have all the sub-sections within the *INTRODUCTION*.

##### Structured Representation

The real power of a digital protocol comes from representing the content as a series of distinct attributes. USDM and M11 provide information models that can be represented by FHIR using the same resources used for the narrative representation.  While many of the necessary attributes are already present there are inevitably some that have no FHIR equivalent.  For this we use the extension mechanism.

<div><img src="structured-content-01.png" alt="GranularContent 01.png" style="max-width: 80%;height: auto;"/>
<p>Figure 4: Structured Content</p></div>

Some of these extensions are general purpose and will be relevant beyond USDM and M11 and they can be profiled to tie them to exact requirements.

#### Hierarchy of Resources, Extensions and Profiles Used

- **ResearchStudy** 
  - extended by **M11ResearchStudy** 
- **ResearchStudy** 
  - extended by **NarrativeElements** 
  - which provides a pointer to **M11ResearchStudyNarratives**
- **ResearchStudy** 
  - extended by **ResearchStudyStudyAmendment** 
    - which contains  **ResearchStudyStudyAmendmentDetails** 
    - and **ResearchStudyStudyAmendmentScopeImpact**
- **Composition** 
  - profiled by **ResearchStudyNarratives** 
    - profiled by **M11ResearchStudyNarratives**
- **ResearchStudy** 
  - profiled by **M11_ResearchStudyProfile** which tightens cardinality of some attributes and binds appropriate terminology



  <blockquote>
    <p><img src="icon-warning.png" alt="Take note:" /></p>
  <p>
    <b>Need to do a drawing for this</b>
  </p>
  </blockquote>



#### USDM and M11 to FHIR




<div><img src="Mapping.png" alt="Mapping.png" style="max-width: 80%;height: auto;" /></div>

<div>Download mapping spreadsheet <a href="Mappings/M11 to FHIR Mapping 01.xlsx">here</a></div>

This provides the appropriate FHIR content for each row of the M11 Template

#### Terminology

<div><img src="cdisc mappings.png" alt="cdisc mappings.png" style="max-width: 40%;height: auto;"/></div>

(**TODO**: Write up this section)

