<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1368622273645" ID="ID_1310544137" MODIFIED="1368622285052" TEXT="ElasticSearch Server">
<node CREATED="1368622314755" ID="ID_1936492349" MODIFIED="1368622321663" POSITION="right" TEXT="2. Searching your data">
<node CREATED="1368651454967" ID="ID_794450864" MODIFIED="1368653371075" TEXT="Understanding the querying and indexing process">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <b>Indexing</b>: process of preparing the document sent to ElasticSearch and storing it in the index
      </li>
      <li>
        <b>Searching</b>: process of matching the documents that satisfy search query requirements
      </li>
      <li>
        <b>Analysis</b>: process of preparing of the field content and converting it to terms so it can be written into the Lucene index. During indexing&#160;&#160;the data in fields is divided into stream of tokens (words) which are written into the index as terms (tokens with additional information: position in the input text, ...). Analysis can consist of following steps:

        <ul>
          <li>
            <b>Tokenization</b>: input text is turned into token stream by the tokenizer during this stage
          </li>
          <li>
            <b>Filtering</b>: zero or more filters can process tokens in the token stream. E.g. stopwords filter can remove irrelevant tokens, synonyms filter can add new tokens or change existing and the lowercase filter will make all tokens lowercase.
          </li>
        </ul>
      </li>
      <li>
        <b>Analyzer</b>: is single tokenizer with zero or more filters. We can specify analyzers when working with fields, types and queries.
      </li>
    </ul>
    <p>
      Analysis process just discussed is used during searching and indexing and both index-time analysis and query time analysis can be configured differently. It's important that the terms produced during index and query time match, because if they don't, we'll have to find the documents manually. E.g. If stemming is used during indexing but not while searching, we'll have to pass stemmed words to the search query in order to find the documents.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368651475407" ID="ID_753416788" MODIFIED="1368689205642" TEXT="Mappings">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This mappings will be used for the rest of the 2nd chapter:
    </p>
    <p>
      
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&quot;book&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;_index&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;enabled&quot; : true
    </p>
    <p>
      &#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;_id&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;index&quot;: &quot;not_analyzed&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;store&quot; : &quot;yes&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;properties&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;author&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot; : &quot;string&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;characters&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot; : &quot;string&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;copies&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot; : &quot;long&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;ignore_malformed&quot; : false
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;otitle&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot; : &quot;string&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;tags&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot; : &quot;string&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;title&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot; : &quot;string&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;year&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot; : &quot;long&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;ignore_malformed&quot; : false,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;index&quot; : &quot;analyzed&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;available&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot; : &quot;boolean&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;index&quot; : &quot;analyzed&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<node CREATED="1368651482311" ID="ID_1250393072" MODIFIED="1368689205834" TEXT="Data">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      These data will be used for the rest of the 2nd chapter:
    </p>
    <p>
      
    </p>
    <pre></pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1368651490663" ID="ID_923186511" MODIFIED="1368822298115" TEXT="Querying ElasticSearch">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We talk to <i>ES</i>&#160;with the REST API using HTTP request containing JSON-structured data.
    </p>
    <p>
      
    </p>
    <p>
      When we want to send more than a simple query we do it same way - we structure it using JSON object and send it to <i>ES</i>. This is called <b>Query DSL</b>.
    </p>
    <p>
      
    </p>
    <p>
      <i>ES</i>&#160;supports two kinds of queries:
    </p>
    <ul>
      <li>
        <b>basic</b>: are used just for querying (such as term query)
      </li>
      <li>
        <b>compound</b>&#160;can combine multiple queries (such as the bool query)
      </li>
    </ul>
    <p>
      In addition to these two types, our queries can have <b>filter queries</b>&#160; which are used to narrow result by certain criteria.
    </p>
  </body>
</html></richcontent>
<node CREATED="1368651517783" ID="ID_918815408" MODIFIED="1368840675785" TEXT="Simple query">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The simplest way to query <i>ES</i>&#160;is to use URI request query.
    </p>
    <p>
      
    </p>
    <p>
      E.g.: we want to search for the word &quot;crime&quot; in the title field:
    </p>
    <p>
      
    </p>
    <p>
      <b>curl -XGET 'localhost:9200/library/book/_search?q=title:crime&amp;pretty=true' </b>
    </p>
    <p>
      
    </p>
    <p>
      From Query DSL point of view
    </p>
    <p>
      
    </p>
    <p>
      Simplest query is the <b>term</b>&#160;query which searches for given term in a given field (Term query is not analyzed and thus we have to provide exact term we're searching for)
    </p>
    <p>
      
    </p>
    <pre>{
  &quot;query&quot; : {
    &quot;term&quot; : { &quot;title&quot; : &quot;crime&quot; }
  }
}</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1368651526071" ID="ID_1854474302" MODIFIED="1368651534084" TEXT="Paging and results size"/>
<node CREATED="1368651537567" ID="ID_1800598811" MODIFIED="1368651543220" TEXT="Returning the version"/>
<node CREATED="1368651546575" ID="ID_1521105849" MODIFIED="1368651554717" TEXT="Limiting the score"/>
<node CREATED="1368651558335" ID="ID_170337058" MODIFIED="1368651567004" TEXT="Choosing the fields we want to return">
<node CREATED="1368651570423" ID="ID_1659794144" MODIFIED="1368651576375" TEXT="Partial fields"/>
</node>
<node CREATED="1368651582463" ID="ID_1712230196" MODIFIED="1368651593557" TEXT="Using script fields">
<node CREATED="1368651594159" ID="ID_659767064" MODIFIED="1368651609261" TEXT="Passing parameters to script fields"/>
</node>
<node CREATED="1368651656247" ID="ID_1850581341" MODIFIED="1368651674756" TEXT="Choosing the right search type (advanced)"/>
<node CREATED="1368651677063" ID="ID_1952524766" MODIFIED="1368651690988" TEXT="Search execution preference (advanced)"/>
</node>
<node CREATED="1368651704695" ID="ID_1882653736" MODIFIED="1368651709636" TEXT="Basic queries">
<node CREATED="1368651712183" ID="ID_973026064" MODIFIED="1368689777686" TEXT="term">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      One of the simplest query. Matches any document, that has a term in a given field.
    </p>
    <p>
      
    </p>
    <p>
      <b>Term query is not analyzed.</b>
    </p>
    <p>
      
    </p>
    <pre><b>{
  &quot;query&quot; : {
    &quot;term&quot; : {
      &quot;title&quot; : &quot;crime&quot;
    }
  }
}</b>
</pre>
    <p>
      We can include <b>boost</b>&#160;attribute to affect importance of the given term (but in such case we have to change the query a bit).
    </p>
    <p>
      
    </p>
    <pre><b>{
  &quot;query&quot; : {
    &quot;term&quot; : {
      &quot;title&quot; : {
        &quot;value&quot; : &quot;crime&quot;,
        &quot;boost&quot; : 10.0
      }
    }
  }
}</b>
</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1368651748215" ID="ID_611682208" MODIFIED="1368690307036" TEXT="terms">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows match documents that have certain terms in their contents.
    </p>
    <p>
      
    </p>
    <p>
      If we want documents that have the terms &quot;novel&quot; or &quot;book&quot; in the <b>tags</b>&#160;field, we should use something like this:
    </p>
    <p>
      
    </p>
    <pre><b>{
  &quot;query&quot; : {
    &quot;terms&quot; : {
      &quot;tags&quot; : [ &quot;novel&quot;, &quot;book&quot; ],
      &quot;minimum_match&quot; : 1
    }
  }
}</b></pre>
    Such query returns documents having one or both of the searched terms in the <b>tags</b>&#160;field. That's because of <b>minimum_match</b>&#160;attribute setting to 1. If we would want to match document with both provided terms, we would set its value to 2.
  </body>
</html></richcontent>
</node>
<node CREATED="1368651754751" ID="ID_247819405" MODIFIED="1368651759045" TEXT="match">
<node CREATED="1368651760055" ID="ID_470677832" MODIFIED="1368651765989" TEXT="Boolean match"/>
<node CREATED="1368651767007" ID="ID_1141974764" MODIFIED="1368651770645" TEXT="phrase match"/>
<node CREATED="1368651775047" ID="ID_1112970012" MODIFIED="1368651785765" TEXT="match phrase prefix"/>
</node>
<node CREATED="1368651787599" ID="ID_1767391984" MODIFIED="1368651793909" TEXT="multi match"/>
<node CREATED="1368651795407" ID="ID_1140825410" MODIFIED="1368651801069" TEXT="query string">
<node CREATED="1368651801775" ID="ID_1535263896" MODIFIED="1368651812237" TEXT="Lucene query syntax"/>
<node CREATED="1368651814519" ID="ID_1331544765" MODIFIED="1368651830084" TEXT="Explaining the query string"/>
<node CREATED="1368651833599" ID="ID_1471970399" MODIFIED="1368651850252" TEXT="Running query string query against multiple fields"/>
</node>
<node CREATED="1368651852199" ID="ID_1963280716" MODIFIED="1368651853885" TEXT="field"/>
<node CREATED="1368651864959" ID="ID_266427522" MODIFIED="1368651869613" TEXT="identifiers"/>
<node CREATED="1368651876007" ID="ID_103056476" MODIFIED="1368651879959" TEXT="fuzzy like this"/>
<node CREATED="1368651881079" ID="ID_11148885" MODIFIED="1368651888079" TEXT="fuzzy like this field"/>
<node CREATED="1368651970943" ID="ID_650352483" MODIFIED="1368651974877" TEXT="fuzzy"/>
<node CREATED="1368651976463" ID="ID_1075365075" MODIFIED="1368651979997" TEXT="match all"/>
<node CREATED="1368651981063" ID="ID_1711547918" MODIFIED="1368651984348" TEXT="wildcard"/>
<node CREATED="1368651988279" ID="ID_1332307914" MODIFIED="1368651993405" TEXT="more like this"/>
<node CREATED="1368651994607" ID="ID_1856000842" MODIFIED="1368652002349" TEXT="more like this field"/>
<node CREATED="1368652003911" ID="ID_1827448991" MODIFIED="1368652007885" TEXT="range"/>
<node CREATED="1368652012487" ID="ID_1304796971" MODIFIED="1368652017869" TEXT="Query rewrite"/>
</node>
</node>
<node CREATED="1368629026515" ID="ID_1460307793" MODIFIED="1368629035647" POSITION="left" TEXT="1. Getting Started with ElasticSearch Cluster">
<node CREATED="1369859339864" ID="ID_1526956640" MODIFIED="1369859357938" TEXT="What is ElasticSearch?">
<node CREATED="1369859393630" ID="ID_1218813554" MODIFIED="1369859523285" TEXT="Index">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Place where ES stores data (equivalent to table in relational database, or collection in MongoDB or CouchDB database) - prepared for fast full-text searching
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369859525557" ID="ID_621997588" MODIFIED="1369859940627" TEXT="Document">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Main entity stored in ES. (equivalent to table row in a relational database)
    </p>
    <p>
      
    </p>
    <p>
      Documents consists of fields (row columns), but each field can occur several times (<b>multivalued fields</b>)
    </p>
    <p>
      
    </p>
    <p>
      Each field has a type (text, number, date, ....) and can be complex (contain other sub-documents or arrays)
    </p>
    <p>
      
    </p>
    <p>
      Field type is important for ES, because it gives the search engine information about how various operations (comparison, sorting, ...) should be performed.
    </p>
    <p>
      
    </p>
    <p>
      Documents don't need to have a fixed structure. Every document may have different set of fields (which even don't have to be known during developoment)
    </p>
    <p>
      
    </p>
    <p>
      Document structure can be forced by schema.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369859942109" ID="ID_134171513" MODIFIED="1369860048853" TEXT="Document type">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      One index can store many objects with different purposes and document type lets easily differentiate these objects.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369860050349" ID="ID_1195291139" MODIFIED="1369860722151" TEXT="Node and cluster">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ES can work as a standalone server or as a <b>cluster</b>&#160;of many cooperating servers (<b>nodes</b>).
    </p>
    <p>
      Large amout of data can be split across many nodes via index <b>sharding</b>&#160;(splitting into smaller individual parts)
    </p>
    <p>
      Better availability are achieved through <b>replicas</b>&#160;(copies of index parts)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369860059509" ID="ID_1789985139" MODIFIED="1369861009952" TEXT="Shard">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In cases when sinlge node is not sufficient to fulfill application requirements (RAM, CPU, ....) data can be divided into smaller parts - <b>shards</b>, where each shard is separate Apache Lucene index and can be placed on different server in the cluster. When such index is queried, ES send the query to each relevant shard and merges the result in a transparent way.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369860067037" ID="ID_712254997" MODIFIED="1369861196461" TEXT="Replica">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In order to increase query throughput or achieve high availability <b>replicas</b>&#160; can be used. The primary shard is used as the place where operations changing the index are directed and replica is just exact copy of the primary shard. Each shard can have 0..n replicas. When primary shard is lost cluster can promote a replica to be the new primary shard.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1368629062067" ID="ID_1912884721" MODIFIED="1368629085473" TEXT="Manual index creation and mappings configuration">
<node CREATED="1369941989767" ID="ID_513466461" MODIFIED="1369942771000" TEXT="Index">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Logical structure that holds data (db table with rows and columns)
    </p>
    <p>
      row is a document
    </p>
    <p>
      column is single field in the index
    </p>
    <p>
      
    </p>
    <p>
      ES server can have many indexes
    </p>
    <p>
      indexes can be scattered (sharded) accross multiple node in ES cluster
    </p>
    <p>
      each shard can have replica to backup and throttle performance
    </p>
    <p>
      
    </p>
    <p>
      Shards are Apache Lucene indexes divided into types.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1369942065222" ID="ID_1115509079" MODIFIED="1370536641598" TEXT="Types">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Single index can contain multiple types of documents ....
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1370536655181" ID="ID_519105201" MODIFIED="1370536976488" TEXT="Index manipulation">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      To create an <b>post</b>&#160;index we send following command:
    </p>
    <p>
      
    </p>
    <p>
      <b>curl &#8211;XPOST 'http://localhost:9200/posts'</b>
    </p>
    <p>
      
    </p>
    <p>
      if everything is right, ES server responds with:
    </p>
    <p>
      
    </p>
    <p>
      <b>{&quot;ok&quot;:true,&quot;acknowledged&quot;:true}</b>
    </p>
    <p>
      
    </p>
    <p>
      we can delete it using:
    </p>
    <p>
      
    </p>
    <p>
      <b>curl &#8211;XDELETE 'http://localhost:9200/posts'</b>
    </p>
    <p>
      
    </p>
    <p>
      and we should get the same response ...
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1368629134163" ID="ID_341289746" MODIFIED="1370537049155" TEXT="Schema mapping" VGAP="2">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Aka mappings are used to define index structure.</b>
    </p>
    <p>
      
    </p>
    <p>
      We want to index blog posts with following structure:
    </p>
    <ul>
      <li>
        Id
      </li>
      <li>
        Name
      </li>
      <li>
        Publication date
      </li>
      <li>
        Contents
      </li>
    </ul>
    <p>
      We will store posts in <b>posts</b>&#160;index and we'll define the post type to do that. In ElasticSearch mappings are sent as JSON objects in a file, so we create <b>posts.json</b>&#160;file with following contents:
    </p>
    <pre>{
   &quot;mappings&quot;: {
      &quot;post&quot;: {
         &quot;properties&quot;: { 
            &quot;id&quot;: {&quot;type&quot;:&quot;long&quot;, &quot;store&quot;:&quot;yes&quot;, 
            &quot;precision_step&quot;:&quot;0&quot; },
            &quot;name&quot;: {&quot;type&quot;:&quot;string&quot;, &quot;store&quot;:&quot;yes&quot;, 
            &quot;index&quot;:&quot;analyzed&quot; },
            &quot;published&quot;: {&quot;type&quot;:&quot;date&quot;, &quot;store&quot;:&quot;yes&quot;, 
            &quot;precision_step&quot;:&quot;0&quot; },
            &quot;contents&quot;: {&quot;type&quot;:&quot;string&quot;, &quot;store&quot;:&quot;no&quot;, 
            &quot;index&quot;:&quot;analyzed&quot; } 
         }
      }
   }
}</pre>
    <p>
      Then&#160;we can create <b>posts</b>&#160;index by sending it to the elasticsearch server:
    </p>
    <p>
      
    </p>
    <pre><b>curl -XPOST 'http://localhost:9200/posts' &#8211;d @posts.json</b></pre>
  </body>
</html>
</richcontent>
<node CREATED="1368632930539" ID="ID_620010282" MODIFIED="1368634911494" TEXT="Type definition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    All type definitions within the mappings file are nested in the

    <p>
      <b>mappings</b>&#160;object. For example:
    </p>
    <pre>{
  &quot;mappings&quot;: {
    &quot;post&quot;: {
      &quot;properties&quot;: { 
        &quot;id&quot;: { &quot;type&quot;:&quot;long&quot;, &quot;store&quot;:&quot;yes&quot;,
        &quot;precision_step&quot;:&quot;0&quot; },
        &quot;name&quot;: { &quot;type&quot;:&quot;string&quot;, &quot;store&quot;:&quot;yes&quot;, 
        &quot;index&quot;:&quot;analyzed&quot; },
        &quot;published&quot;: { &quot;type&quot;:&quot;date&quot;, &quot;store&quot;:&quot;yes&quot;, 
        &quot;precision_step&quot;:&quot;0&quot; },
        &quot;contents&quot;: { &quot;type&quot;:&quot;string&quot;, &quot;store&quot;:&quot;no&quot;, 
        &quot;index&quot;:&quot;analyzed&quot; } 
      }
    },
    &quot;user&quot;: {
      &quot;properties&quot;: { 
        &quot;id&quot;: { &quot;type&quot;:&quot;long&quot;, &quot;store&quot;:&quot;yes&quot;, 
        &quot;precision_step&quot;:&quot;0&quot; },
        &quot;name&quot;: { &quot;type&quot;:&quot;string&quot;, &quot;store&quot;:&quot;yes&quot;, 
        &quot;index&quot;:&quot;analyzed&quot; } 
      }
    }
  }
}

to define <b>post</b> and <b>user</b> type</pre>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1368632949547" ID="ID_1293945975" MODIFIED="1368635276740" TEXT="Fields">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Each type is defined by a set of properties / fields </b>(of nested JSON object).
    </p>
    <p>
      
    </p>
    <p>
      E.g. the name field:
    </p>
    <p>
      
    </p>
    <p>
      <b>&quot;name&quot; : { &quot;type&quot;: &quot;string&quot;, &quot;store&quot;: &quot;yes&quot;, &quot;index&quot;: &quot;analyzed&quot; }</b>
    </p>
    <p>
      
    </p>
    <p>
      Attributes are specific to the used field types.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368632959235" ID="ID_816021709" MODIFIED="1368632965537" TEXT="Core types">
<node CREATED="1368632970787" ID="ID_815506046" MODIFIED="1368643806520" TEXT="Common attributes">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <b>index_name</b>: name of the field that will be stored in the index. If not defined the name will be set to the name of the object that the field is defined with. Usually omitted.
      </li>
      <li>
        <b>index</b>: can take values <b>analyzed</b>&#160;(will be indexed and searchable)&#160;and <b>no</b>&#160;(not searchable), for string based fields it can also be set to <b>not_analyzed</b>&#160;(will be indexed / searchable, but not processed with analyzer, so it's written to index as it was sent to ElasticSearch and only perfect match will be counted)
      </li>
      <li>
        <b>store</b>: takes values <b>yes</b>&#160;and <b>no</b>&#160;(default)&#160;and specifies if the original field value should be written into the index.
      </li>
      <li>
        <b>boost</b>: defaults to <b>1</b>, defines importance of the field inside the document
      </li>
      <li>
        <b>null_value</b>: specifies value that should be written into the index if the field is not part of indexed document, omitted by default
      </li>
      <li>
        <b>include_in_all</b>: specifies if the field should be included in the <b>_all</b>&#160; field (by default all fields are included if it's used)
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1368632979579" ID="ID_1780485429" MODIFIED="1369858831372" TEXT="String">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Most basic text type.
    </p>
    <p>
      
    </p>
    <p>
      <b>&quot;contents&quot; : { &quot;type&quot; : &quot;string&quot;, &quot;store&quot; : &quot;no&quot;, &quot;index&quot; : &quot;analyzed&quot; }</b>
    </p>
    <p>
      
    </p>
    <p>
      In addition to the common attributes following ones can also be set:
    </p>
    <ul>
      <li>
        <b>term_vector</b>: takes values <b>no</b>&#160;(default), <b>yes</b>, <b>with_offsets</b>, <b>with_positions</b>, <b>with_positions_offsets</b>. Defines whether the Lucene term vectors should be calculated. If using highlighting, we need to calculate term vectors.
      </li>
      <li>
        <b>omit_norms</b>: takes values <b>true</b>&#160;or <b>false</b>&#160;(default). When set to true, Lucene norms calculation for the field (so index-time boosting can't be used)
      </li>
      <li>
        <b>omit_term_freq_and_positions</b>: takes values <b>true</b>&#160;or <b>false</b>&#160;(default). When set to true, then term frequency and position calculation during indexing is disabled.
      </li>
      <li>
        <b>index_options</b>: allows to set indexing options. Possible values are <b>docs</b>, <b>freqs</b>&#160;(default)&#160;and <b>term</b>&#160;(available since ElasticSearch 0.20)
      </li>
      <li>
        <b>analyzer</b>: name of analyzer used for indexing and searching. Defaults to globally defined analyzer name.
      </li>
      <li>
        <b>index_analyzer</b>: name of analyzer used for indexing
      </li>
      <li>
        <b>search_analyzer</b>: name of analyzer used for processing the part of query string that is sent to the field
      </li>
      <li>
        <b>ignore_above</b>: maximum size of the field. Rest of field value above specified size will be ignored
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1368632984843" ID="ID_1387724539" MODIFIED="1368645529221" TEXT="Number">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Core type gathering all available numeric types:
    </p>
    <ul>
      <li>
        <b>byte</b>:&#160;A byte value; for example, 1
      </li>
      <li>
        <b>short</b>: A short value; for example, 12
      </li>
      <li>
        <b>integer</b>: An integer value; for example, 134
      </li>
      <li>
        <b>long</b>: A long value; for example, 12345
      </li>
      <li>
        <b>float</b>: A float value; for example, 12.23
      </li>
      <li>
        <b>double</b>: A double value, for example, 12.23
      </li>
    </ul>
    <p>
      <b>&quot;price&quot; : { &quot;type&quot; : &quot;float&quot;, &quot;store&quot; : &quot;yes&quot;, &quot;precision_step&quot; : &quot;4&quot; }</b>
    </p>
    <p>
      
    </p>
    <p>
      In addition to common attributes, following ones can be set for numeric fields:
    </p>
    <ul>
      <li>
        <b>precision_step</b>: It's the number of terms generated for each value in a field (default is 4)
      </li>
      <li>
        <b>ignore_malformed</b>: takes value <b>true</b>&#160;or <b>false</b>&#160; (default).
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1368632990011" ID="ID_526910713" MODIFIED="1368650439730" TEXT="Date">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Type to be used for date indexing. Follows specific (changeable) format and is stored in UTC by default.
    </p>
    <p>
      
    </p>
    <p>
      <b>&quot;published&quot; : { &quot;type&quot; : &quot;date&quot;, &quot;store&quot; : &quot;yes&quot;, &quot;format&quot; : &quot;YYYY-mm-dd&quot; } </b>
    </p>
    <p>
      
    </p>
    <p>
      Date type additional attributes are:
    </p>
    <ul>
      <li>
        <b>format</b>: specifies date format, default value is <b>dateOptionalTime</b>, full list of formats can be found here: http://www.elasticsearch.org/guide/reference/mapping/date-format.html
      </li>
      <li>
        <b>precision_step</b>: number of terms generated for each value in the field, lower value means higher number of terms, faster range queries and higher index size (default is 4)
      </li>
      <li>
        <b>ignore_malformed</b>: takes value true&#160;or false&#160;&#160;(default)
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1368632994771" ID="ID_1364622330" MODIFIED="1368650491472" TEXT="Boolean">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      type designed to be used for indexing, possible values are <b>true</b>&#160;or <b>false</b>.
    </p>
    <p>
      
    </p>
    <p>
      <b>&quot;allowed&quot; : { &quot;type&quot; : &quot;boolean&quot; } </b>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368633003747" ID="ID_42613829" MODIFIED="1368650631606" TEXT="Binary">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      BASE64 representation of binary data stored in the index. Can be used to store images, ... . Fields based on this type are by default stored but not indexed. This type supports only <b>index_name</b>&#160;property.
    </p>
    <p>
      
    </p>
    <p>
      <b>&quot;image&quot; : { &quot;type&quot; : &quot;binary&quot; }</b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1368632167571" ID="ID_1936386588" MODIFIED="1368651314924" TEXT="Multi fields">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Sometimes it's suitable to have same field value in two or more fields (one for searching, one for faceting, ...). Special type <b>multi_field</b>&#160;allows mapping several core types into a single field and have them analyzed differently.
    </p>
    <p>
      
    </p>
    <pre><b>&quot;name&quot;: {
  &quot;type&quot;: &quot;multi_field&quot;,
  &quot;fields&quot;: {
    &quot;name&quot;: { &quot;type&quot; : &quot;string&quot;, &quot;index&quot;: &quot;analyzed&quot; },
    &quot;facet&quot;: { &quot;type&quot; : &quot;string&quot;, &quot;index&quot;: &quot;not_analyzed&quot; }
  }	
}</b></pre>
    <p>
      
    </p>
    <p>
      Preceding definition will create two fields. One can be referred to as <b>name</b>&#160; and the second can be used as <b>name.facet</b>. It's not necessary to specify two separate fields during indexing, single one named <b>name</b>&#160; is enough and ElasticSearch will do the rest.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368629152539" ID="ID_1231826946" MODIFIED="1368630194502" TEXT="Using analyzers">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Analyzer is a functionality that is used to analyze data or queries in a way we want them to be indexed or searched.</b>
    </p>
    <p>
      
    </p>
    <p>
      E.g.:&#160;&#160;when we divide words on the basis of whitespaces and lowercase characters, we don't have to worry about users sending words in lower- or uppercases
    </p>
    <p>
      
    </p>
    <p>
      <b>We can use different analyzers for index time and during query time.</b>
    </p>
    <p>
      
    </p>
    <p>
      To use one of the analyzers, we need to specify its name to the correct property of the field - that's all.
    </p>
  </body>
</html></richcontent>
<node CREATED="1368629451259" ID="ID_1666869534" MODIFIED="1368629459225" TEXT="Out of the box analyzers">
<node CREATED="1368629464667" ID="ID_1065888672" MODIFIED="1368645546566" TEXT="standard">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      standard analyzer convenient for most European languages (refer to http://www.elasticsearch.org/guide/reference/index
    </p>
    <p>
      modules/analysis/standard-analyzer.html for details)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1368629517435" ID="ID_1181342573" MODIFIED="1368645547758" TEXT="simple">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      analyzer that splits the provided value on non-letter characters and converts letters to lowercase
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1368629579499" ID="ID_1817878231" MODIFIED="1368645548662" TEXT="whitespace">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      analyzer that splits provided value on the basis of whitespace characters
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1368629617115" ID="ID_292043992" MODIFIED="1368645549630" TEXT="stop">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      similar to a simple analyzer, but filters data on the provided stop words set (refer to http://www.elasticsearch.org/guide/reference/index-modules/analysis/stop-analyzer.html for details)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1368629773003" ID="ID_893948331" MODIFIED="1368645550454" TEXT="keyword">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      very simple analyzer that just passes provided value, same result can be achieved by specifying the field as <i>not_analyzed</i>
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1368629779491" ID="ID_1358479512" MODIFIED="1368705669515" TEXT="pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      analyzer that allows flexible text separation by the use of regular expressions (refer to http://www.elasticsearch.org/guide/reference/index-modules/analysis/pattern-analyzer.html for details)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1368629846651" ID="ID_92220524" MODIFIED="1368645552198" TEXT="language">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      analyzer designed to work with specific language, full list of supported languages can be found at http://www.elasticsearch.org/guide/reference/index-modules/analysis/lang-analyzer.html
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1368629855747" ID="ID_1235615961" MODIFIED="1368645553014" TEXT="snowball">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      similar to the standard analyzer but it provides a stemming algorithm (refer to&#160; http://www.elasticsearch.org/guide/reference/index-modules/analysis/snowball-analyzer.html )
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1368630208515" HGAP="40" ID="ID_870221364" MODIFIED="1368645588260" TEXT="Defining your own analyzers" VSHIFT="25"/>
<node CREATED="1368630435170" HGAP="35" ID="ID_101511988" MODIFIED="1368645597276" TEXT="Analyzer fields" VSHIFT="-2">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Analyzer field (<i>_analyzer</i>) allows specifying value that will be used as analyzer name for the document to which the field belongs.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1368631162667" HGAP="21" ID="ID_615996073" MODIFIED="1368645601348" TEXT="Default analyzers" VSHIFT="-4">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      we can specify default analyzer which should be used if no analyzer is defined. It's done the same way as configuring a custom analyzer in the settings section of the mappings file, but instead of specifying a custom name for the analyzer, the <i>default</i>&#160;keyword should be used.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      {
    </p>
    <p>
      &quot;settings&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&quot;index&quot; : {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;analysis&quot;: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;analyzer&quot;: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;default&quot;: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;tokenizer&quot;: &quot;standard&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;filter&quot;: [
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;asciifolding&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;lowercase&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;ourEnglishFilter&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;]
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&quot;filter&quot;: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;ourEnglishFilter&quot;: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;type&quot;: &quot;kstem&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1369860148469" ID="ID_834434237" MODIFIED="1370911773402" TEXT="Storing a document source">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Sometimes it could be handy to store whole input JSON document and ES does it automatically. To disable this behavior we add following to our type definition:
    </p>
    <p>
      
    </p>
    <p>
      <b>&quot;_source&quot; : { </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&quot;enabled&quot; : false </b>
    </p>
    <p>
      <b>}</b>
    </p>
    <p>
      
    </p>
    <p>
      so the whole mappings'd look like this:
    </p>
    <p>
      <b>{ &quot;mappings&quot;: </b>
    </p>
    <p>
      &#160;&#160;&#160; <b>{ &quot;post&quot;: </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{ &quot;_source&quot;: { &quot;enabled&quot;: false }, &quot;properties&quot;: { &quot;id&quot;: {&quot;type&quot;:&quot;long&quot;, &quot;store&quot;:&quot;yes&quot;, &quot;precision_step&quot;:&quot;0&quot; }, &quot;name&quot;: {&quot;type&quot;:&quot;string&quot;, &quot;store&quot;:&quot;yes&quot;, &quot;index&quot;:&quot;analyzed&quot; }, &quot;published&quot;: {&quot;type&quot;:&quot;date&quot;, &quot;store&quot;:&quot;yes&quot;, &quot;precision_step&quot;:&quot;0&quot; }, &quot;contents&quot;: {&quot;type&quot;:&quot;string&quot;, &quot;store&quot;:&quot;no&quot;, &quot;index&quot;:&quot;analyzed&quot; } } } } } </b>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1369860163654" ID="ID_697218557" MODIFIED="1369860166340" TEXT="All field"/>
</node>
<node CREATED="1369942088481" ID="ID_186692823" MODIFIED="1369942088481" TEXT=""/>
</node>
<node CREATED="1369860191061" ID="ID_824536201" MODIFIED="1369860206693" TEXT="Dynamic mappings and templates">
<node CREATED="1369860209597" ID="ID_1010096494" MODIFIED="1369860221044" TEXT="Type determining mechanism"/>
<node CREATED="1369860226061" ID="ID_1285872529" MODIFIED="1369860230916" TEXT="Dynamic mappings"/>
<node CREATED="1369860233517" ID="ID_535536171" MODIFIED="1369860235755" TEXT="Templates">
<node CREATED="1369860237565" ID="ID_1611769122" MODIFIED="1370537476748" TEXT=""/>
</node>
</node>
<node CREATED="1369860256949" ID="ID_258049317" MODIFIED="1369860263708" TEXT="When routing does matter">
<node CREATED="1369860267061" ID="ID_1689006455" MODIFIED="1369860277068" TEXT="How does indexing work?"/>
<node CREATED="1369860279581" ID="ID_890008532" MODIFIED="1369860287363" TEXT="How does searching work?"/>
<node CREATED="1369860290813" ID="ID_1035236443" MODIFIED="1369860292588" TEXT="Routing"/>
<node CREATED="1369860294677" ID="ID_1887138297" MODIFIED="1369860300316" TEXT="Routing parameters"/>
<node CREATED="1369860303133" ID="ID_1830582158" MODIFIED="1369860306452" TEXT="Routing fields"/>
</node>
<node CREATED="1369860316093" ID="ID_1211219004" MODIFIED="1369860339300" TEXT="Index aliasing and simplifying your everyday work using it">
<node CREATED="1369860351237" ID="ID_1913465226" MODIFIED="1369860355500" TEXT="An alias"/>
<node CREATED="1369860356734" ID="ID_1123510307" MODIFIED="1369860363172" TEXT="Creating an alias"/>
<node CREATED="1369860366709" ID="ID_153513532" MODIFIED="1369860372492" TEXT="Modifying aliases"/>
<node CREATED="1369860375069" ID="ID_1639804333" MODIFIED="1369860389028" TEXT="Combining commands"/>
<node CREATED="1369860393285" ID="ID_750250706" MODIFIED="1369860400924" TEXT="Retrieving all aliases"/>
<node CREATED="1369860405277" ID="ID_1964640808" MODIFIED="1369860423828" TEXT="Filtering aliases"/>
<node CREATED="1369860429093" ID="ID_1736499334" MODIFIED="1369860434052" TEXT="Aliases and routing"/>
</node>
<node CREATED="1369860436533" ID="ID_969917913" MODIFIED="1369860439332" TEXT="Summary"/>
</node>
</node>
</map>
