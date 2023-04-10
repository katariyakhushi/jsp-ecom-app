<%
   String email=(String) session.getAttribute("uid");
%>
<%="welcome "+email%>
<a href="viewcart.jsp">View cart Items</a><br><br>
<a href="index.html">Logout</a><br><br>
<%!int total=0; %>

<%@include file="db.jsp"%>
 <%
	String qr="select * from productss";
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery(qr);
	 if(rs.next())
	 {
		 do
		 {
			 String id=rs.getString("id");
			 String name=rs.getString("name");
			 int price=rs.getInt("price");
			 String cat=rs.getString("cat");
			 String cmp=rs.getString("cmp");
			
			 %>

		   <div style="height: 300px;width: 300px;background-color: orange; color: white;float: left; margin: 2px">
			<h4>id:<%=id%> </h4>
			<h1>Name:<%=name %></h1>
			<h4>Price:<%=price %></h4>
			<h4>Category:<%=cat %></h4>
			<h4>company:<%=cmp %></h4>
			<a href="https://www.paypal.com/in/signin">Buy now</a><br><br>
			<a href="addcart.jsp?id=<%=id %>&name=<%=name %>&price=<%=price%>&cat=<%=cat%>&cmp=<%=cmp%>">Add to cart</a>
			</div>
		    <%
		 }while(rs.next());
		 
	 }else{
		 out.println("record not found");
	 }
	 %>
		    