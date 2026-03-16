Instance: Narrative-Composition-per-M11-Section-1
InstanceOf: m11-research-study-narratives
Title: "Example Narrative Composition per M11 Section - Section 1"
Usage: #example
Description: """Example Narrative Composition per M11 Section.  This illustrates taking the illustration protocol and putting 
each major M11 Section in a composition. This is M11 Section 1.
This pattern may be useful when working with part of a protocol.
"""
* status = $Comp#partial
* type = $NCIT#C207508 // Narrative
* date = "2025-06-30T12:46:00Z"
* author = Reference(Narrative-Organization) // Reference to Organization: Marketing 
* title = "Example Narrative Composition per M11 Section - Section 1 - (this is the Composition Title}"
* section[+]
  * title = "1 PROTOCOL SUMMARY - {this is the Section Title}"
  * code = $NCIT#C222769 "ICH M11 Protocol Section Title Page"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml' xml:lang="en" lang="en"> 
          <h1>1 PROTOCOL SUMMARY</h1>
            <h2>1.1	Protocol Synopsis</h2>
              <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
              <h3>1.1.1 Primary and Secondary Objectives and Estimands></h3>
                <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
              <h3>1.1.2 Overall Design</h3>
                <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
            <h2>1.2 Trial Schema</h2>
              <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
            <h2>1.3 Schedule of Activities</h2>
              <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
        </div>
        
      """
