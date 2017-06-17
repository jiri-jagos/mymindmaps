<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1392477834070" ID="ID_730209379" MODIFIED="1392477848485" TEXT="Secrets of the JS Ninja">
<node CREATED="1392477871547" ID="ID_288695224" MODIFIED="1393725171632" POSITION="right" TEXT="2. Functions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      JS is a functional language.
    </p>
    <p>
      We can create anonymous function at any time.
    </p>
    <p>
      They can be passed as values to other functions and so on.
    </p>
    <p>
      */
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1392477915386" ID="ID_1823430122" MODIFIED="1392589912872" TEXT="1. Function Definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      There're different possible ways to define a function:
    </p>
    <p>
      
    </p>
    <p>
      Traditional way:
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      function getTrue() {return true;}
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      or using anonymous functions:
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var iSee = function() {return true;};
    </p>
    <p>
      
    </p>
    <p>
      boxOfMatches.isSmall = function() {return true;};
    </p>
    <p>
      
    </p>
    <p>
      assert (getTrue() &amp;&amp; iSee() &amp;&amp; boxOfMatches(), &quot;All are functions that return true value.&quot;)
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      If we'd define the getTrue function after the assertion, it'd work too, because no matter where the function is defined (within the current scope) it's visible and accessible. For instance:
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      function orderDefinitionCheck() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;var ret = check() == check();
    </p>
    <p>
      &#160;&#160;&#160;&#160;return assert( ret, &quot;We can't get below this line due to the return statement, but it never mind, the check function is available ....&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;function check() { return true;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      orderDefinitionCheck();
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      Above is true only for traditionally defined functions,&#160;&#160;anonymous functions exists only after the point at which they've been defined.
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1392483721646" ID="ID_736136469" MODIFIED="1392589895707" TEXT="2. Anonymous Functions and Recursion">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      Recursion with named function is simple:
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      function hiya(n) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return n &gt; 0 ? hiya(n - 1) + 'a' : 'hiy';
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      assert(hiya(4) == 'hiyaaaa', 'No problem here.');
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      It's the same with anonymous function within the object:
    </p>
    <p>
      */
    </p>
    <p>
      var ninja = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;hiya: function(n) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return n &gt; 0 ? hiya(n - 1) + 'a' : 'hiy';
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      assert(ninja.hiya(4) == 'hiyaaaa', 'Nor here.');
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      But when we try to create a new samurai from the ninja object, anonymous function hiya will stil reference the ninja object and when we re-define it, it'll get lost.
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var samurai = {hiya: ninja.hiya};
    </p>
    <p>
      var ninja = {}; // We've lost the hiya function here.
    </p>
    <p>
      
    </p>
    <p>
      try {
    </p>
    <p>
      &#160;&#160;&#160;&#160;samurai.hiya(4);
    </p>
    <p>
      } catch(e) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;assert(true, 'Right samurai does not yell even.');
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      This can be solved by giving the anonymous function a name ...
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var ninja = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;hiya: function hiya(n) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return (n &gt; 0 ? hiya(n -1) + 'a': 'hiy');
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
      assert (ninja.hiya(4) == 'hiyaaaa', 'Ninja yells for exact time - 4 a\'s.');
    </p>
    <p>
      
    </p>
    <p>
      var samurai = {hiya: ninja.hiya};
    </p>
    <p>
      var ninja = {}; // Wipe out the ninja.
    </p>
    <p>
      
    </p>
    <p>
      assert (samurai.hiya(4) == 'hiyaaaa', 'Samurai can also yell for the exact time.');
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      This ability: naming anonymous function extends even further. It can be done in normal variable assignments, but there're consequences ...
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var ninja = function innerNinja() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;assert(ninja == innerNinja, 'This function has two names at once!');
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      ninja();
    </p>
    <p>
      assert(typeof innerNinja == 'undefined', 'But innerNinja is not defined outside the function');
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      So the most important point is: <b>Anonymous functions can be named, but those names are only visible within the functions themselves. </b>
    </p>
    <p>
      
    </p>
    <p>
      Giving names to anonymous functions can provide clarity and simplicity, but the naming process is an extra step that we need to take to achieve that.
    </p>
    <p>
      
    </p>
    <p>
      We can circumvent that entirely by using the <b>callee</b>&#160;property of the <b>arguments</b>&#160; object.
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var ninja = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;hiya: function(n) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return (n&gt;0 ? arguments.callee(n-1) + 'a': 'hiy');
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
      assert(ninja.hiya(4) == 'hiyaaaa', 'arguments.callee is the function itself.');
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      Arguments.callee is available within every function (named or not) and can server as reliable way to access the function itself.
    </p>
    <p>
      */
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1392589897251" ID="ID_206511117" MODIFIED="1392762544725" TEXT="3. Functions as Objects">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      Functions behave like objects - can have properties, prototype, .... and what more: they're callable!
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var obj = {};
    </p>
    <p>
      var fn = function(){}; // Note the semicolon after the function definition - it's a <b>good practice</b>.
    </p>
    <p>
      assert(obj &amp;&amp; fn &quot;Both exist.&quot;);
    </p>
    <p>
      
    </p>
    <p>
      obj.prop = &quot;some value&quot;;
    </p>
    <p>
      fn.prop = &quot;some value&quot;;
    </p>
    <p>
      assert(obj.prop == fn.prop, &quot;Both are objects, both have the property.&quot;)
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node CREATED="1392676370919" ID="ID_1555702069" MODIFIED="1392758801392" TEXT="3.1. Storing Functions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      Storing UNIQUE functions within a structure (by their uniqueness ;)).
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var store =&#160;&#160;{
    </p>
    <p>
      id: 1,
    </p>
    <p>
      cache: {},
    </p>
    <p>
      add: function(fn) {
    </p>
    <p>
      if (!fn.id) {
    </p>
    <p>
      fn.id = store.id++;
    </p>
    <p>
      return !!(store.cache[fn.id] = fn); // !! turns following expression to its boolean equivalent
    </p>
    <p>
      }
    </p>
    <p>
      }
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      function ninja(){
    </p>
    <p>
      log(ninja.id);
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      function samurai() {
    </p>
    <p>
      log(samurai.id);
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      assert(store.add(ninja), &quot;ninja came.&quot;);
    </p>
    <p>
      assert(!store.add(ninja), &quot;ninja came before.&quot;);
    </p>
    <p>
      
    </p>
    <p>
      ninja();
    </p>
    <p>
      
    </p>
    <p>
      assert(store.add(samurai), &quot;samurai came.&quot;);
    </p>
    <p>
      assert(!store.add(ninja) , &quot;ninja came before.&quot;);
    </p>
    <p>
      assert(!store.add(samurai), &quot;samurai came before.&quot;);
    </p>
    <p>
      
    </p>
    <p>
      samurai();
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1392758803256" ID="ID_1930146017" MODIFIED="1392841478424" TEXT="3.2. Self Memoizing Functions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      Well, he says poorly written algorithm for computing primes.
    </p>
    <p>
      Let's make it a bit better by searching only to the rounded half of the given number with added answers cache.
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      function isPrime(num) {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (isPrime.cache[num] != null) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return isPrime.cache[num];
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;var answer = true;
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (1 &lt; num &amp;&amp; num &lt; 4) {
    </p>
    <p>
      &#160;&#160;answer = true;
    </p>
    <p>
      &#160;&#160;&#160;&#160;} else if (num % 2 == 0) {
    </p>
    <p>
      &#160;&#160;&#160;answer = false;
    </p>
    <p>
      &#160;&#160;&#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;var half = Math.round(num / 2);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;for (var i = half; i &gt; 3; i--) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (num % i == 0) {
    </p>
    <p>
      &#160;&#160;answer = false;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;break;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;return isPrime.cache[num] = answer;
    </p>
    <p>
      }
    </p>
    <p>
      ;
    </p>
    <p>
      
    </p>
    <p>
      isPrime.cache = {}; // !!! this is important line
    </p>
    <p>
      
    </p>
    <p>
      var lastI = 251;
    </p>
    <p>
      for (var i = 251; i &lt; 501; i=i+2) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;assert(isPrime(i), i + &quot; is prime.&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;assert(isPrime.cache[lastI], (lastI) + &quot; is cached ...&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;var lastI = i;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      A modern example for this is querying for a set if DOM elements by name ...
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      function getElements(name) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return getElements.cache[ name ] = getElements.cache[ name ] ||
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;document.getElementsByTagName(name);
    </p>
    <p>
      }
    </p>
    <p>
      getElements.cache = {}
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      It's quite simple and yields 7x performance increase!!
    </p>
    <p>
      */
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1392762532363" ID="ID_684269010" MODIFIED="1393721767893" TEXT="4. Context">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      <u><b>V</b>ery <b>I</b>mportant <b>F</b>eature </u>
    </p>
    <p>
      
    </p>
    <p>
      most poverful and also confusing
    </p>
    <p>
      
    </p>
    <p>
      The context represents: <b>The object within which function is being executed.</b>&#160;
    </p>
    <p>
      
    </p>
    <p>
      E.g: defining a function within an object structure will ensure that its context always refers to that object (unless otherwise overwritten)
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var katana = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;isSharp: true,
    </p>
    <p>
      &#160;&#160;&#160;&#160;use:function () {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.isSharp = !!this.isSharp; // remember that boolean cast
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      katana.use();
    </p>
    <p>
      assert( !katana.isSharp, &quot;Verify katana has been used.&quot;);
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      What if function is not explicitly declared as a property of an object? Then its context refers to the global object.
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      function katana() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;this.isSharp = true;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      katana();
    </p>
    <p>
      assert( isSharp === true, &quot;A global object now exists with such name and value.&quot;);
    </p>
    <p>
      
    </p>
    <p>
      var shuriken = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;toss: function() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.isSharp = true;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      shuriken.toss();
    </p>
    <p>
      assert( shuriken.isSharp === true, &quot;When it's an object property, value is set within its context.&quot; );
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      All of this becomes <b>QUITE IMPORTANT</b>&#160;when dealing with functions in a variety of contexts - knowing the contexts affects the result of the code.
    </p>
    <p>
      
    </p>
    <p>
      Note: In ECMAScript4 (JavaScript 2) function defined within an other function will inherit the context of the outer function.
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      And now for something completely different.
    </p>
    <p>
      
    </p>
    <p>
      It's time to explore the most complex contex usage: The fact that <b>a function context can be redefined anytime that it's called</b>.
    </p>
    <p>
      
    </p>
    <p>
      Javascript provides methods: <b>call</b>&#160;and <b>apply</b>&#160;(on every function) that can be used to
    </p>
    <p>
      
    </p>
    <p>
      - call the function
    </p>
    <p>
      - define its context
    </p>
    <p>
      - specify its incoming arguments
    </p>
    <p>
      
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var object = {};
    </p>
    <p>
      function fn() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return this;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      assert( fn() == this, &quot;The context is the global object.&quot; );
    </p>
    <p>
      assert ( fn.call(object) == object, &quot;The context is a specific object.&quot;);
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      These two functions differ in a way they set incoming arguments:
    </p>
    <p>
      
    </p>
    <p>
      - .call() passes in arguments individually
    </p>
    <p>
      - .apply() passes in arguments as an array
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      function add(a, b) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return a + b;
    </p>
    <p>
      }
    </p>
    <p>
      assert(add.call(this, 1, 2) == 3, &quot;.call() with individual arguments&quot;);
    </p>
    <p>
      assert(add.apply(this, [1, 2]) == 3, &quot;.apply() takes and array of arguments&quot;);
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1393721770343" ID="ID_1215580485" MODIFIED="1393723507735" TEXT="4.1 Looping">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      Example of using .call() to make an array looping function with a callback - frequent addition to most JavaScript libraries. The result simplifies the process of looping through an array.
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      function loop(array, fn) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;for (var i = 0; i &lt; array.length, i++) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;fn.call(array, array[i], i);
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
      var num = 0;
    </p>
    <p>
      loop([0, 1, 2], function (value, i) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;assert(value == num++, &quot;Make sure the content are as we expect it.&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;assert(this instanceof Array, &quot;The context should be the full array.&quot;)
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      There's another interesting example:
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      var elems = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;find: function(id) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.add(document.getElementById(id));
    </p>
    <p>
      &#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;length: 0,
    </p>
    <p>
      &#160;&#160;&#160;&#160;add: function(elem) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Array.prototype.push.call(this, elem);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      elems.add(&quot;first&quot;);
    </p>
    <p>
      assert(elems.length == 1 &amp;&amp; elems[0].nodeType, &quot;&quot;);
    </p>
    <p>
      
    </p>
    <p>
      elems.add(&quot;second&quot;);
    </p>
    <p>
      assert(elems.length == 2 &amp;&amp; elems[1].nodeType, &quot;&quot;);
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      Some important aspects:
    </p>
    <p>
      We're accessing a native object method (Array.prototype.push) as any other function / method by using .call() and the most interesting part is the use of 'this' as the context: Normally, since a push method is part of an Array object, setting the context to any other object is treated as if it was an array.
    </p>
    <p>
      This means that when we push this new element on to the current object, its length will be modified and a new numbered property will exist containing the added item.
    </p>
    <p>
      */
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1393722915674" ID="ID_354083044" MODIFIED="1393723970022" TEXT="5. Variable Arguments">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      <b>JavaScript function accepts any number of arguments</b>, which offers great flexibility and control over the way applications can be written.
    </p>
    <p>
      */
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1393723973284" ID="ID_788053549" MODIFIED="1393723995959" TEXT="5.1. Min/Max Number in an Array">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      function smallest(array) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return Math.min.apply(Math, array);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      function largest(array) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return Math.max.apply(Math, array);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      assert(smallest([0, 1, 2, 3]) == 0, &quot;The smallest is 0&quot;);
    </p>
    <p>
      assert(largest([0, 1, 2, 3]) == 3, &quot;The largest is 3&quot;);
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      Note that we specify Math as the context of the 'applied' max method (what's not necessary anyway as min and max methods will continue to work regardless of what's passed in as the context)
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1393723997606" ID="ID_530269366" MODIFIED="1393724411000" TEXT="5.2. Function Overloading">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /**
    </p>
    <p>
      All function are provided access to an <b>I</b>mportant <b>L</b>ocal <b>V</b>ariable: <b>arguments</b>, which gives them the power necessary to handle any number of provided arguments.
    </p>
    <p>
      
    </p>
    <p>
      All specified arguments are always accessible in the arguments variable.
    </p>
    <p>
      */
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
