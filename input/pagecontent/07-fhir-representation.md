### FHIR Representation

#### FHIR Resources

We assume a basic understanding of FHIR - to get an introduction see one of the many HL7 training videos.

The elements of FHIR we will refer to are as follows:

**Resource** - the basic building block defined by the FHIR specification that represents a concept and its key attributes.  For our present purposes the key attribute is the **ResearchStudy** resource.

**Datatype** - each attribute within a resource has a specific data type.  In addition to the usual string, integer etc FHIR also defines complex data types for concepts such as Address, Signature and many more.  Of particular relevance is the Code and the CodeableConcept

**Terminology** - Many items are represented by a fixed *Code* which represents a specific concept.  The human readable representation of the concept is the *Term* and a code may have multiple different terms to meet conventional wording in a given context but all the terms have the same meaning (concept).  Codes can be arranged in a hierarchy and this constitutes a *CodeSystem*. To express meaning we have to know both the Code and the CodeSystem and for human readability we often include the preferred Term.  The Code and the CodeableConcept contain attributes for all three of these elements.  To determine which codes are allowed for an attribute we specify a *ValueSet* which explicitly or implicitly specifies the codes that are allowed.  The codes may come from more than one code system. In addition to binding a ValueSet to an attribute we also specify if that ValueSet is the only one that can be used (*Required* Binding), codes must be used if they cover the concept but new codes can be added for concepts not in the value set (*Extensible* binding) or the value set is optional (*Preferred* and *Example* bindings).

**Extensions** - FHIR does not attempt to cover all minority concepts but restricts itself to those that are widely used and then provides a mechanism for defining extensions to a resource in a way that existing FHIR servers can handle even though they may never have seen the extension before.  To represent the entirety of USDM and M11 concepts we make significant use of extensions.

**Profiles** - Resources that are defined by the FHIR specification generally have a lot of flexibility in them : attributes may occur zero to many times, value sets have an Example binding, and references from one resource to another allow as wide a set of options as possible.  Profiles are about reducing these options to what is relevant for a particular use case. Attributes that were optional can be made mandatory, allowable codes can be restricted to a small set and so on.  Extensions can also be subject to profiling.

#### Protocol Content - Narrative vs Structured   

The M11 template details both narrative content and structured content

Implementers will vary in their desired use of M11: some will treat as a document, others will leverage structured content, others will utilize for machine processing

The FHIR implementation must therefore cover both narrative and structured content. The challenge is that some data is purely textual while others is quite granular.  We also have to recognize that some implementers will cling to a document paradigm while others will want to use the granular machine readable content as they automate systems.

<div><img src="narrative-and-structured-01.png" alt="narrative-and-structured-01.png" style="max-width: 50%;height: auto;"/>
<p>Figure 1: Narrative vs Structured</p></div>

##### Narrative Representation

In FHIR representation of "documents" is done using a *Composition* resource.  This is not immediately accessible from the ResearchStudy resource and so we create an extension to attach Composition to ResearchStudy. 



<div><img src="narrative-content-01.png" alt="narrative-content-01.png" style="max-width: 80%;height: auto;"/>
<p>Figure 2: Narrative Content</p></div>

To properly reflect the M11 template, the sections and sub-sections in the **Composition** need to match those in the template. 

The template sections can be defined in terminology

<div><img src="section-vs-01.png" alt="section-vs-01.png" style="max-width: 60%;height: auto;"/>
<p>Figure 3: Section Code List</p></div>


Specific narrative instances can then use the codes to specify which parts of the M11 Template they represent.

<div><img src="narrative-content-02.png" alt="narrative-content-02.png" style="max-width: 50%;height: auto;"/>
    <p>Figure 4: Narrative Content Example</p></div>

In the illustration above **ResearchStudy** has two **NarrativeContent** sections attached. One with code *C218517* which is *1.1.2 Overall Design* and one with code *C218520* which is *2 INTRODUCTION* and this would then have all the sub-sections within the *INTRODUCTION*.

##### Structured Representation

The real power of a digital protocol comes from representing the content as a series of distinct attributes. USDM and M11 provide information models that can be represented by FHIR using the same resources used for the narrative representation.  While many of the necessary attributes are already present there are inevitably some that have no FHIR equivalent.  For this we use the extension mechanism.

<div><img src="structured-content-01.png" alt="GranularContent 01.png" style="max-width: 80%;height: auto;"/>
<p>Figure 4: Structured Content</p></div>

Some of these extensions are general purpose and will be relevant beyond USDM and M11 and they can be profiled to tie them to exact requirements.

#### Hierarchy of Resources, Extensions and Profiles Used



<div><img src="Extensions and profiles 01.png" alt="Extensions and profiles 01.png" style="max-width: 80%;height: auto;"/>
<p>Figure 5: Extensions and Profiles of ResearchStudy</p></div>



**ResearchStudy**

**ResearchStudy** 

- profiled by **StudyDesign** which is part of the EBM IG.  This in turn is profiled by **M11_ResearchStudyProfile** which tightens cardinality of some attributes and binds appropriate terminology and connects some extensions.

- extended by **NarrativeElements** 
  - which provides a pointer to **M11ResearchStudyNarratives** which is a profile of **Composition**
- **M11_ResearchStudyProfile** 
  - contains **ResearchStudyStudyAmendment** 
    - which contains  **ResearchStudyStudyAmendmentDetails** 
    - and **ResearchStudyStudyAmendmentScopeImpact**




#### USDM and M11 to FHIR

The relationships between the elements of M11, USDM and FHIR are shown in the Mapping spreadsheet.  The focus of this is representation of M11 so the mapping does not cover the whole of USDM.

<div><p><a href="Mappings/M11 to FHIR Mapping 01.xlsx"> <img src="Mapping.png" alt="Mapping.png" style="max-width: 80%;height: auto;"/> </a> </p></div>

<div>Download mapping spreadsheet <a href="Mappings/M11 to FHIR Mapping 01.xlsx">here</a> and the FHIR columns are described below:</div>

| Column              |      | Purpose                                                      |      |      |
| ------------------- | ---- | ------------------------------------------------------------ | ---- | ---- |
| Resource            |      | A simple path  to the relevant FHIR resource                 |      |      |
| Sample XML          |      | A fragment of XML that illustrates  the mapping. Uses parameters starting  with a $ or % for conciseness |      |      |
| Example  Value(s)   |      | Elements beginning with % are given  a value here - above the dashed line they are fixed, below they are whatever  the actual data is. Also uses macro  values beginning with $ |      |      |
| Binding  (strength) |      | FHIR terminology must be bound to a  value set and the strength determines whether the value set is fixed or can  be extended. |      |      |
|                     |      |                                                              |      |      |

*Narrative Content is noted in the mapping sheet but is shown on a separate tab of the spreadsheet.  It is discussed further below.*

##### Resource

This is the element in FHIR that maps to the M11 element.  In many cases there is a simple equivalent in the standard FHIR resource. 

| M11         | FHIR Resource       |
| ----------- | ------------------- |
| Trial Phase | ResearchStudy.phase |

In other cases there is no immediate equivalent and a FHIR extension has to be used.  In the example below the extension is a complex one. Extensions are indicated by the word extension followed by the extension name in square brackets. The extension is called `$ext-amd` and within that the extension element is called `scope`.  

| M11             | FHIR Resource                                      |
| --------------- | -------------------------------------------------- |
| Amendment Scope | ResearchStudy.extension[$ext-amd].extension[scope] |

The other pattern found is when the ResearchStudy resource points to an instance of another resource for the necessary link.  In the example below Sponsor Name is represented in FHIR using an Organization resource which is pointed to by ResearchStudy using the associatedParty element.  The reference from one resource to another is shown using `-->`

| M11           | FHIR Resource                                                |
| ------------- | ------------------------------------------------------------ |
| Sponsor  Name | ResearchStudy.associatedParty.party.reference  -->     Organization.name.value |

> "FHIR Path" is a specific machine processable representation path through a linked series of FHIR resources.  That is NOT what is being used here.



##### Sample XML and Example  Value(s)

For each row the structure is shown in XML.  XML has been used in preference to JSON because the XML can be validated with a schema.  

ResearchStudy.phase is a coded value in FHIR and uses the CodeableConcept data type which itself has multiple elements.  Some of these elements have value that is fixed by the mapping and some are the values for the specific instance.  The fixed and variable values are indicated by prefixing the name with a %.  The actual values are then shown in the Example Values column - fixed values above the dashed line, variable ones below.  Because fixed values occur repeatedly and are often lengthy URLs they are represented by a macro element indicated by the $ prefix.  In the example below $NCIT has an actual value of http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl. 

###### Trial Phase

```xml
<phase>       
    <coding>         
        <system value=  %SYSTEM />         
        <code value= %CODE />         
        <display value= %DISPLAY  />       
    </coding>     
</phase> 
```

```
%SYSTEM = $NCIT
------------------
%CODE = <C15602>
%DISPLAY = <Phase 3>
```

###### Amendment Scope

```xml
<extension url= $ext-amd>
    <extension url="scope">
        <valueCode value= %VALUE />
    </extension>
</extension>
```

```
%VALUE = <C217026>
```

###### Sponsor  Name

```xml
<associatedParty>
    <role>
        <coding>
            <system value= %SYSTEM />
            <code value= %CODE />
            <display value= %DISPLAY />
        </coding>
    </role>
    <party>
        <reference value="Organization/%ID" />
    </party>
</associatedParty>

<Organization>
    <id value= %ID />
    ... 
    <name value= %VALUE />
    ...
</Organization>

```

XML for Organization is not shown in full - there will be address, contact details etc which are indicated above by ...

```

%SYSTEM = $NCIT
%CODE = C70793
%DISPLAY = Clinical Study Sponsor
----------------
%ID = <org-EliLilly>
%VALUE = <Eli Lilly Japan K.K>
```

##### Binding and Binding Strength

It happens that the three examples shown here all make use of coded elements but this is not always the case.  Binding only applies for coded elements.

For a coded element FHIR requires the specification to state the Value Set of allowed codes.  This is important for validation and for ensuring that coded elements conform to a set of values that all will understand.  A Value Set can be an arbitrary list of codes (and the identity of the code system they belong to), or the Value Set may specify an entire code system (perhaps with some codes excluded).

The FHIR specification will identify a Value Set of each coded element - this is referred to as the *Value Set Binding* and these bindings can vary in the extent to which they must be enforced - this is the *Binding Strength*.  Generally a binding on a core FHIR specification can be interpreted quite flexibly and as that core specification is restricted by an Implementation Guide it will become much more rigorously specified.  There are 4 Binding Strengths

| Binding Strength | Meaning                                                      |
| ---------------- | ------------------------------------------------------------ |
| Example          | This value set is for illustration only.  It may be useable in practice but no particular effort has been made to ensure that this is so.. |
| Preferred        | The bound Value Set is fit for purpose but there may be other equivalent value sets more commonly used in a given context, or there may be different contexts that require a different value set. |
| Extensible       | The bound value set has a values that MUST be used for the specific concept they represent - however if other concepts are required a new value set can be created that contains the previously bound value set plus the additional concepts. |
| Required         | The Value Set bound to the element is the one that MUST be used.  It cannot be replaced, extended or modified. |

As the table above shows the base FHIR specification will generally provide bindings of Example or Preferred strength while an Implementation Guide should provide bindings that are Extensible or Required.  Generally if the Value Set refers to a concept that has a limited number of possible values and where adding a value is likely to result in an update to the processing logic (ie a software update)  it should be a Required binding.  Where an Extensible binding is used processing system should be able to cope with addition of a value - perhaps through an exception mechanism.

The bindings and binding strengths for the examples above are shown below. 

###### Trial Phase

```
$phase-vs (extensible)
```

###### Amendment Scope

```
m11-study-amendment-scope-vs (required)

```

###### Sponsor  Name

```
$study-role-vs (extensible)
```

##### Narrative Content

There are multiple sections that can be represented by Narrative content as discussed earlier.  Since these all follow the same pattern the example XML for the Composition part is shown here:

```xml
<composition>
    ...
    <type>
        <coding>
            <system
                    value="http://hl7.org/fhir/uv/pharmaceutical-research-protocol/CodeSystem/narrative-elements-cs"/>
            <code value="b001"/>
            <display value="Protocol narrative"/>
        </coding>
    </type>
     ...
    <section>
        <title value=%DISPLAY/>
        <code>
            <coding>
                <system value=$NCIT/>
                <code value=%CODE/>
            </coding>
        </code>
        <text>
            <status value="additional"/>
            <div xmlns="http://www.w3.org/1999/xhtml">%NARRATIVE</div>
        </text>
    </section>
    ...
</composition>
```

The example value here are 

```
%CODE = <C218514>
%DISPLAY = <1 PROTOCOL SUMMARY>
--------------------------------
%ID= <iiii>
%NARRATIVE = <nnnn>
```

