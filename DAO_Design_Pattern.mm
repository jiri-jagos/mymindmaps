<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1494694956769" ID="ID_1871493965" MODIFIED="1494695891041" TEXT="DAO">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h1>
      Data Access Object - industry design pattern
    </h1>
    <p>
      Thx to https://dzone.com/articles/database-interaction-dao-and
    </p>
    <p>
      
    </p>
    <p>
      Helps perform CRUD operations on the database. Provides methods for insertion, deletion, update and finding of database entities / objects.
    </p>
    <p>
      
    </p>
    <p>
      The DAO pattern <b>is supposed to have a DAO interface, class and factory corresponding to each table in the database</b>.
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1494695617807" ID="ID_138003290" MODIFIED="1494695928492" POSITION="right" TEXT="Interface">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Interface could look like this ...
    </p>
    <p>
      
    </p>
    <pre><code class="java">package com.company.app.dao;

public interface {    
&#x9;public Employee[] findAll() throws SQLException;    
&#x9;public Employee findByPK(EmployeePK) throws SQL Exception;    
&#x9;public Employee[] findbyemployeename(String EmployeeName) throws SQLException;    
&#x9;public boolean insert(Employee employee) throws SQLException;    
&#x9;public boolean update(Employee employee) throws SQLException;   
&#x9;public boolean delete(Employee employee) throws SQLException;
}</code>
</pre>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1494695626076" ID="ID_718708648" MODIFIED="1494696011051" POSITION="left" TEXT="Factory">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Factory could be implemented like this ...
    </p>
    <p>
      
    </p>
    <pre><code class="java">package com.company.app.factory;

public class EmployeeDAOFactory {      
&#x9;public static EmployeeDAO create() {
&#x9;&#x9;return (new EmployeeDAOImpl());      
&#x9;}
}</code>
</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</map>
