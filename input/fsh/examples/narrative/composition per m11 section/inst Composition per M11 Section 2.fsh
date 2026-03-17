Instance: Narrative-Composition-per-M11-Section-2
InstanceOf: m11-research-study-narratives
Title: "Example Narrative Composition per M11 Section - Section 2"
Usage: #example
Description: """Example Narrative Composition per M11 Section.  This illustrates taking the illustration protocol and putting 
each major M11 Section in a composition. This is M11 Section 2.
This pattern may be useful when working with part of a protocol.
"""


* status = #final
* type = $NCIT#C207508 // Narrative
* date = "2025-06-30T12:46:00Z"
* title = "Example Narrative Composition per M11 Section - Section 21 - (this is the Composition Title}"
* author = Reference(Narrative-Organization) // Reference to Organization: Marketing Authorization Holder
* section[+]
  * title = "2 INTRODUCTION  - {this is the Section Title}"
  * code = $NCIT#C218520  "ICH M11 Protocol Section 2 INTRODUCTION"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml' xml:lang="en" lang="en"> 
          <h1>2 INTRODUCTION</h1>
            <h2>2.1 Purpose of Trial</h2>
              <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
            <h2>2.2 Assessment of Risks and Benefits</h2>
              <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
              <h3>2.2.1 Risk Summary and Mitigation Strategy</h3>
                <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
              <h3>2.2.2 Benefit Summary</h3>
               <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
              <h3>2.2.3 Overall Risk-Benefit Assessment</h3>
                <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
                
        </div>
      """
