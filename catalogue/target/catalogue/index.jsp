<html>
<body>
<h2>Hello World!</h2>
<%
   // Create cookies for first and last names.      
   Cookie customerID = new Cookie("customerID","The Lord Mayor Of London");

   // Add both the cookies in the response header.
   response.addCookie( customerID );
%>
<p><a href="productSelection.jsp">London</a></p>
</body>
</html>
