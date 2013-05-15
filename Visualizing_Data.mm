<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1368192549155" ID="ID_524896759" MODIFIED="1368196017661" TEXT="Visualizing Data">
<node CREATED="1368192573398" HGAP="36" ID="ID_1789431737" MODIFIED="1368197635475" POSITION="right" TEXT="Process" VSHIFT="-137">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Of course, these steps can&#8217;t be followed slavishly. You can expect that they&#8217;ll be
    </p>
    <p>
      involved at one time or another in projects you develop, but sometimes it will be four
    </p>
    <p>
      of the seven, and at other times all of them.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1368192581180" ID="ID_1405348044" MODIFIED="1368192926597" TEXT="Acquire">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Obtain the data, whether from a file on a disk or a source over a network.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368192595370" ID="ID_1163737640" MODIFIED="1368192910602" TEXT="Parse">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Provide some structure for the data&#8217;s meaning, and order it into categories.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368192599762" ID="ID_1048644245" MODIFIED="1368192914985" TEXT="Filter">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Remove all but the data of interest.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368192605525" ID="ID_208888085" MODIFIED="1368192967524" TEXT="Mine">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Apply methods from statistics or data mining as a way to discern patterns or
    </p>
    <p>
      place the data in mathematical context.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368192610757" ID="ID_1502378003" MODIFIED="1368192978622" TEXT="Represent">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Choose a basic visual model, such as a bar graph, list, or tree.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368192618761" ID="ID_330372977" MODIFIED="1368193002600" TEXT="Refine">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Improve the basic representation to make it clearer and more visually engaging.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368192627058" ID="ID_1244697141" MODIFIED="1368193019464" TEXT="Interact">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Add methods for manipulating the data or controlling what features are visible.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1368196035434" ID="ID_230376044" MODIFIED="1368196309753" POSITION="left" TEXT="Principles">
<node CREATED="1368196311729" ID="ID_1280035470" MODIFIED="1368196322531" TEXT="Each Project Has Unique Requirements "/>
<node CREATED="1368196495717" ID="ID_1492402918" MODIFIED="1368196518690" TEXT="Avoid the All-You-Can-Eat Buffet ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Often, less detail will actually convey more information because the inclusion of
    </p>
    <p>
      overly specific details causes the viewer to miss what&#8217;s most important or disregard
    </p>
    <p>
      the image entirely because it&#8217;s too complex. Use as little data as possible, no matter
    </p>
    <p>
      how precious it seems.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368196651558" ID="ID_1684644660" MODIFIED="1368196653803" TEXT="Know Your Audience "/>
</node>
<node CREATED="1368197155230" HGAP="6" ID="ID_1393279691" MODIFIED="1368197638862" POSITION="right" TEXT="Processing" VSHIFT="8">
<node CREATED="1368197200730" ID="ID_1112018677" MODIFIED="1368197512265" TEXT="Loading and Displaying Data ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      File handling functions include loadStrings( ), which reads a text file into an array of
    </p>
    <p>
      String objects, and loadImage( ), which reads an image into a PImage object, the con-
    </p>
    <p>
      tainer for image data in Processing.
    </p>
    <p>
      
    </p>
    <p>
      // Examples of loading a text file and a JPEG image
    </p>
    <p>
      // from the data folder of a sketch.
    </p>
    <p>
      String[] lines = loadStrings(&quot;something.txt&quot;);
    </p>
    <p>
      PImage image = loadImage(&quot;picture.jpg&quot;);
    </p>
    <p>
      
    </p>
    <p>
      To add a file to a Processing sketch, use the Sketch &#10141; Add File command, or drag the
    </p>
    <p>
      file into the editor window of the PDE. The data folder will be created if it does not
    </p>
    <p>
      exist already.
    </p>
    <p>
      To view the contents of the sketch folder, use the Sketch &#10141; Show Sketch Folder com-
    </p>
    <p>
      mand. This opens the sketch window in your operating system&#8217;s file browser.
    </p>
    <p>
      In the file commands, it&#8217;s also possible to use full path names to local files, or URLs
    </p>
    <p>
      to other locations if the data folder is not suitable:
    </p>
    <p>
      // Load a text file and an image from the specified URLs
    </p>
    <p>
      String[] lines = loadStrings(&quot;http://benfry.com/writing/map/locations.tsv&quot;);
    </p>
    <p>
      PImage image = loadImage(&quot;http://benfry.com/writing/map/map.png&quot;);
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368197542136" ID="ID_1791862040" MODIFIED="1368197605792" TEXT="Functions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The steps of the process outlined in the first chapter are commonly associated with
    </p>
    <p>
      specific functions in the Processing API. For instance:
    </p>
    <p>
      
    </p>
    <p>
      <b>Acquire</b>
    </p>
    <p>
      loadStrings( ), loadBytes( )
    </p>
    <p>
      <b>Parse</b>
    </p>
    <p>
      split( )
    </p>
    <p>
      <b>Filter</b>
    </p>
    <p>
      for( ), if (item[i].startsWith( ))
    </p>
    <p>
      <b>Mine</b>
    </p>
    <p>
      min( ), max( ), abs( )
    </p>
    <p>
      <b>Represent</b>
    </p>
    <p>
      map( ), beginShape( ), endShape( )
    </p>
    <p>
      <b>Refine</b>
    </p>
    <p>
      fill( ), strokeWeight( ), smooth( )
    </p>
    <p>
      <b>Interact</b>
    </p>
    <p>
      mouseMoved( ), mouseDragged( ), keyPressed( )
    </p>
    <p>
      
    </p>
    <p>
      This is not an exhaustive list, but simply another way to frame the stages of visualization for those more familiar with code.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</map>
