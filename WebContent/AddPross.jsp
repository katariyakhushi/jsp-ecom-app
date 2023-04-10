<%@page import="pp.product"%>
<%
   String id=request.getParameter("id");
    String name=request.getParameter("name");
    String p=request.getParameter("price");
    int price=Integer.parseInt(p);
    String cat=request.getParameter("cat");
    String cmp=request.getParameter("cmp");
    product p1=new product();
    p1.setId(id);
    p1.setName(name);
    p1.setPrice(price);
    p1.setCat(cat);
    p1.setCmp(cmp);
%>
<%=p1.getId()%>
<%=p1.getName()%>
<%=p1.getPrice()%>
<%=p1.getCat()%>
<%=p1.getCmp()%>
