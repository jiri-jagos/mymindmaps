<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1380184262661" ID="ID_654926345" MODIFIED="1381614943393" TEXT="Crash course on DNS (IPv4)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      See http://www.logicbbs.org/dns.html
    </p>
    <p>
      
    </p>
    <p>
      DNS: address book for the internet
    </p>
    <p>
      Every computer is identified by IP address - 32 bit number in the form x.x.x.x (x&lt;=255) which has to be unique for computers directly connected to the internet.
    </p>
    <p>
      
    </p>
    <p>
      It's hard to remember IP addresses, that's why DNS (domain name system) exists. It maps IP addresses to Domain Names a vice versa.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1380186175325" ID="ID_106677301" MODIFIED="1380186609732" POSITION="right" TEXT="Domain formats">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>www.example.org</b>
    </p>
    <p>
      
    </p>
    <p>
      - <b>org</b>&#160;is a Top Level Domain (TLD)
    </p>
    <p>
      - <b>example</b>&#160;is a second level domain
    </p>
    <p>
      - <b>www</b>&#160;is a third level domain (subdomain)
    </p>
    <p>
      
    </p>
    <p>
      Higher level domains are possible too.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1380186611525" ID="ID_934099019" MODIFIED="1380188302127" POSITION="left" TEXT="DNS is recursive">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When typed e.g. <b>logicbbs.org</b>&#160;into the web browser, the computer won't know what or where <b>logicbbs.org</b>&#160;is. It needs an IP address, not a text string, therefore the computer will query its DNS (or name) server to get resulting IP address.
    </p>
    <p>
      
    </p>
    <p>
      When the ISP's DNS server does not know the answer it queries its name server and so on. Therefore DNS is recursive.
    </p>
    <p>
      
    </p>
    <p>
      There are 13 root DNS server on the internet that take general queries from all the world's DNS servers.
    </p>
    <p>
      When ISP's DNS server has not some particular domain name map cached, then it recursively queries some of the root server which in advance directs the ISP's server to group of servers handling requested TLD (.org).
    </p>
    <p>
      The .org TLD DNS servers can then tell you that the name server record for <b>logicbbs.org</b>&#160;is <b>ns.planix.net</b>&#160;and its IP address is <b>204.29.161.33</b>.
    </p>
    <p>
      The ISP then queries <b>ns.planix.net</b>&#160;about <b>logicbbs.org</b>, which returns the DNS record you need: <b>69.17.158.109.</b>&#160;
    </p>
    <p>
      Then the ISP's server returns this address to your computer, which can happily browse gathered IP address.
    </p>
  </body>
</html></richcontent>
<node CREATED="1380188058245" ID="ID_1324499319" MODIFIED="1380188726048" TEXT="Figure 1">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      YOU: logicbbs.org &lt;==&gt; ISP DNS: If cached returns 69.17.158.109, if not then
    </p>
    <p>
      YOU: logicbbs.org &lt;==&gt; ISP DNS &lt;==&gt; root servers: direct to .org DNS servers
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ISP DNS &lt;==&gt; .org TLS DNS servers: direct to ns.planix.net
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ISP DNS &lt;==&gt; ns.planix.net: returns DNS record of logicbbs.org
    </p>
    <p>
      YOU&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;==&gt; ISP DNS contact you with IP of logicbbs.org
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1380188727646" ID="ID_299063767" MODIFIED="1380189163059" POSITION="right" TEXT="Caching">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Is a feature of DNS. Occurs on both local machine and on ISP's servers.
    </p>
    <p>
      Reasons for caching are:
    </p>
    <ul>
      <li>
        minimising the number of DNS queries made (if some address is accessed frequently it does not make sense to query ISP and / or root servers every time, because the IP address stays the same)
      </li>
      <li>
        allowing large DNS servers to rapidly return requests (without all that querying and redirecting to root DNS servers)
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1380189164094" ID="ID_1233686509" MODIFIED="1380190037391" POSITION="left" TEXT="Making DNS records changes">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Caching is problem when DNS addresses change quickly. To tell all the world's ISP DNS servers that e.g. ns.planix.net has changed one must specify an expiry for each cached record which is set in the TTL (time to live) entry in the DNS record and is specified in seconds. TTL values are usually 86400 seconds or 1 day. All cached records that are a day old are refreshed.
    </p>
    <p>
      There's no way to speed up refreshing. Therefore a cached record whose IP address is outdated needs to be refreshed before users can access the requested server using DNS. This is why there's a delay - logicbbs.org won't work for serveral hours if its IP address changes.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1380190038605" ID="ID_945669971" MODIFIED="1380190047259" POSITION="right" TEXT="When DNS servers go bad"/>
</node>
</map>
