<%
String id= (String)session.getAttribute("id");
%>
<%="welcome "+id%>
<a href="addpro.html">Add product</a>
<a href="Show.jsp">Show product</a>
<a href="Update.jsp">Update product</a>
<a href="Delete.jsp">Delete product</a>