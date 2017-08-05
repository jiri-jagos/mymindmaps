<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="How to design programs 2nd ed." FOLDED="false" ID="ID_1400739575" CREATED="1501941887980" MODIFIED="1501942356918" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false;" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
<edge COLOR="#ff0000"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
<edge COLOR="#0000ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
<edge COLOR="#00ff00"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
<edge COLOR="#ff00ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5">
<edge COLOR="#00ffff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6">
<edge COLOR="#7c0000"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7">
<edge COLOR="#00007c"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8">
<edge COLOR="#007c00"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9">
<edge COLOR="#7c007c"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10">
<edge COLOR="#007c7c"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11">
<edge COLOR="#7c7c00"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="1" RULE="ON_BRANCH_CREATION"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      http://www.ccs.neu.edu/home/matthias/HtDP2e/index.html
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Preface" POSITION="right" ID="ID_1379496513" CREATED="1501941970928" MODIFIED="1501942421972">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      http://www.ccs.neu.edu/home/matthias/HtDP2e/part_preface.html
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Systematic program design" ID="ID_1723770022" CREATED="1501941976376" MODIFIED="1501942003532">
<node TEXT="Design Recipes" ID="ID_956545399" CREATED="1501942225009" MODIFIED="1501945650140"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Design recipes apply to both complete programs and their building blocks (functions).
    </p>
    <p>
      The book deals with 2 recipes for complete programs:
    </p>
    <ul>
      <li>
        GUI and
      </li>
      <li>
        batch programs
      </li>
    </ul>
    <p>
      In contrast, design recipes for functions include wide variety of flavors:
    </p>
    <ul>
      <li>
        for atomic forms of data as numbers,
      </li>
      <li>
        enumerations of different kinds of data,
      </li>
      <li>
        data that compounds other data
      </li>
      <li>
        finite, but arbitrarily large data,
      </li>
      <li>
        ...
      </li>
    </ul>
    <p>
      Function level design shares common design process consisting of 6 essential steps.
    </p>
    <p>
      <b><u>Examples</u>&#160;play a central role at almost every stage</b>.
    </p>
    <p>
      Each step of the design process comes with pointed questions, the answers almost automatically create an intermediate product.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="1. From Problem Analysis to Data Definitions" ID="ID_1574247420" CREATED="1501942676506" MODIFIED="1501943322114"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <b>Identify the information that must be represented</b>&#160;and
      </li>
      <li>
        <b>How it is represented in the chosen programming language</b>&#160;- writing down examples proves real-world information encoding to data and its interpretation as information
      </li>
      <li>
        <b>Formulate data definitions</b>
      </li>
      <li>
        <b>Illustrate them with templates</b>
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
<node TEXT="2. Signature, Purpose Statement, Header" ID="ID_533672998" CREATED="1501942753906" MODIFIED="1501943562168"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      State:
    </p>
    <ul>
      <li>
        <b>which data the desired function consumes</b>&#160;and
      </li>
      <li>
        <b>what it produces</b>
      </li>
      <li>
        articulate <b>what the function computes as a concise one-line statement</b>
      </li>
      <li>
        define a stub that lives up to the signature
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
<node TEXT="3. Functional Examples" ID="ID_896368802" CREATED="1501942771626" MODIFIED="1501943711826"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Work through examples that illustrate the function's purpose.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="4. Function Template" ID="ID_1193310839" CREATED="1501942788730" MODIFIED="1501943735173"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Translate the data definitions into an outline of the function.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="5. Function Definition" ID="ID_90295570" CREATED="1501942798954" MODIFIED="1501943788358"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Fill in the gaps in the function template, exploit the purpose statement and the examples.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="6. Testing" ID="ID_1395045485" CREATED="1501942809818" MODIFIED="1501944035600"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Articulate the examples as tests and
      </li>
      <li>
        ensure that the function passes all
      </li>
    </ul>
    <p>
      Doing so discover mistakes and improves readability and helps others understand the definition.
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Iterative Refinement" ID="ID_1277822359" CREATED="1501942234337" MODIFIED="1501946525860"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This addresses the fact that problems are complex and multifaceted.
    </p>
    <p>
      Getting everything right at once is nearly impossible.
    </p>
    <p>
      Iterative refinement is borrowed from physical sciences.
    </p>
    <p>
      In essence, iterative refinement recommends:
    </p>
    <ul>
      <li>
        stripping away all inessential details
      </li>
      <li>
        finding solution for remaining core problem
      </li>
    </ul>
    <p>
      Next refinement steps (&quot;iterations&quot;) add-in one of the omitted details and re-solve the expanded problem using the existing solution AMAP.
    </p>
    <p>
      Further iterations eventually lead to a complete solution.
    </p>
    <p>
      
    </p>
    <p>
      In this sense programmer is a mini-scientist:
    </p>
    <ul>
      <li>
        She creates approximate model for an idealized version of the world to make predictions about it
      </li>
      <li>
        as long as predictions come true, everything is fine
      </li>
      <li>
        when predicted events differ, she revises the model to reduce the discrepancy
      </li>
    </ul>
    <p>
      Programmers then
    </p>
    <ul>
      <li>
        create first design
      </li>
      <li>
        turn it into code
      </li>
      <li>
        evaluate with actual real data and users
      </li>
      <li>
        iteratively refine the design until the program matches the desired behaviour
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="DrRacket and the Teaching Languages" ID="ID_586780084" CREATED="1501946839128" MODIFIED="1501946852266"/>
<node TEXT="Skills that Transfer" ID="ID_823574218" CREATED="1501946859056" MODIFIED="1501946865483"/>
</node>
</node>
</map>
