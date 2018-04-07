<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Javascript - understanding weird parts" FOLDED="false" ID="ID_1397231744" CREATED="1485704468960" MODIFIED="1485704581221"><hook NAME="MapStyle">
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
<node TEXT="Section 2" POSITION="right" ID="ID_86662540" CREATED="1485704599352" MODIFIED="1485986528704">
<node TEXT="Lecture 6" FOLDED="true" ID="ID_1626787628" CREATED="1485704615462" MODIFIED="1485705137609">
<node TEXT="Syntax Parser" ID="ID_804304138" CREATED="1485704624214" MODIFIED="1487275355524"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Program that
    </p>
    <ul>
      <li>
        reads the code
      </li>
      <li>
        determines what it does
      </li>
      <li>
        checks if its grammar is valid
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Lexical Environment" ID="ID_828520697" CREATED="1485705139020" MODIFIED="1487275355568"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      function hello() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;var a = 'hello world';
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      Variable 'a' is put inside the 'hello' function.
    </p>
    <p>
      
    </p>
    <p>
      'Where things are put (written) and what's around them.'
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Execution context" ID="ID_1225295564" CREATED="1485705250691" MODIFIED="1487275355592"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      A wrapper to help manage the code that is running.
    </p>
    <p>
      
    </p>
    <p>
      There are lots of lexical environments. Which one is currently running is managed via execution contexts which can contain things beyond what's written in your code.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 7" FOLDED="true" ID="ID_995644249" CREATED="1485714134432" MODIFIED="1485714138649">
<node TEXT="Name / value pairs" ID="ID_555011624" CREATED="1485714143922" MODIFIED="1487275355652"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Name which maps to a unique value.
    </p>
    <p>
      Name can be defined more than once, but can have only one value in any given context.
    </p>
    <p>
      The value may be more name / value pairs.
    </p>
    <p>
      
    </p>
    <p>
      Ex.
    </p>
    <p>
      Address = 'Lost Street 1'
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Objects" ID="ID_1974518194" CREATED="1485714297500" MODIFIED="1487275355738"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Collection of name value pairs (the simplest Javascript definition of objects).
    </p>
    <p>
      
    </p>
    <p>
      Ex.
    </p>
    <p>
      Address: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;street: 'Lost Street',
    </p>
    <p>
      &#160;&#160;&#160;&#160;number: 1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;apartment: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;floor: 3,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;number: 301
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      It's just that simple.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 9" FOLDED="true" ID="ID_1318020651" CREATED="1485715579536" MODIFIED="1485715583789">
<node TEXT="Global environment and global object" ID="ID_1955950362" CREATED="1485715591152" MODIFIED="1487275355814"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Actually running script is &quot;wrapped&quot; running in the &quot;Global Execution Context&quot; (when e.g. displaying a web page there's normally more than one Execution Contexts / e.g. running scripts there)
    </p>
    <p>
      Global Execution Context creates and provides couple of special things / features:
    </p>
    <ul>
      <li>
        Global Object (collection of key / values pairs) (e.g. window object in the browser)
      </li>
      <li>
        'this' (== window object in the browser)
      </li>
    </ul>
    <p>
      &quot;Global&quot; in js means &quot;Not inside a function&quot;.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 10" FOLDED="true" ID="ID_1104461070" CREATED="1485734417690" MODIFIED="1485734423556">
<node TEXT="The Execution Context creation and Hoisting" ID="ID_1457626505" CREATED="1485734426970" MODIFIED="1487275355897"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      In the CREATION Phase (when the current Execution Context is being created) all:
    </p>
    <ul>
      <li>
        &#160;<b>functions</b>&#160;are parsed and interpreted before the actual running the code (code is 'hoisted' so <b>functions</b>&#160;are virtually moved on top of the code and interpreted before they are actually run)
      </li>
      <li>
        <b>memory space is setup for variables and functions</b>&#160;&#160;(&quot;Hoisting&quot;) - so <b>variables exist in memory, but are not initialized yet</b>&#160;(are set to 'undefined'). Functions are setup in their entirety and therefore they can be called before lexically defined.
      </li>
    </ul>
    <p>
      In other words:
    </p>
    <ul>
      <li>
        functions can be invoked / called before they're physically (lexically) defined in the code, or before they appear there,
      </li>
      <li>
        but variables will have their value set to 'undefined' until assigned some other one in the code.
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      TODO: explain CREATION Phase &amp; Hoisting: functions vs. variables ('undefined' - special value/ keyword - &quot;Variable has not been set (yet)(, but was declared).&quot;)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 11" FOLDED="true" ID="ID_121877495" CREATED="1485735597454" MODIFIED="1485735604649">
<node TEXT="Conceptual Aside: Javascript and &apos;undefined&apos;" ID="ID_572417636" CREATED="1485735605595" MODIFIED="1487275355960"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      function b() {
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      function a() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;b();
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      a();
    </p>
    <p>
      
    </p>
    <p>
      After the Global Execution context is created, every function invocation creates a new Execution Context and so on. These new execution contexts are created as Stack (the new one is created on top of the previous, and the first one (most top ;)) is the one which is currently running)).
    </p>
    <p>
      
    </p>
    <p>
      New Execution context is created even if the function is invoking itself.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 12" FOLDED="true" ID="ID_1625739205" CREATED="1485735563668" MODIFIED="1485735569376">
<node TEXT="The Execution Context: Code Execution" ID="ID_910106411" CREATED="1485735570637" MODIFIED="1487275356014"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Is phase when our code is actually executed after the Execution Context was created and initialized.
    </p>
    <p>
      In this phase is our code executed line by line
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 13" FOLDED="true" ID="ID_136332985" CREATED="1485735771308" MODIFIED="1485735778192">
<node TEXT="Single Threaded" ID="ID_1005997156" CREATED="1485735779275" MODIFIED="1487275356080"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;One command at a time&quot; (The browser might not be Single Threaded under the hood, but the Javascript engine is.)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Synchronous Execution" ID="ID_1114831193" CREATED="1485735828026" MODIFIED="1487275356123"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;One (line of code is executed) at a time (in order it appears).&quot;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 14" FOLDED="true" ID="ID_1901250452" CREATED="1485735963434" MODIFIED="1485735967168">
<node TEXT="Function Invocation and The Execution Stack" ID="ID_725014107" CREATED="1485735968466" MODIFIED="1487275356178"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Function invocation means running / calling a function. By using parenthesis &quot;()&quot; (in Javascript).
    </p>
    <p>
      The Execution Stack
    </p>
    <p>
      &quot;Anytime you execute or invoke a function in Javascript a new Execution Context is created&#160;(for that function)&#160;and put on the Execution Stack.&quot; Then it's executed line by line and aflter it finishes it's popped off the Execution Stack and execution continues in the current one.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 15" FOLDED="true" ID="ID_1241552172" CREATED="1485738816781" MODIFIED="1485738820137">
<node TEXT="Functions, Context and Variable Environments TODO: START HERE" ID="ID_1378009877" CREATED="1485738823420" MODIFIED="1487275356261">
<icon BUILTIN="yes"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Variable Environment: where the actual variable live (how they relate each other in memory)? (so it's its environment)
    </p>
    <p>
      
    </p>
    <p>
      Every Execution Context has its own Variable Environment (scope).
    </p>
    <p>
      
    </p>
    <p>
      1. function b() {
    </p>
    <p>
      2. &#160;&#160;&#160;&#160;var myVar;
    </p>
    <p>
      3. }
    </p>
    <p>
      4.
    </p>
    <p>
      5. function a() {&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// a()'s Execution Context is created and its Creation Phase is performed
    </p>
    <p>
      6. &#160;&#160;&#160;&#160;var myVar = 2;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// new myVar variable created is attached to the a()'s Execution Context
    </p>
    <p>
      7.&#160;&#160;&#160;&#160;&#160;b();
    </p>
    <p>
      8. }
    </p>
    <p>
      9.
    </p>
    <p>
      10. var myVar = 1;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Global Execution Context and Variable Environment
    </p>
    <p>
      11. a();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// On calling this, new a()'s Execution Context is created and initialized
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 16" FOLDED="true" ID="ID_99403642" CREATED="1485820224670" MODIFIED="1485820232539">
<node TEXT="The Scope Chain" ID="ID_308242189" CREATED="1485820236998" MODIFIED="1487275356354">
<icon BUILTIN="yes"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Every Execution Context has reference to the Outer Environment.
    </p>
    <p>
      When we do (e.g. request, ...) something with a variable then Javascript looks to current Execution Context Variable Environment AND to the referenced (lexical (!)) Outer Environment until it finds (or not) the manipulated variable.
    </p>
    <p>
      
    </p>
    <p>
      Example 1: Undefined variable bound to the Global Execution Context
    </p>
    <p>
      
    </p>
    <p>
      function b() { // This function is lexically attached to the Global Execution Context
    </p>
    <p>
      &#160;&#160;&#160;&#160;console.log(myVar); // so value of myVar will be === 1 (as it's defined in the Global Execution Context)
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      function a() { // This function is lexically attached to the Global Execution Context
    </p>
    <p>
      &#160;&#160;&#160;&#160;var myVar = 2;
    </p>
    <p>
      &#160;&#160;&#160;&#160;b();
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      The scope chain is chain of linked outer environments (until the Global one).
    </p>
    <p>
      
    </p>
    <p>
      var myVar = 1;
    </p>
    <p>
      a();
    </p>
    <p>
      
    </p>
    <p>
      &gt;&gt;&gt; 1
    </p>
    <p>
      
    </p>
    <p>
      Example 2. Undefined variable bound to the function's Execution Context
    </p>
    <p>
      
    </p>
    <p>
      function a() {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;var myVar = 2;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;function b() { // Now the function b &quot;sits&quot; in the function and is lexically attached to its Execution Context / Variable Environment
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;console.log(myVar);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;console.log(myVar);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;b();
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      var myVar = 1;
    </p>
    <p>
      
    </p>
    <p>
      a();
    </p>
    <p>
      
    </p>
    <p>
      &gt;&gt;&gt; 2
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 17" FOLDED="true" ID="ID_889875764" CREATED="1485986530081" MODIFIED="1485986534284">
<node TEXT="Scope, ES6 and &apos;let&apos;" ID="ID_871871053" CREATED="1485986535767" MODIFIED="1487275356396"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Scope: &quot;Where a variable is available in the code.&quot; (and if it's truly the same variable or a new copy)
    </p>
    <p>
      
    </p>
    <p>
      'let': allows to use &quot;Block Scoping&quot;:
    </p>
    <p>
      
    </p>
    <p>
      if (a &gt; b) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;let c = true; // c cannot be used before it's declared and it's available only in the block it's declared in
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 18" FOLDED="true" ID="ID_1461508063" CREATED="1486420158562" MODIFIED="1486420164581">
<node TEXT="What about asynchronous callbacks?" FOLDED="true" ID="ID_692339321" CREATED="1486420165202" MODIFIED="1487275356446"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Asynchronous callbacks can happen outside of the Javascript Engine (e.g. within the browser), but the Javascript handling (of 'asynchronous' events) is performed in a synchronous way (One line by one).
    </p>
    <p>
      
    </p>
    <p>
      // long running function
    </p>
    <p>
      function waitThreeSeconds() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;var ms = 3000 + new Date().getTime();
    </p>
    <p>
      &#160;&#160;&#160;&#160;while (new Date() &lt;&#160;&#160;ms) {}
    </p>
    <p>
      &#160;&#160;&#160;&#160;console.log('finished function');
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      function clickHandler() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;console.log('click event!');
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      // listen for the click event
    </p>
    <p>
      document.addEventListener('click', clickHandler);
    </p>
    <p>
      
    </p>
    <p>
      waitThreeSeconds();
    </p>
    <p>
      console.log('finished execution);
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&quot;Asynchronous&quot;" FOLDED="true" ID="ID_1173781512" CREATED="1486420228470" MODIFIED="1487275356476"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &quot;More than one at a time&quot;.
    </p>
    <p>
      
    </p>
    <p>
      Javascript is not asynchronous, so how does it handle 'asynchronicity'.
    </p>
    <p>
      
    </p>
    <p>
      The Javascript engine is just one of components (Rendering Engine, HTTP Processing Engine, ...) composing e.g. the browser.
    </p>
    <p>
      
    </p>
    <p>
      Javascript has 'hooks' to communicate with other (browser) components.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Event Queue" ID="ID_675029244" CREATED="1486420403837" MODIFIED="1487275356507"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Event Queue is queue of events inside the Javascript Engine full of events, notifications of events, which the Javascript engine &quot;should be aware of&quot; (browser events, dom element events, ...). When such events appears, its appended to the queue.
    </p>
    <p>
      
    </p>
    <p>
      Event Queue is processed when the Execution Stack is empty (due to the synchronous Javascript Engine basis) e.g. when actual running code is finished.
    </p>
    <p>
      
    </p>
    <p>
      The browser just adds events asynchronously to the queue.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Section 3" POSITION="left" ID="ID_1152612797" CREATED="1486420944955" MODIFIED="1486907384310">
<node TEXT="Lecture 19" ID="ID_719215585" CREATED="1486420950051" MODIFIED="1486420954328">
<node TEXT="Conceptual Aside: Javascript and types TODO:" FOLDED="true" ID="ID_1917491084" CREATED="1486420955947" MODIFIED="1487275356544"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Types of Data:
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Dynamic Typing" ID="ID_86748822" CREATED="1486424901737" MODIFIED="1487275356575"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      We don't tell the engine what type of data a variable holds, it figures it out while the code is running.
    </p>
    <p>
      And variables can hold different data types during execution (as it's figured out on the run).
    </p>
    <p>
      
    </p>
    <p>
      var isNew = true; // no error
    </p>
    <p>
      isNew = 'yup';
    </p>
    <p>
      isNew = 1;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="vs Static Typing" ID="ID_920194395" CREATED="1486425055885" MODIFIED="1487275356619"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      In other programming languages (Java, C(#)):
    </p>
    <p>
      
    </p>
    <p>
      bool isNew = 'hello'; // triggers error
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Lecture 20" ID="ID_1229480630" CREATED="1486907388199" MODIFIED="1486907395484">
<node TEXT="Primitive types" FOLDED="true" ID="ID_388826365" CREATED="1486907412878" MODIFIED="1487275356690"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Primitive type: a type of data that represents single value.
    </p>
    <p>
      (That is not an object.)
    </p>
    <p>
      
    </p>
    <p>
      * 6 primitive types in Javascript
    </p>
    <p>
      ** <b>undefined</b>&#160;- represents lack of existence (<b><u>DON'T set any variable(s) to this value</u></b>)
    </p>
    <p>
      ** <b>null</b>&#160;- ----&quot;&quot;---- (<b><u>DON'T set any variable(s) to this value</u></b>)
    </p>
    <p>
      ** <b>Boolean</b>: [true|false]
    </p>
    <p>
      ** <b>Number</b>: Floating point number (only one number type in javascript, can make math weird)
    </p>
    <p>
      ** <b>String</b>: a sequence of characters enclosed in ['&quot;]
    </p>
    <p>
      ** <b>Symbol</b>: used in ES6
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node TEXT="undefined" ID="ID_1093189106" CREATED="1486909018902" MODIFIED="1487275356723"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      represents lack of existence (<b><u>DON'T set any variable(s) to this value</u></b>)
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12" BOLD="true"/>
</node>
<node TEXT="null" ID="ID_841832413" CREATED="1486909042126" MODIFIED="1487275356757"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      represents lack of existence (<b><u>DON'T set any variable(s) to this value</u></b>)
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12" BOLD="true"/>
</node>
<node TEXT="Boolean" ID="ID_1983727762" CREATED="1486909048550" MODIFIED="1487275356781"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      [false | true]
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12" BOLD="true"/>
</node>
<node TEXT="Number" ID="ID_692782428" CREATED="1486909065406" MODIFIED="1487275356807"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      There is only floating point number type in Javascript (what can make math weird).
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12" BOLD="true"/>
</node>
<node TEXT="String" ID="ID_703440622" CREATED="1486909077638" MODIFIED="1487275356836"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Characters sequence enclosed in `'` or `&quot;`.
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12" BOLD="true"/>
</node>
<node TEXT="Symbol" ID="ID_812482214" CREATED="1486909082126" MODIFIED="1487275356859"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Used in the ES6, not covered here.
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12" BOLD="true"/>
</node>
</node>
</node>
<node TEXT="Lecture 21" ID="ID_1746642218" CREATED="1486907914748" MODIFIED="1486907919073">
<node TEXT="Operators" ID="ID_674038183" CREATED="1486907926812" MODIFIED="1487275356900"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Operator: a special <b>function</b>&#160;that is just written differently (remember Polish / prefix notation):
    </p>
    <p>
      e.g.
    </p>
    <p>
      
    </p>
    <p>
      `1 + 2` instead of `+(1, 2)`, (The 2nd method )
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Operator <b>takes two parameters and returns one result</b>.
    </p>
    <p>
      
    </p>
    <p>
      &quot;Infix notation&quot;.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 22" ID="ID_1283098894" CREATED="1486908700615" MODIFIED="1486908706774">
<node TEXT="Operators precedence and associativity" FOLDED="true" ID="ID_157785443" CREATED="1486908708375" MODIFIED="1487275356945"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence <a href="file://../doc/Javascript_Understanding_Weird_Parts/doc/mdn_operator_precedence_table.pdf">Operators precedence and associativity table</a>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Operator precedence" ID="ID_357262878" CREATED="1486908740184" MODIFIED="1487275356988"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Which operator / function is called first.
    </p>
    <p>
      Functions are called in order of precedence.
    </p>
    <p>
      Higher precedence wins.
    </p>
    <p>
      
    </p>
    <p>
      See https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence
    </p>
    <p>
      
    </p>
    <p>
      var a = 3 + 4 * 5; // Multiplication is executed first as it has higher precedence.
    </p>
    <p>
      console.log(a)
    </p>
    <p>
      
    </p>
    <p>
      &gt;&gt;&gt; 23
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Associativity" ID="ID_1548972472" CREATED="1486908745942" MODIFIED="1487275357041"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      In what order (operator) functions are called in (<u>when functions have the same precedence</u>):
    </p>
    <p>
      
    </p>
    <p>
      <b>left-to-right</b>: --&gt;
    </p>
    <p>
      <b>right-to-left</b>: &lt;--
    </p>
    <p>
      
    </p>
    <p>
      var a = 2, b = 3, c = 4;
    </p>
    <p>
      
    </p>
    <p>
      a = b = c; // same precedence, right-to-left associativity
    </p>
    <p>
      //&lt;-------- a =&#160;&#160;(b = c)
    </p>
    <p>
      
    </p>
    <p>
      console.log(a);
    </p>
    <p>
      console.log(b);
    </p>
    <p>
      console.log(c);
    </p>
    <p>
      
    </p>
    <p>
      &gt;&gt;&gt; 4
    </p>
    <p>
      &gt;&gt;&gt; 4
    </p>
    <p>
      &gt;&gt;&gt; 4
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Lecture 24" ID="ID_1915901031" CREATED="1486915389278" MODIFIED="1486915395340">
<node TEXT="Conceptual aside: Coercion" ID="ID_1935223319" CREATED="1486915397678" MODIFIED="1487275357093"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Coercion is converting a value from one type to another (mostly on the fly). (It's quite often in Javascript because it's dynamically typed. )
    </p>
    <p>
      var a = 1 + 2;
    </p>
    <p>
      console.log(a);
    </p>
    <p>
      var b = 'hello ' + 'there';
    </p>
    <p>
      console.log(b);
    </p>
    <p>
      var c = 1 + '2'; // &quot;Coerces&quot; the number 1 to the string '1' and then concatenates the strings
    </p>
    <p>
      console.log(c);
    </p>
    <p>
      &gt;&gt;&gt; 3
    </p>
    <p>
      &gt;&gt;&gt; hello there
    </p>
    <p>
      &gt;&gt;&gt; 12
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 25" ID="ID_1256691327" CREATED="1486915814524" MODIFIED="1486915817362">
<node TEXT="Comparison operators" ID="ID_885257149" CREATED="1486915818940" MODIFIED="1487275357200"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <pre>      
console.log(1  2  3);
&gt;&gt;&gt; true // ;-*
console.log(3 &gt; 2 &gt; 1);
&gt;&gt;&gt; true // ??? ...
    </pre>
    <p>
      Coercion is powerful but dangerous, because it can bring unexpected results ...
    </p>
    <p>
      Use <b>Strict (in-)equality</b>&#160;operators (`===` / `!==`)
    </p>
    <p>
      See also https://developer.mozilla.org/en-US/docs/Web/JavaScript/Equality_comparisons_and_sameness or <a href="file://./doc/mdn_equality_comparisons_and_sameness_table.pdf" target="_blank">Equality comparisons and sameness table PDF</a>
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node TEXT="Lecture 27" ID="ID_901525626" CREATED="1486931780743" MODIFIED="1486931786559">
<node TEXT="Existence and Booleans" ID="ID_1452901011" CREATED="1486931787466" MODIFIED="1487275346437"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <pre>Boolean(undefined);
&gt;&gt;&gt; false
Boolean(null);
&gt;&gt;&gt; false
Boolean('');
&gt;&gt;&gt; false
Boolean(0);
&gt;&gt;&gt; false
    </pre>
    <pre>      
var a;

// goes to internet and looks for a value 
// a = '';
// a = '0'; 

if (a) { // a is coerced / converted to Boolean
    console.log('There is something in the `a`.');
}
    </pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 28" ID="ID_513852242" CREATED="1486932241152" MODIFIED="1486932246549">
<node TEXT="Default values" ID="ID_1609503054" CREATED="1486932247728" MODIFIED="1487527677414"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Join together Operators and Coercion:
    </p>
    <pre>function greet(name) {
    console.log('Hello ' + name);
}

greet();

// &gt;&gt;&gt; undefined
// &gt;&gt;&gt; Hello undefined // Here the `undefined` type was coerced to string

function greetWithDefault(name) { // In ES6 there will be syntax for setting default value
    name = name || '[your name here]'; // Neat trick to set the default value
    
    console.log('Hello ' + name);
}

greetWithDefault();

// &gt;&gt;&gt; Hello [your name here]</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 29" ID="ID_1713388018" CREATED="1486933093932" MODIFIED="1486933103001">
<node TEXT="Framework aside: TODO improve the explanations" FOLDED="true" ID="ID_974105330" CREATED="1486933103515" MODIFIED="1487275357596"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      We're going to look how concepts we have learnt are used in widely used frameworks and libraries.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Default values" ID="ID_961552970" CREATED="1486933253299" MODIFIED="1487275357644"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      File: ../js/vendor/lib1/lib1.js
    </p>
    <pre>var libraryName = &quot;Lib 1&quot;;</pre>
    <p>
      File: ../js/vendor/lib2/lib2.js
    </p>
    <pre>var libraryName = &quot;Lib 2&quot;;</pre>
    <p>
      File: ../js/script.js
    </p>
    <pre>console.log(libraryName);</pre>
    <p>
      File: ../index.html
    </p>
    <pre>&lt;html&gt;
&lt;head&gt;
...
&lt;script src=&quot;../js/vendor/lib1/lib1.js&quot;&gt;&lt;!----&gt;&lt;/script&gt;
&lt;script src=&quot;../js/vendor/lib2/lib2.js&quot;&gt;&lt;!----&gt;&lt;/script&gt;
&lt;script src=&quot;../js/script.js&quot;&gt;&lt;!----&gt;&lt;/script&gt;
...
&lt;/head&gt;
&lt;body&gt;
...    </pre>
    <p>
      For checking possibly existing conflicting variables, following code is being used in legacy libraries:
    </p>
    <pre>...
var window.myLibrary = window.myLibrary || &quot;Lib 2&quot;;
...</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Section 4: Objects and Functions" POSITION="right" ID="ID_149434527" CREATED="1486937667059" MODIFIED="1486938658077">
<node TEXT="Lecture 30" FOLDED="true" ID="ID_55810104" CREATED="1486937634268" MODIFIED="1488493439942">
<node TEXT="Objects and the dot" FOLDED="true" ID="ID_819842486" CREATED="1486937639347" MODIFIED="1488492322286"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Let's look on objects from perspective how objects &quot;sit&quot; in memory ...
    </p>
    <p>
      
    </p>
    <p>
      A object will &quot;sit&quot; in memory and contain references to its related members (properties or methods) also sitting in another memory slots. So it knows where its properties and methods are.
    </p>
    <pre>var person = new Object(); // NOT Preferred way to create instantiate objects, for educational purposes only

person[&quot;firstname&quot;] = &quot;Tony&quot;; // one way to set / access object's members - using &quot;Computed Member Access&quot; operator - those brackets `[]`
person[&quot;lastname&quot;] = &quot;Boney&quot;; // the `lastname` index is the reference to a memory 'slot' where the primitive value `Boney` sits

var propertyName = &quot;lastname&quot;;

console.log(person);
console.log(person[propertyName]);

// &gt;&gt;&gt; Object
    firstname: &quot;Tony&quot;
    lastname: &quot;Boney&quot;
    __proto__: Object
// &gt;&gt;&gt; Boney

console.log(person.firstname); // Accessing the `firstname` property with the `dot` operator (`.`)

// &gt;&gt;&gt; Tony

person.address = new Object();
person.address.street = &quot;111 Main St.&quot;; // The `.` operator is left-to-right associative
person.address.city = &quot;New York&quot;;
person.address.state = &quot;NY&quot;;

console.log(person.address.street); // Preferred way when accessing static nested objects / properties
console.log(person[&quot;address&quot;][&quot;city&quot;]); // Preferred way when accessing dynamic nested objects / properties

// &gt;&gt;&gt; 111 Main St.
// &gt;&gt;&gt; New York</pre>
  </body>
</html>
</richcontent>
<node TEXT="Object" FOLDED="true" ID="ID_904047027" CREATED="1486938671475" MODIFIED="1487528134792"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      It has some sort of address of the occupied computer's memory slot (e.g. 0x001).
    </p>
    <p>
      Objects members / properties and methods also occupy their memory slots and the connection between the Object and its properties and methods points to them
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Primitive &quot;property&quot;" ID="ID_814046992" CREATED="1486938724061" MODIFIED="1487528144363"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      It has some sort of address of the occupied computer's memory slot (e.g. 0x002).
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Object &quot;property&quot;" ID="ID_877767920" CREATED="1486938732338" MODIFIED="1487528150743"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      It has some sort of address of the occupied computer's memory slot (e.g. 0x003).
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Function &quot;method&quot;" ID="ID_1821738657" CREATED="1486938740162" MODIFIED="1487528157492"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      It has some sort of address of the occupied computer's memory slot (e.g. 0x003).
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Lecture 31" FOLDED="true" ID="ID_1146414129" CREATED="1488493460460" MODIFIED="1488493463890">
<node TEXT="Objects and Object Literals" ID="ID_1437679959" CREATED="1488493441394" MODIFIED="1488494660950"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      TIM TOWDI ...
    </p>
    <p>
      There's usually more than one way to do something ... E.g. instantiating an object:
    </p>
    <h2>
      Object literal syntax
    </h2>
    <pre>var person = {}; // This creates a new empty object, it's shorthand (but not an operator
console.log(person);

// &gt;&gt;&gt; Object

var Tony = {
    firstname: 'Tony',
    lastname: 'Alicea',
    address: {
        street: '111 Main St.',
        city: 'New York',
        state: 'NY',
    }
}; // This creates and populates the object with initial properties and their values
console.log(Tony);

// &gt;&gt;&gt; Object {firstname: &quot;Tony&quot;, lastname: &quot;Alicea&quot;, address: Object}

function greet(person) {
    console.log('Hi ' + person.firstname); // Here the function expects to get some object with `firstname` property
}

greet(Tony);

// &gt;&gt;&gt; Hi Tony

greet({ firstname: 'Mary', lastname: 'Doe'}) // Using this syntax we can define / pass variables on the fly.

// &gt;&gt;&gt; Hi Mary

</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Lecture 32" FOLDED="true" ID="ID_1475606427" CREATED="1488494662334" MODIFIED="1488494666812">
<node TEXT="Framework aside" FOLDED="true" ID="ID_1901689106" CREATED="1488494668254" MODIFIED="1488494677947">
<node TEXT="Faking namespaces" FOLDED="true" ID="ID_1321601619" CREATED="1488494680093" MODIFIED="1488495427156"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      There is a bit problem with Javascript as it does not have namespaces ... so we have to fake them:
    </p>
    <pre>var greet = 'Hello!'; 
var greet = 'Hola!'; // Here the same variable names collision occurs.

console.log(greet);
// &gt;&gt;&gt; Hola! // The `Hello!` value were overwritten and lost ...

var english = { greet: 'Hello!'}; // We introduce wrapper objects as `namespaces` to prevent the collision
var spanish = { greet: 'Hola!'}; // We're faking the namespaces here ...

console.log(english); 

// &gt;&gt;&gt; Object { greet: &quot;Hello!&quot; }</pre>
  </body>
</html>
</richcontent>
<node TEXT="Namespace" ID="ID_568181095" CREATED="1488494687445" MODIFIED="1488494778193"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Namespace is just a container for variables and functions.
    </p>
    <p>
      Used typically for keeping variables with same names separated.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Lecture 33" FOLDED="true" ID="ID_1475225505" CREATED="1488495429570" MODIFIED="1488495435145">
<node TEXT="Json and Object Literals" ID="ID_680641734" CREATED="1488495440617" MODIFIED="1488833367616"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Json stands for JavaScript Object Notation
    </p>
    <p>
      
    </p>
    <pre>var objectLiteral = { // Comparing to e.g. xml
    firstname: 'Mary',
    isAProgrammer: true
}

var jsonValue = JSON.parse(
    { 
        &quot;firstname&quot;: &quot;Mary&quot;,
        &quot;isAProgrammer&quot;: true
    }
);

console.log(JSON.stringify(objectLiteral));

&gt;&gt;&gt; {&quot;firstname&quot;: &quot;Mary&quot;, &quot;isAProgrammer&quot;: true} // This is valid JSON (!)string(!) - note the quoted key names

console.log(JSON.parse('{&quot;firstname&quot;: &quot;Mary&quot;, &quot;isAProgrammer&quot;: true}'));

&gt;&gt;&gt; Object
&gt;&gt;&gt; { 
&gt;&gt;&gt;    &quot;firstname&quot;: &quot;Mary&quot;,
&gt;&gt;&gt;    &quot;isAProgrammer&quot;: true
&gt;&gt;&gt; }</pre>
    <p>
      JSON syntax is subset of valid Javascript syntax (every valid JSON is valid Javascript). But JSON syntax is not the same as Object literal syntax as JSON has stricter rules of validity.
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node TEXT="Lecture 34" FOLDED="true" ID="ID_407510161" CREATED="1488833384897" MODIFIED="1488833389391">
<node TEXT="Functions are objects" FOLDED="true" ID="ID_149432891" CREATED="1488833389960" MODIFIED="1488833771102"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Function is a special type of object. Common things are that, we can assign - Primitives - Object - Function
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1st Class Functions" ID="ID_1689688225" CREATED="1488833471264" MODIFIED="1488833746978"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Everything you can do with other types, you can do with functions: You can assign them to variables, pass them around, create them on the fly ...
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Function" FOLDED="true" ID="ID_149362983" CREATED="1488833774231" MODIFIED="1488834207606"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Is a special type of object so it has all the features of the normal object and has some special properties.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Common features" ID="ID_961539969" CREATED="1488834110749" MODIFIED="1488834192101"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <h2>
      Common features
    </h2>
    <p>
      For instance we can attach properties and methods to functions We can attach
    </p>
    <ul>
      <li>
        Primitives
      </li>
      <li>
        Objects
      </li>
      <li>
        even other Functions
      </li>
    </ul>
    to function (we'll see it later).
  </body>
</html>
</richcontent>
</node>
<node TEXT="Special features" FOLDED="true" ID="ID_598656540" CREATED="1488834137204" MODIFIED="1488835119853">
<icon BUILTIN="yes"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <h2>
      Example
    </h2>
    <pre>function greet() {
    console.log('hi');
}

greet.lang = 'English'; // Here we're assigning a property to the function, weird huh? ...

console.log(greet.lang);

&gt;&gt;&gt; English // Well, it's there ... in memory</pre>
  </body>
</html>
</richcontent>
<node TEXT="anonymous - Name is optional" ID="ID_1642070067" CREATED="1488834218660" MODIFIED="1488834460823"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      E.g. function can be <b>anonymous</b>.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Code" ID="ID_853054267" CREATED="1488834298833" MODIFIED="1488834763560">
<icon BUILTIN="yes"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Lines of code is actually another special feature (<b>property</b>) of a Function <b>object</b>.
    </p>
    <p>
      This property is so special because it makes the object &quot;<b>invocable</b>&quot; (with parentheses `()`).
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
