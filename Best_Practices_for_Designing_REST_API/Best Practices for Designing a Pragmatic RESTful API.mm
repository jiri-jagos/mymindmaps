<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Best Practices for Designing a Pragmatic RESTful API" FOLDED="false" ID="ID_362858167" CREATED="1516273059105" MODIFIED="1522836158239" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="22" RULE="ON_BRANCH_CREATION"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      @author: Vinay Sahni
    </p>
    <p>
      
    </p>
    <p>
      http://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api
    </p>
  </body>
</html>

</richcontent>
<node TEXT="An API is a user interface for a developer - so put some effort into making it pleasant" POSITION="right" ID="ID_1971141512" CREATED="1516273239400" MODIFIED="1516273998758">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        use web standards where they <b>make sense</b>
      </li>
      <li>
        developer friendly and explorable via browser address bar
      </li>
      <li>
        simple, intuitive and consistent SIC! - not only easy but pleasant
      </li>
      <li>
        enough flexibility
      </li>
      <li>
        efficient while maintaining balance with other requirements
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Use RESTful URLs and actions" POSITION="left" ID="ID_1525867574" CREATED="1516273441778" MODIFIED="1516274232094">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      One thing that gained wide adoption is RESTful principles - see <a href="http://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm" target="_blank">Chapter 5</a>&#160;of the Roy Fielding's <a href="http://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm" target="_blank">dissertation on network based software architectures </a>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="REST principles" ID="ID_75332977" CREATED="1516274232084" MODIFIED="1516284963850"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <h2>
      Key principles of <a href="https://en.wikipedia.org/wiki/Representational_state_transfer" target="_blank">REST</a>
    </h2>
    Involve separating the API into <b>logical resources</b>&#160;which are manipulated using HTTP requests where the method (GET, POST, PUT, PATCH, DELETE) has specific meaning.

    <p>
      Resources should be <a href="https://blog.apigee.com/detail/restful_api_design_nouns_are_good_verbs_are_bad" target="_blank">nouns (not verbs)</a>&#160;which make sense from the perspective of the API consumer.
    </p>
    <p>
      The key is to <b>not leak irrelevant implementation details</b>&#160;out to the API.
    </p>
    <p>
      Once resources are defined, the need to be connected to their respective actions. RESTful principles provide strategies to handle <a href="http://en.wikipedia.org/wiki/Create,_read,_update_and_delete">CRUD</a>&#160;actions using HTTP methods
    </p>
    <ul>
      <li>
        GET /tickets - retrieve a list of tickets
      </li>
      <li>
        GET /tickets/12 - retrieve a specific ticket
      </li>
      <li>
        POST /tickets - create a new ticket
      </li>
      <li>
        PUT /tickets/12 - updates specific tickets
      </li>
      <li>
        PATH /tickets/12 - partially updates specific ticket
      </li>
      <li>
        DELETE /tickets/12 - deletes specific ticket
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Endpoint names in singular or plural?" ID="ID_1523379343" CREATED="1516284906605" MODIFIED="1516284920377"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Endpoints name should embrace the KISS rule: pragmatic answer is to <b>keep the endpoint names in plural </b>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="How to deal with relations?" ID="ID_1027352295" CREATED="1516284934877" MODIFIED="1516284954829"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      If a relation can only exist within another resource, RESTful principles provide guidance - e.g. assume that `conversation` consists of a number of `message`s (One To Many relation) so they can be logically mapped to the corresponding `conversation`:
    </p>
    <ul>
      <li>
        GET /conversations/12/messages - list of messages for conversation 12
      </li>
      <li>
        GET /conversations/12/messages/5 - specific message of&#160;conversation 12
      </li>
      <li>
        POST&#160;/conversations/12/messages - creates a new message in&#160;conversation 12
      </li>
      <li>
        PUT /conversations/12/messages/5 -&#160;updates message 5 in&#160;conversation 12
      </li>
      <li>
        PATCH /conversations/12/messages/5 - updates message 5 in&#160;conversation 12
      </li>
      <li>
        DELETE /conversations/12/messages/5 - deletes message 5 in&#160;conversation 12
      </li>
    </ul>
    <p>
      Alternatively, if a relation can exist independently of the resource (typically Many To Many relations), it makes sense to create an API resource for it. API consumer would hit the relation's endpoint.
    </p>
    <p>
      However if the relation is usually requested along with the related resource, the API should provide functionality to automatically embed the relations representation(s) to avoid multiple API hits.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Actions that don&apos;t fit in the CRUD" ID="ID_1305764693" CREATED="1516284972198" MODIFIED="1516285610787"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      There's a number of approaches:
    </p>
    <ul>
      <li>
        restructure the action so it appears like a field of a resource (works if action does not take parameters): e.g. `activate` action could be mapped to an `activated` boolean field and updated via PATCH to the resource
      </li>
      <li>
        treat the action as a sub-resource with RESTful principles: e.g. Gihub's API lets you <a href="http://developer.github.com/v3/gists/#star-a-gist" target="_blank">star a gist</a>&#160;with PUT /gists/:gistId/star&#160;and <a href="http://developer.github.com/v3/gists/#unstar-a-gist" target="_blank">unstar it</a>&#160;with DELETE /gists/:gistId/star
      </li>
      <li>
        sometimes there's no way to map the action to a sensible RESTful structure: e.g. multi-resource search does not make sense to be mapped to a specific resource's endpoint. In such case /search will make the most sense even though it isn't a resource. It's OK as long as it does the expected thing from the API consumer view and is thoroughly documented
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Use SSL everywhere, no exceptions" POSITION="right" ID="ID_1693407414" CREATED="1516273482050" MODIFIED="1516285900481">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Always use SSL without exceptions for:
    </p>
    <ul>
      <li>
        security reasons (prevent eavesdropping or impersonation of the communication)
      </li>
      <li>
        simplified authentication - no need to sign each API request, simple access tokens can be used
      </li>
    </ul>
    <p>
      Watch out non-SSL access to API URLs - do not redirect them to their SSL counterparts, but throw a severe exception
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="An API is only as good as its documentation - so have great documentation" POSITION="left" ID="ID_1723404577" CREATED="1516273494298" MODIFIED="1516286302990">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Docs should:
    </p>
    <ul>
      <li>
        be easy to find
      </li>
      <li>
        be publicly accessible
      </li>
      <li>
        show examples (preferably copy &amp; paste) of complete request / response cycle, it should be possible to paste links (paths) directly to the browser or curl examples to a terminal. See <a href="http://developer.github.com/v3/gists/#list-gists" target="_blank">Github</a>&#160;or <a href="https://stripe.com/docs/api" target="_blank">Stripe</a>
      </li>
    </ul>
    <p>
      <b>Once there's public API version released, its maintainer is commited to not break things without notice.</b>&#160;So the documentation must contain deprecation schedules and details covering externally visible API updates.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Version via the URL, not via headers" POSITION="right" ID="ID_1502113156" CREATED="1516273504554" MODIFIED="1516308432869">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Always version the API.
    </p>
    <p>
      It simplifies development and helps faster iteration.
    </p>
    <p>
      In regards to the API versioning there are <a href="http://stackoverflow.com/questions/389169/best-practices-for-api-versioning" target="_blank">mixed opinions</a>&#160;out there. Academically speaking it probably should be kept in header, but to satisfy requirement for having an API explorable via URLs it has to be in the URL also.
    </p>
    <p>
      Good example is <a href="https://stripe.com/docs/api#versioning" target="_blank">Stripe approach to API versioning</a>&#160;where there's a <b>major version in the URL</b>&#160;(&quot;v1&quot;) and the <b>API provides date based sub-versions</b>&#160;which can be <b>chosen using a custom HTTP request header</b>. This approach offers structural stability of the API as a whole while the sub-versions accounts for smaller changes.
    </p>
    <p>
      An API is never going to be completely stable, change is inevitable. Important is how the change is managed.
    </p>
    <p>
      Well documented and announced multi-month deprecation schedules can be acceptable practice for many APIs.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Use query parameters for advanced filtering, sorting &amp; searching" POSITION="left" ID="ID_700649731" CREATED="1516273514026" MODIFIED="1516308552906">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      It's best to keep base resource URLs as lean as possible.
    </p>
    <p>
      Complex result filters, sorting, searching (restricted to a single resource) can be implemented as query string parameters on top of the base URL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Filtering" ID="ID_1591028696" CREATED="1516308627939" MODIFIED="1516309089016"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Use unique query parameter for each field that implements filtering.
    </p>
    <p>
      E.g.: when requesting list of tickets from /tickets endpoint you may want to limit them by their &quot;state&quot;. It can be accomplished with request like
    </p>
    <ul>
      <li>
        GET /tickets?state=open
      </li>
    </ul>
    <p>
      where &quot;state&quot; is parameter that implements a filter
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Sorting" ID="ID_1077868154" CREATED="1516308899180" MODIFIED="1516309186386"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Similar to filtering, generic parameter &quot;sort&quot; can be used to describe sorting rules.
    </p>
    <p>
      Complex sorting requirements can be accommodated by letting the sort parameter accept list of comma separated fields each with possible unary negative, which would imply descending sort order.
    </p>
    <p>
      E.g.
    </p>
    <ul>
      <li>
        GET /tickets?sort=-priority - sorts tickets by priority DESC
      </li>
      <li>
        GET /tickets?sort=-priority,created_at - sorts tickets by priority DESC, created_at ASC
      </li>
    </ul>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Searching" ID="ID_324576710" CREATED="1516309187532" MODIFIED="1516309342728"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Sometimes basic filters aren't enough and you need the power of full text search. Perhaps you're already using ElasticSearch or another Lucene based search technology.
    </p>
    <p>
      When full text search is used as a mechanism of retrieving resource instances for a specific type of resource, it can be exposed on the API as a query parameter on the resource's endpoint.
    </p>
    <p>
      Let's say q. Search queries should be passed straight to the search engine and API output should be in the same format as a normal list result.
    </p>
    <p>
      
    </p>
    <p>
      Combining these together, we can build queries like:
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#160;&#160;&#160;&#160;GET /tickets?sort=-updated_at - Retrieve recently updated tickets
      </li>
      <li>
        &#160;&#160;&#160;&#160;GET /tickets?state=closed&amp;sort=-updated_at - Retrieve recently closed tickets
      </li>
      <li>
        &#160;&#160;&#160;&#160;GET /tickets?q=return&amp;state=open&amp;sort=-priority,created_at - Retrieve the highest priority open tickets mentioning the word 'return'
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Aliases for common queries" ID="ID_253020227" CREATED="1516309426341" MODIFIED="1516309465056"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      To make the API experience more pleasant for the average consumer, consider <b>packaging up sets of conditions into easily accessible RESTful paths</b>.
    </p>
    <p>
      For example, the recently closed tickets query above could be packaged up as
    </p>
    <ul>
      <li>
        GET /tickets/recently_closed
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Provide a way to limit which fields are returned from the API" POSITION="right" ID="ID_974426713" CREATED="1516273528330" MODIFIED="1516309635992">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The API consumer doesn't always need the full representation of a resource.
    </p>
    <p>
      The ability select and chose returned fields goes a long way in letting the API consumer minimize network traffic and speed up their own usage of the API.
    </p>
    <p>
      Use a &quot;fields&quot; query parameter that takes a comma separated list of fields to include.
    </p>
    <p>
      For example, the following request would retrieve just enough information to display a sorted listing of open tickets:
    </p>
    <ul>
      <li>
        GET /tickets?fields=id,subject,customer_name,updated_at&amp;state=open&amp;sort=-updated_at
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Return something useful from POST, PATCH &amp; PUT requests" POSITION="left" ID="ID_1843813129" CREATED="1516273539562" MODIFIED="1516273541629">
<edge COLOR="#007c00"/>
</node>
<node TEXT="HATEOAS isn&apos;t practical just yet" POSITION="right" ID="ID_1820004" CREATED="1516273551434" MODIFIED="1516273553677">
<edge COLOR="#7c007c"/>
</node>
<node TEXT="Use JSON where possible, XML only if you have to" POSITION="left" ID="ID_1537943942" CREATED="1516273562602" MODIFIED="1516273564429">
<edge COLOR="#007c7c"/>
</node>
<node TEXT="You should use camelCase with JSON, but snake_case is 20% easier to read" POSITION="right" ID="ID_554554020" CREATED="1516273574322" MODIFIED="1516273576829">
<edge COLOR="#7c7c00"/>
</node>
<node TEXT="Pretty print by default &amp; ensure gzip is supported" POSITION="left" ID="ID_1913195050" CREATED="1516273588955" MODIFIED="1516273591237">
<edge COLOR="#ff0000"/>
</node>
<node TEXT="Don&apos;t use response envelopes by default" POSITION="right" ID="ID_1770179898" CREATED="1516273597986" MODIFIED="1516273599733">
<edge COLOR="#0000ff"/>
</node>
<node TEXT="Consider using JSON for POST, PUT and PATCH request bodies" POSITION="left" ID="ID_1425409733" CREATED="1516273607026" MODIFIED="1516273608189">
<edge COLOR="#00ff00"/>
</node>
<node TEXT="Paginate using Link headers" POSITION="right" ID="ID_927473186" CREATED="1516273615395" MODIFIED="1516273616469">
<edge COLOR="#ff00ff"/>
</node>
<node TEXT="Provide a way to autoload related resource representations" POSITION="left" ID="ID_725359395" CREATED="1516273624371" MODIFIED="1516273625844">
<edge COLOR="#00ffff"/>
</node>
<node TEXT="Provide a way to override the HTTP method" POSITION="right" ID="ID_1901894777" CREATED="1516273634963" MODIFIED="1516273639997">
<edge COLOR="#7c0000"/>
</node>
<node TEXT="Provide useful response headers for rate limiting" POSITION="left" ID="ID_966208039" CREATED="1516273652107" MODIFIED="1516273654069">
<edge COLOR="#00007c"/>
</node>
<node TEXT="Use token based authentication, transported over OAuth2 where delegation is needed" POSITION="right" ID="ID_1057448113" CREATED="1516273670051" MODIFIED="1516273671997">
<edge COLOR="#007c00"/>
</node>
<node TEXT="Include response headers that facilitate caching" POSITION="left" ID="ID_1299671771" CREATED="1516273679027" MODIFIED="1516273680925">
<edge COLOR="#7c007c"/>
</node>
<node TEXT="Define a consumable error payload" POSITION="right" ID="ID_811138543" CREATED="1516273688744" MODIFIED="1516273688744">
<edge COLOR="#007c7c"/>
</node>
<node TEXT="Effectively use HTTP Status codes" POSITION="left" ID="ID_1029854749" CREATED="1516273698258" MODIFIED="1516273701452">
<edge COLOR="#7c7c00"/>
</node>
</node>
</map>
