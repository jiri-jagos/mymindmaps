<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Apache Camel" FOLDED="false" ID="ID_752265891" CREATED="1513339056219" MODIFIED="1522836229634" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_icon_for_attributes="true" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
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
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="8" RULE="ON_BRANCH_CREATION"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<node TEXT="1. Meeting Camel" FOLDED="true" POSITION="left" ID="ID_607132816" CREATED="1513358265277" MODIFIED="1513358273246">
<edge COLOR="#00ff00"/>
<node TEXT="1.3 Message Model" ID="ID_1618741804" CREATED="1513339114128" MODIFIED="1513358291336"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <u>org.apache.camel.Message</u>&#160;&#8212;The fundamental entity containing the data being carried and routed in Camel
      </li>
      <li>
        <u>org.apache.camel.Exchange</u>&#160;&#8212;The Camel abstraction for an exchange of mes- sages. This exchange of messages has an &#8220;in&#8221; message and as a reply, an &#8220;out&#8221; message
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="1.3.1 Message" ID="ID_962395419" CREATED="1513339121303" MODIFIED="1513359887499"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Messages:
    </p>
    <ul>
      <li>
        are used by systems to communicate with each other
      </li>
      <li>
        flow in one direction from sender to receiver
      </li>
      <li>
        have a body (payload), headers and optional attachments
      </li>
      <li>
        are uniquely identified by java.lang.String identifier
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="Headers and Attachments" ID="ID_198139258" CREATED="1513339770193" MODIFIED="1513340066869"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        are associated with the message
      </li>
      <li>
        such things as sender identifiers, content encoding, authentication information, or optional attachments ...
      </li>
      <li>
        are name-value pairs, where name is unique case-insensitive string and value is of type java.lang.Object
      </li>
      <li>
        Headers are stored as a Map within the message
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Body" ID="ID_620348885" CREATED="1513340067882" MODIFIED="1513340307284"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        is of type java.lang.Object
      </li>
    </ul>
    <p>
      Application designer must make sure that receiver can understand the message content.
    </p>
    <p>
      If sender and receiver use different formats Camel provides number of mechanisms to transform the data into an acceptable format (automatically behind the scenes).
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Fault Flag" ID="ID_1493917625" CREATED="1513340308546" MODIFIED="1513340512437"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Some protocols and specifications distinguish between <u>output</u>&#160;and <u>fault</u>&#160;messages (the latter are valid too but indicate unsuccessful outcome).
    </p>
    <p>
      Faults are handled at the application level.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="1.3.2 Exchange" ID="ID_307061994" CREATED="1513339125487" MODIFIED="1513359879628"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Exchange
    </p>
    <ul>
      <li>
        is the message container during routing and
      </li>
      <li>
        provides support for various types of interactions between systems - known as &quot;<b>Message Exchange Patterns</b>&quot; (<b>MEPs</b>).
      </li>
    </ul>
    <p>
      MEPs differentiate between <b>one-way</b>&#160;and <b>request-response</b>&#160;messaging styles
    </p>
    <p>
      Camel exchange holds pattern property which can be either:
    </p>
    <ul>
      <li>
        <b>InOnly</b>&#160;- One way message (known as Event) - e.g. JMS messaging is often one-way messaging
      </li>
      <li>
        <b>InOut</b>&#160;- Request - response message - e.g. HTTP based transports, ...
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="Exchange ID" ID="ID_1242041401" CREATED="1513356657529" MODIFIED="1513356868715"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Unique exchange ID generated by Camel (if not set explicitly by the Application)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="MEP" ID="ID_617912188" CREATED="1513356691280" MODIFIED="1513356928723"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Pattern describing used messaging style (InOnly, InOut, ...)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Exception" ID="ID_605552871" CREATED="1513356695889" MODIFIED="1513356994856"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Set when an error occurs during routing.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Properties" ID="ID_177165330" CREATED="1513356711209" MODIFIED="1513357234872"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Similar to message headers, but lasting for the duration of the entire exchange.
    </p>
    <p>
      Are used to contain global-level information, where message headers are specific to particular message.
    </p>
    <p>
      Camel itself adds various properties during routing.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="In message" ID="ID_661138329" CREATED="1513356716737" MODIFIED="1513357263964"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Mandatory input (request) message.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Out message" ID="ID_1859189957" CREATED="1513356723993" MODIFIED="1513357315446"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Optional reply message existing only when MEP is InOut.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="1.4 Camel&apos;s architecture" ID="ID_339026008" CREATED="1513358296596" MODIFIED="1513364691742"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      At a high level, Camel is composed of
    </p>
    <ul>
      <li>
        <b>Routes</b>: Routes are defined using one of Camel's domain specific languages (DSLs)
      </li>
      <li>
        <b>Processors</b>: are used to transform and manipulate messages during routing and to implement all EIP patterns with corresponding keywords in the DSL languages
      </li>
      <li>
        <b>Components</b>: are extension points in Camel for adding connectivity to other systems. Components provide an endpoint interface.
      </li>
    </ul>
    <p>
      Which are all contained within the <b>CamelContext</b>.
    </p>
    <p>
      Routing engine uses routes as specifications for where messages are routed.
    </p>
  </body>
</html>
</richcontent>
<hook URI="Camel_Architecture.png" SIZE="1.0" NAME="ExternalObject"/>
<node TEXT="1.4.2 Camel concepts" ID="ID_1829067299" CREATED="1513359914826" MODIFIED="1513362479457">
<node TEXT="CamelContext" ID="ID_401659884" CREATED="1513359948378" MODIFIED="1513364704165"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      CamelContext is Camel's runtime, which keeps all pieces together.
    </p>
  </body>
</html>
</richcontent>
<hook URI="CamelContext.png" SIZE="1.0" NAME="ExternalObject"/>
<node TEXT="Components" ID="ID_1999937877" CREATED="1513360218307" MODIFIED="1513360596974"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Contains used components.
    </p>
    <p>
      Components can be loaded on the fly either by auto-discovery on the classpath or when a new bundle is activated in an OSGi container.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Endpoints" ID="ID_988807651" CREATED="1513360227419" MODIFIED="1513360375712"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Contains endpoints that have been created.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Routes" ID="ID_356668539" CREATED="1513360233147" MODIFIED="1513360398791"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Contains routes that have been added.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Type converters" ID="ID_947689500" CREATED="1513360237195" MODIFIED="1513360560487"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Contains loaded type converters which allow manually or automatically convert from one type to another.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Data formats" ID="ID_822626370" CREATED="1513360243731" MODIFIED="1513360568963"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Contains loaded data formats.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Registry" ID="ID_1305019196" CREATED="1513360609940" MODIFIED="1513360774076"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Contains registry allowing to look up beans.
    </p>
    <ul>
      <li>
        It's JNDI registry by default.
      </li>
      <li>
        If using Camel from Spring it's Spring ApplicationContext.
      </li>
      <li>
        it can also be OSGi registry when using Camel in OSGi container
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Languages" ID="ID_198001010" CREATED="1513360613868" MODIFIED="1513360823551"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Contains loaded languages. Camel allows to use many different languages to create expressions
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Routing engine" ID="ID_1354209908" CREATED="1513360844964" MODIFIED="1513360940689"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Routing engine actually moves messages under the hood. It is not exposed to the developer, but she should be aware of its existence.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Routes" ID="ID_591880659" CREATED="1513360945461" MODIFIED="1513361567475"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Routes are Camel's core abstraction.
    </p>
    <p>
      Simplest way to define a route is as a chain of processors.
    </p>
    <p>
      Here're some reasons for using routers / routes in messaging applications:
    </p>
    <ul>
      <li>
        dynamically decide what server a client will invoke
      </li>
      <li>
        provide a flexible way to add extra processing
      </li>
      <li>
        allow clients and servers to be developed independetly
      </li>
      <li>
        allow clients and servers to be stubbed out (using mocks) for testing purposes
      </li>
      <li>
        foster better design practices by connecting disparate systems which do one thing well
      </li>
      <li>
        enhance features and functionality of some systems (message brokers, ESBs, ...)
      </li>
    </ul>
    <p>
      Each route in Camel has a unique ID, that's used for logging, debugging, monitoring, starting and stopping routes.
    </p>
    <p>
      Route have exactly one input source, so it's effectively tied to an input endpoint.
    </p>
    <p>
      DSL is used for defining a route.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Domain-specific language (DSL)" ID="ID_876720111" CREATED="1513361575632" MODIFIED="1513362324549"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Camel defines a DSL to wire processors and endpoints together to form routes.
    </p>
    <p>
      In Camel, DSL means a fluent Java API that contains methods named for EIP terms. E.g.:
    </p>
    <p>
      
    </p>
    <pre>...
from(&quot;file:data/inbox&quot;)
    .filter().xpath(&quot;/order[not(@test)]&quot;)
    .to(&quot;jms:queue:order&quot;)
...</pre>
    <p>
      Here is defined a route that
    </p>
    <ol>
      <li>
        consumes files from a file endpoint.
      </li>
      <li>
        Messages are then routed to the filter EIP which uses an XPath to test whether the messages is a test order or not.
      </li>
      <li>
        If the message passes the test, it's forwarded to the JMS endpoint (messages failing the filter will be dropped)
      </li>
    </ol>
    <p>
      Camel provides multiple DSL languages, so the same route defined with the Spring DSL will look like this:
    </p>
    <p>
      
    </p>
    <pre>&lt;route&gt;
    &lt;from uri=&quot;file:data/inbox&quot;/&gt;
    &lt;filter&gt;
        &lt;xpath&gt;/order[not(@test)]&lt;/xpath&gt;
        &lt;to uri=&quot;jms:queue:order&quot;/&gt;
    &lt;/filter&gt;
&lt;/route&gt;</pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Processor" ID="ID_159602872" CREATED="1513362351002" MODIFIED="1513362775333"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Processor is a core Camel concept that represents a node capable of using, creating or modifying an incoming exchange.
    </p>
    <p>
      During routing exchanges flow from one processor to another, so route can be thought of as a graph of specialized interconnected nodes (processors) where many of them are implementations of EIPs, but custom processors can be implemented and added to route as well.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Component" ID="ID_1235506454" CREATED="1513362413641" MODIFIED="1513363046836"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Components are main extensions in Camel. There's over 80 of them implemented ATM and custom one can be implemented too.
    </p>
    <p>
      From programming point of view they are simply the scheme part of the route's URI and they act as factory of endpoints.
    </p>
    <p>
      E.g.: FileComponent is referred to by <b>file</b>&#160;in a URI and it creates FileEndpoints
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Endpoint" ID="ID_553882782" CREATED="1513362419538" MODIFIED="1513364858660"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Endpoint is the Camel abstraction that models the end of a channel through which a system can send or receive messages.
    </p>
    <p>
      Endpoints are configured via URIs in Camel:
    </p>
    <p>
      
    </p>
    <pre>file:data/inbox?delay=5000</pre>
    <img src="./Endpoint_URI.png"/>
    

    <ol>
      <li>
        The scheme part denotes which Camel component handles the type of endpoint (here it's FileComponent corresponding to the &quot;file:&quot; scheme), the FileComponent then works as a factory creating the FileEndpoint based on the remaining parts of the URI
      </li>
      <li>
        the &quot;data/inbox&quot; context path tells the FileComponent that the starting folder is &quot;data/inbox&quot;
      </li>
      <li>
        the option &quot;delay=5000&quot; indicates that files should be polled at a 5 second interval
      </li>
    </ol>
    <p>
      Here's the scheme of Endpoint connections and actions:
    </p>
    <p>
      <img src="./Endpoints_connections.png"/>
    </p>
  </body>
</html>
</richcontent>
<hook URI="Endpoint.png" SIZE="0.6615215" NAME="ExternalObject"/>
</node>
<node TEXT="Producer" ID="ID_1443378598" CREATED="1513362433450" MODIFIED="1513365236425"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Producer is Camel abstraction that refers to an entity capable of creating and sending a message to and endpoint.
    </p>
    <p>
      <img src="./Endpoints_connections.png"/>
      
    </p>
    <p>
      When a message needs to be sent to an endpoint, the producer will create and exchange and populate it with data compatible with the particular endpoint (e.g. FileProducer will write a message body to a file, JmsProducer will map the Camel message to a javax.jms.Message before sending it to a JMS destination)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Consumer" ID="ID_361531788" CREATED="1513362448994" MODIFIED="1513365604146"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Consumer is the service that receives messages produced by a producer, wraps them in an exchange and sends them to be processed.
    </p>
    <p>
      Consumers are the source of exchanges being routed in Camel.
    </p>
    <p>
      Consumer uses the endpoint, that wraps the payload being consumed, processor is then used to initiate the routing of the exchange in Camel using the routing engine.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Event-driven consumer" ID="ID_168858464" CREATED="1513362456106" MODIFIED="1513370349600" HGAP_QUANTITY="12.500000044703484 pt" VSHIFT_QUANTITY="2.9999999105930355 pt">
<hook URI="Event-driven_consumer.png" SIZE="0.8595989" NAME="ExternalObject"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Event-driven consumer is mostly associated with client-server architecture and web services, it's also referred to as an <b>asynchronous receiver</b>&#160;in the EIP world.
    </p>
    <p>
      Event-driven consumer listens on a particular messaging channel (usually TCP/IP port, JMS queue) and waits for a client to send messages to it.
    </p>
    <p>
      When message arrives consumer wakes up and takes the message for processing
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Polling consumer" ID="ID_406342466" CREATED="1513362488635" MODIFIED="1513370712020">
<hook URI="Polling_consumer.png" SIZE="0.87082726" NAME="ExternalObject"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Polling consumer actively checks and fetches messages from particular source (e.g. FTP server), it's also known as a <b>synchronous receiver</b>&#160;as it won't poll for more messages until it has finished processing the current message.
    </p>
    <p>
      Polling consumers are used by file, FTP, email transports.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="2. Routing with Camel" POSITION="right" ID="ID_397243158" CREATED="1513371465230" MODIFIED="1522144597115" TEXT_SHORTENED="true">
<edge COLOR="#ff00ff"/>
<hook URI="Routing.png" SIZE="1.0" NAME="ExternalObject"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      In Camel, routing is defined as
    </p>
    <ul>
      <li>
        <b>a step-by-step movement of the message, which originates from an endpoint in the role of a consumer</b>.
      </li>
    </ul>
    <p>
      The consumer could be receiving the message from an external service, polling for the message on some system, or even creating the message itself.
    </p>
    <ul>
      <li>
        <b>message then flows through a processing component</b>,
      </li>
    </ul>
    <p>
      which could be an enterprise integration pattern ( EIP ), a processor, an interceptor, or some other custom creation.
    </p>
    <ul>
      <li>
        <b>message is finally sent to a target endpoint that&#8217;s in the role of a producer.</b>
      </li>
    </ul>
    <p>
      A route may have many processing components that modify the message or send it to another location, or it may have none, in which case it would be a simple pipeline.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="2.2 Understanding endpoints" ID="ID_678416314" CREATED="1513372178199" MODIFIED="1513372193667">
<node TEXT="2.2.1 Working with files over FTP" ID="ID_297512615" CREATED="1513372408143" MODIFIED="1513372856134"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      To download new orders from the FTP server, you need to do the following:
    </p>
    <ol>
      <li>
        Connect to the rider.com FTP server on the default FTP port of 21
      </li>
      <li>
        Provide a username of &#8220;rider&#8221; and password of &#8220;secret&#8221;
      </li>
      <li>
        Change the directory to &#8220;orders&#8221;
      </li>
      <li>
        Download any new order file
      </li>
    </ol>
    <p>
      configure Camel to do this by using URI notation:
    </p>
    <ul>
      <li>
        <b>ftp://rider:secret@rider.com/orders</b>&#160;('username@password' format can be used for the FTP component (but might NOT work for other components though))
      </li>
      <li>
        <b>ftp://rider.com/orders?username=rider&amp;password=secret</b>
      </li>
    </ul>
    <p>
      That&#8217;s all you need to do to consume files from an FTP server.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="2.2.2 Sending to a JMS queue" ID="ID_317902613" CREATED="1513372857864" MODIFIED="1513372867315">
<node TEXT="What is JMS" ID="ID_404346870" CREATED="1513372888136" MODIFIED="1513373983049"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      JMS (Java Message Service) is a Java API that allows you to create, send, receive, and read messages.
    </p>
    <p>
      It also mandates that messaging is asynchronous and has specific elements of reliability, like guaranteed and once-and-only-once delivery.
    </p>
    <p>
      JMS is the de facto messaging solution in the Java community.
    </p>
    <p>
      In JMS, message consumers and producers talk to one another through an intermediary&#8212;a JMS destination.
    </p>
    <p>
      A destination can be either a <b>queue</b>&#160;or a <b>topic</b>.
    </p>
    <ul>
      <li>
        <b>Queues</b>&#160;are strictly point-to-point, where each message has only one consumer.
      </li>
      <li>
        <b>Topics</b>&#160;operate on a publish/subscribe scheme; a single message may be delivered to many consumers if they have subscribed to the topic.
      </li>
    </ul>
    <p>
      JMS also provides a <b>ConnectionFactory</b>&#160;that clients (like Camel) can use to create a connection with a <b>JMS provider</b>.
    </p>
    <p>
      <b>JMS providers</b>&#160;are usually referred to as <b>brokers</b>, because they manage the communication between a message producer and a message consumer.
    </p>
  </body>
</html>
</richcontent>
<hook URI="JMS_destinations.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="How to configure Camel to use a JMS provider" ID="ID_295830731" CREATED="1513373241377" MODIFIED="1513374106616"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      You need to configure Camel&#8217;s JMS component with an appropriate ConnectionFactory.
    </p>
    <p>
      In the case of Apache Active MQ , you can create an ActiveMQConnectionFactory that points to the location of the running Active MQ broker:
    </p>
    <pre>...
    ConnectionFactory connectionFactory = new ActiveMQConnectionFactory(&quot;vm://localhost&quot;);
    CamelContext context = new DefaultCamelContext();

    context.addComponent(&quot;jms&quot;,JmsComponent.jmsComponentAutoAcknowledge(connectionFactory));
...</pre>
    <p>
      The JMS component and the Active MQ -specific connection factory aren&#8217;t part of the camel-core module. So it must installed as a project dependency (in a Maven project like this):
    </p>
    <pre>...
    &lt;dependency&gt;
        &lt;groupId&gt;org.apache.camel&lt;/groupId&gt;
        &lt;artifactId&gt;camel-jms&lt;/artifactId&gt;
        &lt;version&gt;2.5.0&lt;/version&gt;
    &lt;/dependency&gt;
...
    &lt;dependency&gt;
        &lt;groupId&gt;org.apache.activemq&lt;/groupId&gt;
        &lt;artifactId&gt;activemq-core&lt;/artifactId&gt;
        &lt;version&gt;5.3.2&lt;/version&gt;
    &lt;/dependency&gt;
...</pre>
  </body>
</html>
</richcontent>
<font BOLD="false"/>
</node>
<node TEXT="Using URIs to specify the destination" ID="ID_1283325557" CREATED="1513374150044" MODIFIED="1513377582433"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Once the JMS component is configured, you can start sending and receiving JMS messages.
    </p>
    <p>
      To send a JMS message to the queue named <b>incomingOrders</b>&#160;the URI in this case would be
    </p>
    <pre>jms:queue:incomingOrders</pre>
    <p>
      Using Camel&#8217;s Java DSL , you can send a message to the incomingOrders queue by using the to keyword like this:
    </p>
    <pre>...to(&quot;jms:queue:incomingOrders&quot;)</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="2.3 Creating routes in Java" ID="ID_398725885" CREATED="1513374566698" MODIFIED="1513597431457">
<hook URI="RouteBuilder.png" SIZE="0.47021943" NAME="ExternalObject"/>
<node TEXT="2.3.1 Using the RouteBuilder" ID="ID_311932082" CREATED="1513377719550" MODIFIED="1513597431457" TEXT_SHORTENED="true"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      To use the <b>RouteBuilder</b>&#160;class, you extend a class from it and implement the configure method, like this:
    </p>
    <pre>      class MyRouteBuilder extends RouteBuilder {
          public void configure() throws Exception {
              ...
          }
      }

      CamelContext context = new DefaultCamelContext();
      context.addRoutes(new MyRouteBuilder());
    </pre>
    <p>
      Alternatively, you can combine the <b>RouteBuilder</b>&#160;and <b>CamelContext</b>&#160;configuration <u>by adding an anonymous RouteBuilder class directly into the CamelContext</u>, like this:
    </p>
    <pre>      CamelContext context = new DefaultCamelContext();
      context.addRoutes(new RouteBuilder() {
          public void configure() throws Exception {
              ...
          }
      });
    </pre>
    <p>
      Within the configure method, you define your routes using the Java DSL .
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="2.3.2 The Java DSL" ID="ID_1810530508" CREATED="1513529137267" MODIFIED="1513596614670"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Domain-specific languages (DSLs) are computer languages that target a specific problem domain.
    </p>
    <p>
      For example, <u>regular expression DSL</u>&#160;for matching strings - <u>regular expression DSL is an <b>external DSL</b></u>&#160;&#8212;it has a <u>custom syntax</u>&#160;and so <u>requires a separate compiler</u>&#160;or interpreter <u>to execute</u>.
    </p>
    <p>
      <b>Internal DSL</b>s, <u>use an existing general purpose language</u>, such as Java, in such a way <u>that the DSL feels like a language from a particular domain</u>.
    </p>
    <ul>
      <li>
        The most obvious way of doing this is <b>by naming methods and arguments to match concepts from the domain</b>&#160;in question.
      </li>
      <li>
        Another popular way of implementing internal DSLs is <b>by using fluent interfaces</b>&#160;(aka fluent builders).
      </li>
    </ul>
    <p>
      <b>Camel&#8217;s domain is enterprise integration</b>, so the <b>Java DSL is a set of fluent interfaces that contain methods named after terms from the EIP book</b>.
    </p>
    <p>
      
    </p>
    <pre><code class="java">import javax.jms.ConnectionFactory;
import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.camel.CamelContext;
import org.apache.camel.builder.RouteBuilder;
import org.apache.camel.component.jms.JmsComponent;
import org.apache.camel.impl.DefaultCamelContext;

public class FtpToJMSExample {
    
    public static void main(String args[]) throws Exception {
        
        CamelContext context = new DefaultCamelContext();
        ConnectionFactory connectionFactory = new ActiveMQConnectionFactory(&quot;vm://localhost&quot;);
        
        context.addComponent(&quot;jms&quot;, JmsComponent.jmsComponentAutoAcknowledge(connectionFactory));
        
        context.addRoutes(new RouteBuilder() {
            public void configure() {
                from(&quot;ftp://rider.com/orders?username=rider&amp;password=secret&quot;)
                .to(&quot;jms:incomingOrders&quot;);
            }
        });
        
        context.start();
        Thread.sleep(10000);
        context.stop();
    }
}</code>
</pre>
    <p>
      The actual solution to the problem is concisely defined within the <u><i>configure</i></u>&#160;method as a single Java statement:
    </p>
    <ul>
      <li>
        from method tells Camel to consume messages from an FTP endpoint
      </li>
      <li>
        the to method instructs Camel to send messages to a JMS endpoint
      </li>
    </ul>
  </body>
</html>
</richcontent>
<hook URI="Message_Flow.png" SIZE="1.0" NAME="ExternalObject"/>
<node TEXT="Adding a Processor" ID="ID_1438845777" CREATED="1513596685367" MODIFIED="1513597617496"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Processor</b></i>&#160;interface in Camel is an important building block of complex routes. It&#8217;s a simple interface, having a single method:
    </p>
    <pre>    public void process(Exchange exchange) throws Exception;</pre>
    <p>
      This gives you full access to the message exchange, letting you do whatever you want with the payload or headers.
    </p>
    <p>
      All EIPs in Camel are implemented as processors.
    </p>
    <p>
      You can add a simple processor to your route inline, like so:
    </p>
    <p>
      
    </p>
    <pre>    from(&quot;ftp://rider.com/orders?username=rider&amp;password=secret&quot;)
    .process(new Processor() {
        public void process(Exchange exchange) throws Exception {
            System.out.println(&quot;We just downloaded: &quot;
                + exchange.getIn().getHeader(&quot;CamelFileName&quot;));
            }
        })
    .to(&quot;jms:incomingOrders&quot;);</pre>
  </body>
</html>
</richcontent>
<hook URI="Route_With_Processor.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="2.4 Creating routes with Spring" ID="ID_493603657" CREATED="1513597644516" MODIFIED="1513597657975"/>
</node>
</node>
<node TEXT="7. Understanding components" FOLDED="true" POSITION="right" ID="ID_626701461" CREATED="1513381515569" MODIFIED="1513381543643">
<edge COLOR="#00ffff"/>
<node TEXT="7.7 In-memory messaging (Direct, SEDA and VM components" ID="ID_395593588" CREATED="1513381545049" MODIFIED="1513381747062"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      3 main components for handling in-memory messaging.
    </p>
    <ul>
      <li>
        <b>Direct</b>&#160;for synchronous messaging
      </li>
      <li>
        <b>SEDA</b>&#160;for asynchronous messaging
      </li>
      <li>
        <b>VM</b>&#160;for asynchronous messaging
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="7.7.1 Synchronous messaging with the Direct component" ID="ID_451508053" CREATED="1513381754298" MODIFIED="1513424408399"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Simple and useful (probably most common). Direct endpoint URI looks like this:
    </p>
    <pre>direct:endpointName</pre>
    <p>
      No options to specify, only the endpoint name.
    </p>
    <p>
      The Direct component lets you make a synchronous call to a route or, conversely, expose a route as a synchronous service.
    </p>
    <p>
      So sending a message to the following route:
    </p>
    <pre>...
from(&quot;direct:startOrder&quot;).to(&quot;cxf:bean:orderEndpoint&quot;);
...</pre>
    will invoke a web service defined by the &quot;orderEndpoint&quot; CXF endpoint bean. When sending a message to this endpoint via the ProducerTemplate as follows:

    <pre>...
String reply = template.requestBody(&quot;direct:startOrder&quot;, params, String.class);
...</pre>
    The <b>ProducerTemplate</b>&#160;will create (under the hood) a Producer that sends to the direct:startOrder endpoint. In most other components, some processing happens in between the producer and the consumer, but <b>the Direct component's <u>producer calls the consumer directly</u></b>.

    <p>
      Only overhead of using the Direct component is a method call.
    </p>
    <p>
      This simplicity and minimal overhead make the Direct component a great way of starting routes and synchronously breaking up routes into multiple pieces.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="7.7.2 Asynchronous messaging with SEDA and VM" ID="ID_1512460706" CREATED="1513424414987" MODIFIED="1513424437333"/>
</node>
</node>
<node TEXT="8. Enterprise integration patterns" POSITION="right" ID="ID_465430374" CREATED="1522220795136" MODIFIED="1522220815201">
<edge COLOR="#00007c"/>
<node TEXT="8.1. Introducing EIPs" ID="ID_407638760" CREATED="1522220965541" MODIFIED="1522220980206">
<node TEXT="8.1.1. The Aggregator and Splitter EIPs" ID="ID_1712790243" CREATED="1522221079101" MODIFIED="1522221626231">
<hook URI="Aggregator_And_Splitter_EIPs.png" SIZE="0.55197793" NAME="ExternalObject"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      * <b>The Splitter</b>&#160;can split out a single message to multiple submessages
    </p>
    <p>
      * <b>The Aggregator</b>&#160;can combine submessages back into a single message
    </p>
    <p>
      They are opposite patterns.
    </p>
    <p>
      The Aggregator is most sophisticated and advanced EIP implemented in Camel. It has many use cases such as: aggregating incoming bids for auctions, throttling stock quotes, ...
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="8.1.2. The Routing Slip and Dynamic Router EIPs" ID="ID_328919193" CREATED="1522221627446" MODIFIED="1522221644929"/>
<node TEXT="8.1.3. The LoadBalancer EIP" ID="ID_1198133100" CREATED="1522221707581" MODIFIED="1522221720425"/>
</node>
<node TEXT="8.2. The Aggregator EIP" ID="ID_966292418" CREATED="1522221674734" MODIFIED="1522255228817"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The Aggregator EIP is important and complex.
    </p>
    <p>
      The Aggregator combines many related incoming messages into a single aggregated message. Once a completion condition occurs, the aggregated message is sent to the output channel for further processing.
    </p>
    <p>
      When using the Aggregator, three configuration settings must be configured:
    </p>
    <p>
      * <b>Correlation identifier</b>: <i>Expression</i>&#160;which determines which incoming messages belong together.
    </p>
    <p>
      * <b>Completion condition</b>: <i>Predicate</i>&#160;or time based condition that determines when the result message should be sent aka. is complete
    </p>
    <p>
      * <b>Aggregation strategy</b>: <i>AggregationStrategy</i>&#160;that specifies how to combine the messages into a single message
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<hook URI="Aggregator_EIP.png" SIZE="0.62761503" NAME="ExternalObject"/>
<node TEXT="8.2.1. Introducing the Aggregator EIP" ID="ID_364863955" CREATED="1522255246374" MODIFIED="1522260825805">
<hook URI="Aggregator_EIP_In_Action.png" SIZE="0.44843048" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="5. Error handling" POSITION="left" ID="ID_1692174477" CREATED="1522836191264" MODIFIED="1522836229632" HGAP_QUANTITY="8.00000017881393 pt" VSHIFT_QUANTITY="11.249999664723884 pt">
<edge COLOR="#007c00"/>
<node TEXT="5.1. Understanding error handling" ID="ID_46118301" CREATED="1522836259703" MODIFIED="1522836267915">
<node TEXT="5.1.1. Recoverable and irrecoverable errors" ID="ID_1452424138" CREATED="1522836271663" MODIFIED="1523009259642"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <i>irrecoverable error</i>&#160;- error that remains error even when the same action is performed again and again (e.g. trying to access database table which would case the SQLException thrown by the JDBC driver) - <b>in Camel this is represented as a message with a fault flag accessible on <i>org.apache.camel.Exchange</i></b>&#160;as following:

        <pre><code class="java">Message msg = Exchange.getOut();
msg.setFault(true); // This sets a fault flag
msg.setBody(&quot;Unknown customer&quot;);</code>
</pre>
      </li>
      <li>
        <i>recoverable error</i>&#160;- temporary error that might not cause problem on the next attempt (e.g. temporary problem with network connection) - <b>in Camel this is represented as a plain <i>Throwable</i>&#160;or <i>Exception</i>&#160;that is accessible on <i>org.apache.camel.Exchange</i>&#160;using its accessors</b>:

        <pre><code class="java">void setException(Throwable cause); // Note: this accepts Throwable type but ...
Exception getException(); // ... this returns Exception</code>
</pre>
      </li>
    </ul>
    <p>
      But this division is not encountered often in a daily life of a Java developer. Error handling generally uses one of the two following patterns:
    </p>
    <ul>
      <li>
        <b>common error handling idiom</b>, where <b>all exceptions are considered unrecoverable</b>&#160;and further <b>processing is given up immediately</b>:

        <pre><code class="java">public void handleOrder(Order order) throws OrderFailedException {
    try {
        service.sendOrder(order);
    } catch (Exception e) {
        throw new OrderFailedException(e);
    }
}
	</code>
	</pre>
      </li>
      <li>
        same as previous but with <b>some logic&#160;added in order to retry message delivery</b>:

        <pre><code class="java">public void handleOrder(Order order) throws OrderFailedException {
    boolean done = false;
    int retries = 5; // Number of retry attempts
    while (!done) {
        try {
            service.sendOrder(order);
            done = true;
        } catch (Exception e) {
            if (--retries == 0) {
                throw new OrderFailedException(e);
            }
        }
    }
}
	</code>
	</pre>
      </li>
    </ul>
    <p>
      There are two reasons for different representation of these two types of error:
    </p>
    <ul>
      <li>
        Camel API is designed around the <i>Java Business Integration</i>&#160;specification (JBI), which includes a fault message concept
      </li>
      <li>
        Camel has error handling built into its core - <b>whenever an exception is thrown back to Camel, it catches it and sets the thrown exception on the Exchange as a recoverable error</b>&#160;like this:

        <pre><code class="java">try {
    processor.process(exchange);
} catch (Throwable e) {
    exchange.setException(e);
}</code>
</pre>
      </li>
    </ul>
  </body>
</html>

</richcontent>
<hook URI="Ir-recoverable_errors.png" SIZE="0.46189377" NAME="ExternalObject"/>
</node>
<node TEXT="5.1.2. Where Camel&apos;s errors handling applies" ID="ID_1493203651" CREATED="1522836299727" MODIFIED="1522836316880"/>
</node>
<node TEXT="5.2. Error handlers in Camel" ID="ID_132950966" CREATED="1522836332447" MODIFIED="1522836350777">
<node TEXT="5.2.1. The default error handler" ID="ID_618415679" CREATED="1522836355007" MODIFIED="1522836362986"/>
<node TEXT="5.2.2. The dead letter channel error handler" ID="ID_11437912" CREATED="1522836366567" MODIFIED="1522836381802"/>
<node TEXT="5.2.3. The transaction error handler" ID="ID_1334183543" CREATED="1522836385624" MODIFIED="1522836399618"/>
<node TEXT="5.2.4. The no error handler" ID="ID_1254683973" CREATED="1522836404127" MODIFIED="1522836412378"/>
<node TEXT="5.2.5. The logging error handler" ID="ID_1937293690" CREATED="1522836414239" MODIFIED="1522836428418"/>
<node TEXT="5.2.6. Features of the error handlers" ID="ID_1263103273" CREATED="1522836431319" MODIFIED="1522836447570"/>
</node>
</node>
<node TEXT="6. Testing with Camel" POSITION="left" ID="ID_1796505626" CREATED="1522144617384" MODIFIED="1522144624866">
<edge COLOR="#7c0000"/>
<node TEXT="6.1. Introducing the Camel Test Kit" ID="ID_1245066576" CREATED="1522145052188" MODIFIED="1522145070527">
<node TEXT="6.1.2. Using the Camel Test Kit" ID="ID_1556264972" CREATED="1522144932029" MODIFIED="1522144946761"/>
<node TEXT="6.1.3. Unit testing with the CamelTestSupport class" ID="ID_964512243" CREATED="1522145534504" MODIFIED="1522145581522"/>
<node TEXT="6.1.4. Unit testing an existing RouteBuilder  class" ID="ID_1955369174" CREATED="1522145586064" MODIFIED="1522145596218"/>
<node TEXT="6.1.5. Unit testing with the SpringCamelTestSupport class" ID="ID_1504697758" CREATED="1522145639216" MODIFIED="1522145654258"/>
</node>
<node TEXT="6.2. Using the Mock component" ID="ID_1196473030" CREATED="1522145873007" MODIFIED="1523090632226"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Makes testing much easier.
    </p>
    <p>
      Useful in these situations:
    </p>
    <ul>
      <li>
        when real component does not exist or is not reachable in development and test phases
      </li>
      <li>
        when real component is slow or requires much effort to set up and initialize (such as a database)
      </li>
      <li>
        when a special logic would have to be incorporated into the real component, which would be impractical or impossible
      </li>
      <li>
        when the component returns nondeterministic results such as the current time
      </li>
      <li>
        when simulating errors is needed
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node TEXT="6.2.1. Introducing the Mock component" ID="ID_511985920" CREATED="1522146109321" MODIFIED="1523091882715">
<hook URI="Mock_Component_Three_Steps_For_Testing.png" SIZE="0.51502144" NAME="ExternalObject"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Three basic (general) testing steps are:
    </p>
    <ol>
      <li>
        set expectations of what should happen
      </li>
      <li>
        run the the test
      </li>
      <li>
        verify outcome of the test against the expectations
      </li>
    </ol>
    <p>
      The Camel Mock component allows to set expectations on <b>mock endpoints</b>&#160;that are used to verify the test results.
    </p>
    <p>
      Mock components can verify variety of expectations:
    </p>
    <ul>
      <li>
        that correct number of messages are received
      </li>
      <li>
        that message arrive in correct order
      </li>
      <li>
        that correct payloads are received
      </li>
      <li>
        that the test ran within the expected time period
      </li>
    </ul>
  </body>
</html>

</richcontent>
</node>
<node TEXT="6.2.2. Unit testing with the Mock component" ID="ID_1339418369" CREATED="1522146126057" MODIFIED="1522146139043"/>
</node>
</node>
</node>
</map>
