<h1>First jsp page</h1>
<h2>
<%
String s="hello";
//out.println(s);
%>
<%=s %>
</h2>
<%! String a="i am global bacause of  declaration tag";%>
<%=a%>