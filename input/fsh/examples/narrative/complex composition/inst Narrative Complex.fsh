Instance: Narrative-Complex
InstanceOf: m11-research-study-narratives
Title: "Example Narrative Complex - Other Patterns and Non M11 Content Suggestion"
Usage: #example
Description: """Example Narrative Complex -  Custom Content
This example shows: 1) more granular decomposition of the narrative 2) more complex formatting 3) content that falls outside the M11 template.  These illustrations show what is possible.  It is not a recommended way of laying out the protocol. Individual use cases may need other solutions.
"""

* status = $Comp#final
* type = $NCIT#C207508 // Narrative
* date = "2025-06-30T12:46:00Z"
* author = Reference(Narrative-Organization) // Reference to Organization: Marketing Authorization Holder
* title = "Narrative 15"
* section[+]
  * title = "1.1.2 Overall Design - {this is the Section Title}"
  * code = $NCIT#C218517  "ICH M11 Protocol Section 1.1.2 Overall Design"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml' xml:lang="en" lang="en"> 
              <h3>1.1.2 Overall Design</h3>
                <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
        </div>
      """
* section[+]
  * title = "1.1.2 Overall Design - {this is the Section Title}"
  * code = $NCIT#C218518  "ICH M11 Protocol Section 1.2 Trial Schema"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml' xml:lang="en" lang="en"> 
            <h2>1.2 Trial Schema</h2>
              <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>

        </div>
      """
      
* section[+]
  * title = "Formatting Possibilities"
  * code = $NCIT#C218519
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml' xml:lang="en" lang="en"> 

      <head>
        <style>
          body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f4f4f4;
            color: #333333;
            margin: 20px;
          }

          /* Heading style */
          h1 {
              color: #0066cc;
              border-bottom: 2px solid #0066cc;
              padding-bottom: 5px;
            }

          h2 {
              color: #56f318;
              border-bottom: 2px solid #56f318;
              padding-bottom: 3px;
            }

          /* Paragraph style */
          p {
              font-size: 1em;
              line-height: 1.5em;
            }  
        </style>
      </head>

            <title>Simple XHTML with No Stylesheet</title>

            <h2>1.3 Schedule of Activities</h2>
              <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
              
            <p>This section should contain a graphic This section should contain a graphic This section should contain a graphic This section 
            should contain a graphic This section should contain a graphic This section should contain a graphic This section should contain 
            a graphic This section should contain a graphic This section should contain a graphic This section should contain a graphic. </p>
              
           <p>
           Figure 1\tStudy Schema</p>
           
           <img alt="alt text" src="data:image/png;base64" value="iVBORw0KGgoAAAANSUhEUgAABSgAAAINCAYAAAFKUKEVAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAIdUAACHVAQSctJ0AAPq3SURBVHhe7N0HmBTF1gZgyTkHARGQYELBBCIoXiNiQlFMmEUQ/6so5nCNgIg5J1TEACpKUBAUBBTJQbKA5JxzDvXz1dbprent2Z3Zndmtmfne5zl0dVV3T6C35kxNhyMUkWO4U+ayN954w5Qyd8QRof81/vm2bdvq6ZIlS/Q0mXCnzGX2TokdDTF8+PCQeSkLqZ84caKef++997z22bNn62ky4U7pGHtn9JOdMtHt3r1bv858+fLpef9r5k7pCPzHZLZDJgt5jccee6yqV6+eLleuXFl9/fXXXpsT78K2bdtMKU3t2rVNKV337t1NKR0+uuSv7Z9//gn5T61SpYopKdWiRQs97dKli57u2bNHrV27VpfF3r17VcmSJXUZ26xUqZIuH3300elv1uHprl27vLIoW7asntp1RYoUMaXIYN1p06ap+fPnq6ZNm3rP+aKLLtLvj73tZOfEK5WdEm/8yJEjQ/4DpIxp0MeX/OdB3bp19bRw4cKqQoUKuoz1ZJmCBQvqKQQ9RoMGDbwydlwYOHCgrrOXh5tvvtmrO/LII/VUoH7ChAlmLntuu+02U0o9oe80UR444rl5ppSGOyXlOe6U5Bw3d8rNS5Ua1D4tXgj4gmDXPcu/o2Tjbk+JnQ075YF9psKHO2PScvvjO6sdjztmUnJ6p+zZs2dI9O3bN9MYPHhwljF69OhMY8qUKVnGvHnzMo1Vq1ZlGps3b9bDXplFKsuVnTI7P4dt37498D+LkfyRKzvluHHjTCly3ClTN5zbKeVXEf9O2b59e91m1/nnpS5cvb+O4WY4tVPu3LnTlNhTpnKE3SkLFChgSqHQ49jTSPDjmxFNRNVTRrMj2rKzU1LqynSnHDB... (truncated)"/>
           
           <p>IV = intravenous; PBO = placebo; TCZ = tocilizumab.</p>

              <p>This section should contain a graphic This section should contain a graphic This section should contain a graphic This section 
            should contain a graphic This section should contain a graphic This section should contain a graphic This section should contain 
            a graphic This section should contain a graphic This section should contain a graphic This section should contain a graphic. </p>
        </div>
      """

* section[+]
  * title = "Section 15 - {this is the Section Title}"
  * code.text = "Uncoded Special Section"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml' xml:lang="en" lang="en"> 
          <h1>15 SPECIAL PURPOSE - NON M11</h1>
            <h2>A section not in M11</h2>
              <p>Hic textus tantummodo locum tenens est. Nullum verum sensum habet praeter spatium in pagina vel velo implere. Utile tamen est ad rem illustrandam. Huiusmodi ineptiae plerumque cum \"lorem ipsum\" incipiunt, sed ita translatae non sunt textus laetus.</p>
        </div>
      """