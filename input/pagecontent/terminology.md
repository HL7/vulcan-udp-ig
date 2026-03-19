### Terminology Preparation and Update

The terminology used by M11 is defined in the M11 Technical Specification but is made available through the NCI Thesaurus.  In this IG the terminology presented in the value sets was constructed from an expansion from the NCI thesaurus.  If the IG is loaded into a FHIR server the terminology becomes available within that server and allows for validation.  **For production systems the terminology used should be based on the latest expansion from the NCI Thesaurus**.

The following sections explain how the terminology in this IG was generated and how to acquire the latest expansion of the value sets.

#### Extracting Terminology from EVS

NCI provide a range of different methods of extracting codes and value sets from the NCI Thesaurus.  See: [[Tools | Enterprise Vocabulary Services](https://evs.nci.nih.gov/tools)](https://evs.nci.nih.gov/tools).  Within the options presented there are packages for Postman that allow the querying of the thesaurus.  For the preparation of this IG we used the [FHIR R5](https://github.com/NCIEVS/evsrestapi-client-SDK/tree/master/fhir-examples) set.

This enables a series of REST GET calls - we used:

 value set expansion call:

https://api-evsrest.nci.nih.gov/api/v1/concept/ncit/subsetMembers/{code}

coded item details

https://api-evsrest.nci.nih.gov/api/v1/concept/ncit/subsetMembers/{code}?=properties

https://api-evsrest.nci.nih.gov/api/v1/concept/ncit/subsetMembers/{code}?=properties,definitions

Get children

https://api-evsrest.nci.nih.gov/api/v1/concept/ncit/subsetMembers/{code}/children

Get parent

https://api-evsrest.nci.nih.gov/api/v1/concept/ncit/subsetMembers/{code}/parents



While this process can be done manually using tools such as Postman we chose to write some code to perform the steps.



Starting with code CXXX the steps are:

Is CXXX a published value set?

If yes 

​	extract the members of the value set

​	for each member of the value set

​		1) find the parent codes back to the top of the tree

​		2) find the child codes (and their children and children's children etc)

The resulting file has one or more code system trees and it is relatively easy to manually combine all of the required trees into a single code system which is a fragment of the full NCI Thesaurus.  This code system is given the URL of the NCI Thesaurus and marked as a fragment. It can then be loaded into a server and enables proper terminology validation.   

This process then gives the full hierarchy for each of the codes in the value set which in turn makes it possible to see (for instance) that given code \#C19924 "Principal Investigator" but is not in the M11 code list it is actually a child of \#C25936 "Investigator" which is in the M11 list.

In the longer term these codes should become available through the HL7 terminology services and the code system in this IG can be dropped.

