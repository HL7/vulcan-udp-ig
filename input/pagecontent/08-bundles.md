> [!NOTE]
>
> source: bundles.md

### Bundles

FHIR content to represent a protocol will typically contain a ResearchStudy resource which refers to several other resources such as Organization, ScheduledActivity, MedicinalProductDefinition and perhaps earlier versions of ResearchStudy. For submission to a FHIR server this content is assembled into a “bundle” which is a container for the content. There are two significantly different ways in which the content can be packed into the “bundle” and the method chosen is dependent upon multiple factors and intended use. Whether or not the characteristics of each approach are pros or cons largely depends upon intended use, existing infrastructure, and other needs defined by the user.

Here we offer some insights to help the IG user establish the best practice compatible with their own workflow. 

In one pattern – we will call it the “Sealed Bundle” - the various resources are visible to each other but cannot be accessed from outside the bundle except by accessing the entire bundle and walking through the resources from ResearchStudy to the required child resource. In the other pattern – we will call it the “Open Bundle” - each resource can be individually accessed without having to start from ResearchStudy.

The following table lists some of the key consequences of this difference:

 

| **Sealed Bundle**      (Storage Mode A)                      | **Open Bundle** - *Multiple  Resources*      (Storage Mode B) |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Captures a complete picture in one package. All of the individual  resources are written to the server in a single bundle (a "box"). | The individual resources are written to the server in multiple  "boxes." |
| Stays as a bundle on the server upon receipt                 | Lands on the server and is no longer a “bundle” – however, Identifiers  allow the entirety of the protocol to be (re)assembled |
| Inability to refer in, limiting search capabilities. Cannot point  to a particular part of the protocol from some external process. | Meets the requirement to refer in, therefore better search  capability |
|                                                              | Allows common resources, such as the Organization resource  representing the sponsor, to be shared across multiple protocols. |

 

One may encounter a scenario where the writer (submitter) bundles the protocol in a different method than the reader (reviewer) prefers to unpack (store) it. In these scenarios, the intended storage bears more weight.  Some considerations below:

- Storage Mode A - data is persisted (stored) as a Bundle, with all resources inside, permanently. This is like a structured document.
- Storage Mode B - data is persisted (stored) as a linked set of resources, with no Bundle stored. This is like a database.

####  Examples of mixing the modes:

<div><img src="bundles-01.png" alt="bundles-01.png" style="max-width: 80%;
 height: auto;" />
<p>Figure 1: Example 1 Bundle Management</p></div>

 <div><img src="bundles-02.png" alt="bundles-02.png" style="max-width: 80%;
 height: auto;" />
<p>Figure 1: Example 2 Bundle Management</p></div>

During implementation, it is likely to encounter both Modes A and B. Ideally, an entity can equip itself to write and/or read either mode, noting that there are additional considerations when reading multiple (non-bundled) resources from a server (e.g. this may require precise resource linking and management overhead.)  Some practical considerations include opting for Mode A if the intended use is akin to a “document review” and opting for Mode B if some analysis is planned. Another example is the use case of the Schedule of Activities as an executable resource (e.g. driving research activities at a site), thus requiring Mode B.

One of the largest drivers of the adopted approach is how protocol amendments are represented and how subsequent submissions of the amended protocol are versioned, written to the server and read by the reviewer. 