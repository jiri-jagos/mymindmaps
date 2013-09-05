<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1378381446938" ID="ID_1623453645" MODIFIED="1378386285415" TEXT="ISPmail tutorial for Debian Squeeze">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      See https://workaround.org/ispmail/squeeze
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1378381491080" ID="ID_1811066609" MODIFIED="1378397103515" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h2>
      1. Big picture
    </h2>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h1>
      1. Big picture
    </h1>
    <p>
      
    </p>
    <ol>
      <li>
        <p>
          Email is sent to The Server (: via the SMTP protocol on port 25.
        </p>
        <p>
          Postfix accepts the connection, reads the email and does some basic checks: Is sender:
        </p>
        <ul>
          <li>
            blacklisted?
          </li>
          <li>
            
          </li>
          authenticated user so we bypass relay checks?

          <li>
            
          </li>
          valid local system user?
        </ul>
      </li>
      ).

      <p>
        If we don't trust the remote system yet, we apply greylisting
      </p>
      <p>
        At this stage Postfix can reject the email or accept it.
      </p>
      <li>
        <p>
          Postfix forwards the email via SMTP protocol on TCP port 10024 to AMaViS for content checking. At this stage the email can't be rejected any more so AMaViS can either acccept or throw it. Commonly AMaViS is configured to add a certain email header so the user can see that AMaViS thinks it is spam.
        </p>
      </li>
      <li>
        <p>
          AMaViS lets SpamAssassin check the email for spam. SpamAssassin will be taught which emails are spam to increase its detection accuracy.
        </p>
      </li>
      <li>
        <p>
          AMaViS also runs the email through ClamAV to check for viruses
        </p>
      </li>
      <li>
        <p>
          After these checks AMaViS returns the email to the Postfix process but on TCP port 10025. Postfix is configured to trust emails sent to this port so skips further content checks.
        </p>
      </li>
      <li>
        <p>
          Postfix forwards the email to Dovecot, which optionally applies per-user filters so that emails can be stored in certain email folders automatically if desired,
        </p>
      </li>
      <li>
        <p>
          Dovecot writes the email to the HDD in maildir format.
        </p>
      </li>
      <li>
        <p>
          The user's email client can now fetch the new emails from Dovecot using the POP3 or IMAP protocol.
        </p>
      </li>
    </ol>
    <p>
      
    </p>
    <p>
      <img src="bigpicture.png" />
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1378381502262" ID="ID_1225374152" MODIFIED="1378397354005" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h2>
      2. Virtual domains
    </h2>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h2>
      2. Virtual domains
    </h2>
    <p>
      Postfix distinguishes between 3 kinds of domains. Very important concept to understand.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1378397208385" ID="ID_172071219" MODIFIED="1378397321473">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3>
      Local domains
    </h3>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h3>
      Local domains
    </h3>
    <p>
      Postfix is the software component that speaks SMTP and sends and receives emails from the internet. Typically Postfix knows about local domains and local users. A local user is just normal system user (one of those listed in the /etc/passwd file). This means that all system users will get emails for any local domain. The &quot;mydestination&quot; configuration setting lists all local domains. Example:<br /><code>mydestination = example.org, example.com, example.net</code>
    </p>
    <p>
      Let's say you created a system user &quot;johndoe&quot; (e.g. using the &quot;adduser&quot; command). This simple setup will make Postfix receive emails for:
    </p>
    <ul>
      <li>
        johndoe@example.org
      </li>
      <li>
        johndoe@example.com
      </li>
      <li>
        johndoe@example.net
      </li>
    </ul>
    You can't make johndoe's account just work in one domain. So this is not feasible for different users in different domains and neither will it work with many users as you had to create system accounts for each of them. It's still a a good idea to set up at least one local domain in case of configuration or operation problems with other types of domains. E.g. &quot;mydestination=localhost&quot; is a good choice if you don't feel creative :). Postfix automatically receives emails for these users and saves them under /var/mail/$USERNAME.
  </body>
</html>
</richcontent>
</node>
<node CREATED="1378397357664" ID="ID_1264873488" MODIFIED="1378398596906">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3>
      Virtual mailbox domains
    </h3>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h3>
      Virtual mailbox domains
    </h3>
    <p>
      This type is the most important one in this tutorial. A virtual mailbox domain is also a domain used to receive email. But you do not use system users (/etc/passwd) to specify valid email addresses in that domain. Instead you ecplicitly tell Postfix which addresses are valid in a domain. A simple way to configure such domains and users is using text files. Consider following mapping of recipient email addresses to mailboxes on the disk:
    </p>
    <table>
      <tr>
        <th>
          Virtual user
        </th>
        <th>
          Virtual mailbox location on disk
        </th>
      </tr>
      <tr>
        <td>
          john@example.org
        </td>
        <td>
          /var/mail/example.org/john/Maildir
        </td>
      </tr>
      <tr>
        <td>
          jack@example.org
        </td>
        <td>
          /var/mail/example.org/jack/Maildir
        </td>
      </tr>
      <tr>
        <td>
          jack@example.com
        </td>
        <td>
          /var/mail/example.com/jack/Maildir
        </td>
      </tr>
    </table>
    You have 2 domains: example.org and example.com. So first you'll have to tell Postfix about these domains. This is done by setting

    <pre>virtual_mailbox_domains = example.org example.com</pre>
    in the Postfix configuration. Next you need to tell Postfix which email addresses you are ready to receive email for and where to store the received emails on disk.The respective text file could be stored in /etc/postfix/virtual_mailbox_users and would look like this:

    <pre>john@example.org  /var/vmail/example.org/john/Maildir
jack@example.org  /var/vmail/example.org/jack/Maildir
jack@example.com  /var/vmail/example.com/jack/Maildir</pre>
    The valid email addresses are specified in the left column and the Maildir target path in the right one. (in most Postfix literature you may find the acronym LHS for 'left hand side' which is this left column, equally RHS is 'right hand ...'. Such a table with two columns is also called a mapping or hash table.

    <p>
      In the above example are virtual domains just harcoded in the Postfix configuration file (using the &quot;virtual_mailbox_domains&quot; setting) but with lot of domains this is not feasible any more. So we can also use a mapping file to configure the domains. Let's assume you saved it to /etc/postfix/virtual_mailbox_domains and it looked like this:
    </p>
    <pre>example.org  OK
example.com  OK</pre>
    We can't just list the domains one per line in this file. The reason is that a mapping file always has two columns. In such a &quot;one-dimensional&quot; mapping (the domains list) Postfix does not care about the RHS ;) so it does not even have to be &quot;OK&quot; but any string.

    <p>
      If this kind of settings domains is OK for us, then we have yet to recompile these files by running the <strong>postmap</strong>&#160;command:
    </p>
    <pre>postmap /etc/postfix/virtual_mailbox_domains
postmap /etc/postfix/virtual_mailbox_users</pre>
    postmap will create additional files based on the above file names but with a &quot;.db&quot; suffix. Postfix will not do that automatically (common caveat) and will only obey the *.db files. To make these mappings make known to Postfix we add these lines to the main.cf configuration file:

    <pre>virtual_mailbox_domains = hash:/etc/postfix/virtual_mailbox_domains
virtual_mailbox_maps = hash:/etc/postfix/virtual_mailbox_users</pre>
    Now we have tools to set up thousands of domains and emails in 2 text files. Nice. Actually such data can be stored in a *SQL (MySQL in our case) (or perhaps other) database. Not much harder than using text files :). All needed to do is tell Postfix how to access two columns of mapping from a database table. This is done using '.cf' configuration files (see <a href="http://www.postfix.org/MYSQL_README.html">http://www.postfix.org/MYSQL_README.html</a>&#160; or run &quot;man 5 mysql_table&quot; in the shell. Example virtual_mailbox_maps.cf file:

    <pre># Information on how to connect to your MySQL server
user = someone
password = some_password
hosts = 127.0.0.1

# The database name on the MySQL server
dbname = mailserver

# The SQL query string
query = SELECT mailbox_path FROM virtual_users WHERE email_address='%s'</pre>
    In the database there's email_address LHS and mailbox_path RHS :), so the SQL query gets the RHS (mailbox path) for given email address (The &quot;%s&quot; is a placeholder filled by Postfix on every lookup.

    <p>
      Note that a lookup here must return only one row from the database. Postfix must uniquely know where the mailbox path for a given user is. There're other mappings though where it's allowed to have multiple RHS items for one LHS (e.g. virtual aliases as shown in the next section)
    </p>
    <p>
      To use the above configuration file you have to configure it in Postfix's main.cf file:
    </p>
    <pre>virtual_mailbox_maps = mysql:virtual_mailbox_maps.cf</pre>
    If later is found that this mapping is not doing what we intended to, then the &quot;postmap -q&quot; command can be used to ask Postfix what the RHS value for given LHS value would be. Say we're interested in the mailbox_path for the email_address &quot;john@foo.org&quot;:

    <pre>postmap -q john@example.org mysql:virtual_mailbox_maps.cf</pre>
    Postfix will then run the above SQL query with given argument:

    <pre>SELECT mailbox_path FROM virtual_users WHERE email_address='john@example.org'</pre>
    And should get

    <pre>/var/mail/example.org/john/Maildir</pre>
    as a result.

    <p>
      Note: in this tutorial we won't let Postfix deliver the email directly but rather it will hand over the incoming email to Dovecot so in other words we won't be using the above virtual_mailbox_maps.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1378398602305" ID="ID_1160949265" MODIFIED="1378398633752">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3>
      Virtual alias domains
    </h3>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1378381543614" ID="ID_1840668740" MODIFIED="1378381619197" POSITION="right" TEXT="3. Installing packages"/>
<node CREATED="1378381553142" ID="ID_1827397353" MODIFIED="1378381626800" POSITION="left" TEXT="4. Preparing database"/>
<node CREATED="1378381634494" ID="ID_1366880534" MODIFIED="1378381646572" POSITION="right" TEXT="5. Postfix / database configuration"/>
<node CREATED="1378381648046" ID="ID_19686282" MODIFIED="1378381655881" POSITION="left" TEXT="6. Setting up Dovecot"/>
<node CREATED="1378381659662" ID="ID_977362080" MODIFIED="1378381675741" POSITION="right" TEXT="7. Make Postfix talk to Dovecot"/>
<node CREATED="1378381681830" ID="ID_243990728" MODIFIED="1378381697021" POSITION="left" TEXT="8. Testing email delivery"/>
<node CREATED="1378381702598" ID="ID_1475778877" MODIFIED="1378381713965" POSITION="right" TEXT="9. Authenticated SMTP"/>
<node CREATED="1378381720726" ID="ID_52729128" MODIFIED="1378399831058" POSITION="left" TEXT="10. Proper SSL certificates for Postfix and Dovecot">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Are used for forwarding email from an email address to one or more other email addresses.
    </p>
    <p>
      Virtual alias domains can't receive email though. They only forward mail somewhere else.
    </p>
    <p>
      The virtual_alias_maps mapping contains forwardings (source, destination) of users or domains to other email addresses or entire domains. Incidentally virtual_alias_maps are obeyed for any received email. So in most case you do not really need virtual alias domains as you can declare all domains as virtual mailbox domains and user virtual alias maps for forwarding purposes. Technically defining a domain as a virtual alias domain makes Postfix accept email for that domain but you still need an entry in the virtual_alias_maps mapping to tell Postfix where to forward the email.
    </p>
    <p>
      A note on the virtual_alias_maps: they can return multiple RHS destinations (to forward to) for one left-hand side source (the original recipient). You can use that to forward an email to several recipients and to control whether you want to keep a copy.
    </p>
    <h4>
      Example 1: forward all email for john@example.org to jeff@example.com
    </h4>
    <p>
      
    </p>
    <pre>john@example.org   jeff@example.com</pre>
    A simple one. The source (john) and the destination (jeff). John will never see the email.

    <h4>
      Example 2: forward all email for john@example.org to jeff@example.com and receive a copy
    </h4>
    <p>
      
    </p>
    <pre>john@example.org   john@example.org
john@example.org   jeff@example.com</pre>
    It's the same as one row with RHS separated by commas

    <pre>john@example.org   john@example.org,jeff@example.com</pre>
    <h4>
      Example 3: forward all email for any domain in the example.org domain to joe@example.com
    </h4>
    <p>
      
    </p>
    <pre>@example.org   joe@example.com</pre>
    It's called a catch-all alias. It'll accept email for any user in the example.org domain and forward it to joe@example.com. If jill@example.org would not be an explicitly defined virtual user then her email would be caught by the catch-all alias and forwarded to joe@example.com

    <p>
      Beware: Catch-all aliases catch spam. Lots of spam. The may look comfortable because they forward all email to one person without the need for creating aliases. But spammers often try to guess email addresses at a know domain. And with catch-all alias you will receive spam for any of those guessed email addresses. Try to avoid them and rather define the existing email addresses. Even it it seems to be more work.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1378381747022" ID="ID_723110198" MODIFIED="1378381772434" POSITION="right" TEXT="11. DNS - to make mail servers find you"/>
<node CREATED="1378381777798" ID="ID_385630795" MODIFIED="1378381800133" POSITION="left" TEXT="12. SMTPd restrictions, SPF, DKIM and greylisting"/>
<node CREATED="1378381802078" ID="ID_1161093444" MODIFIED="1378381825827" POSITION="right" TEXT="13. Optional: Content scanning with AMaViS"/>
<node CREATED="1378381827246" ID="ID_1180670979" MODIFIED="1378381844813" POSITION="left" TEXT="14. Sending email from a dynamic IP address"/>
<node CREATED="1378381854118" ID="ID_266410629" MODIFIED="1378381869709" POSITION="right" TEXT="15. Managing domains, accounts and forwardings"/>
<node CREATED="1378381871254" ID="ID_132706783" MODIFIED="1378381876597" POSITION="left" TEXT="Troubleshooting"/>
</node>
</map>
