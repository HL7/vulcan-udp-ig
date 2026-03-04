### Terminology Preparation and Update

The terminology used by M11 is defined in the Technical Specification but is made available through the NCI Thesaurus.  In this IG the terminology presented in the value sets was constructed from an expansion from the NCI thesaurus.  If the IG is loaded into a FHIR server the terminology becomes available within that server and allows for validation.  **For production systems the terminology used should be based on the latest expansion from the NCI Thesaurus**.

The following sections explain how the terminology in this IG was generated and how to acquire the latest expansion of the value sets.

#### Extracting Terminology from EVS

NCI provide a range of different methods of extracting codes and value sets from the NCI Thesaurus.  See: [[Tools | Enterprise Vocabulary Services](https://evs.nci.nih.gov/tools)](https://evs.nci.nih.gov/tools).  Within the options presented there are packages for Postman that allow the querying of the thesaurus.  For the preparation of this IG we used the [FHIR R5](https://github.com/NCIEVS/evsrestapi-client-SDK/tree/master/fhir-examples) set.

This enables a series of REST GET calls - we used the value set expansion call:

https://api-evsrest.nci.nih.gov/fhir/r5/ValueSet/$expand?url=http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl?fhir_vs=C217045

In this example it will return the FHIR specification for the value set for study phase

We then used [GoFSH](https://fshschool.org/docs/gofsh/running/) to convert the file to a FSH file and copied the relevant portions into the value set specification in the IG source.  Information about the value set version and expaansion date need to be copied into the header of this source file.

