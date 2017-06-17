<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1306697638143" ID="ID_1650087536" MODIFIED="1306697668144" TEXT="Mathematics and Physics For Programmers">
<node CREATED="1306697683062" ID="ID_1144257016" MODIFIED="1306697699754" POSITION="right" TEXT="Chapter 1">
<node CREATED="1306697726736" ID="ID_988794739" MODIFIED="1307305968398" TEXT="Writing numbers">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Distinction between number (e.g. count of items, ..., number's &quot;meaning&quot;) and its graphical representation (symbol, string of digits).
    </p>
    <p>
      
    </p>
    <p>
      We use limited set of symbols and typographical rules to represent any number.
    </p>
    <p>
      
    </p>
    <p>
      We do this by means of <i>base</i>&#160;system:
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        we choose number <i>b</i>&#160;as base
      </li>
      <li>
        to represent number <i>n</i>&#160;in that base we use this recursive algorithm (see page 6 top):
      </li>
    </ul>
    <p>
      function NumberToBaseString(Number, Base) {
    </p>
    <p>
      if(Number &lt; Base) {
    </p>
    <p>
      Output = Number;
    </p>
    <p>
      } else {
    </p>
    <p>
      Remainder = Number % Base;
    </p>
    <p>
      Output = Remainder;
    </p>
    <p>
      Reduced = (Number - Remainder) / Base;
    </p>
    <p>
      RestOfString = <b>NumberToBaseString(Reduced, Base)</b>;
    </p>
    <p>
      Output = RestOfString . Output;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      return(Output);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      reverse operation
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1306697762511" ID="ID_1740717874" MODIFIED="1306698106449" TEXT="Integers">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Natural / counting</b>&#160;numbers: <b>N</b>&#160;(1, 2, 3, 4, ....) + (0)
    </p>
    <p>
      
    </p>
    <p>
      <b>N </b>+ &lt;negative integers&gt; = <b>Integers</b>: <b>Z</b>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1306697781529" ID="ID_498707927" MODIFIED="1306698478291" TEXT="Rationals">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Q </b>
    </p>
    <p>
      
    </p>
    <p>
      Union of positive and negative fractions and integers (fractions with denominator 1: 1/1, 2/1, 3/1, ...).
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1306698109523" ID="ID_369947801" MODIFIED="1306698257952" TEXT="Fractions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Reciprocals</b>&#160;of <b>N</b>: 1/2, 1/3, ....
    </p>
    <p>
      <b>Simple Fractions</b>: 0 &lt;= x &lt;= 1 (2/3, 3/4, ...)
    </p>
    <p>
      <b>Vulgar Fractions</b>: 1 &lt; x (5/3, 6/4, ...)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1306697790384" ID="ID_1672160531" MODIFIED="1306698740934" TEXT="Irrationals">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Cannot be expressed by quotient of two integers: sqrt(2),PI, ...
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1306698656907" ID="ID_1512510110" MODIFIED="1306698802676" TEXT="Real">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Q</b>
    </p>
    <p>
      
    </p>
    <p>
      Union of rational and Irrational numbers
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1306698805185" ID="ID_1892885105" MODIFIED="1306698811865" TEXT="Complex, ..."/>
</node>
</node>
</node>
</map>
