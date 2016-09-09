<html>
<body>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="com.sky.catalogue.*" %>
    
<h2>Hello World!</h2>

<%
		out.println("<H2> Parameter Names Information </H2>");
		Enumeration e = request.getParameterNames();

		out.println("<H2> Parameter Information </H2>");

		while ( e.hasMoreElements() ) {
			String paramName = (String) e.nextElement();

			String paramValue = request.getParameter( paramName );

			// Write out the output
			out.println("Param named <b> " + paramName + 
					" </b> has value <b>" + paramValue + "</b> <br>");
		}
		
		Enumeration sa = session.getAttributeNames();
   		out.println("<H2> Session Attribute Names Information </H2>");
	
		while ( sa.hasMoreElements() ) {
			String attrName1 = (String) sa.nextElement();

			Object attrValue1 = session.getAttribute( attrName1 );
	
			// Write out the output
			out.println("Session Attribute named <b> " + attrName1 + 
				" </b> has value <b>" + attrValue1.toString() + "</b> <br>");
		}
   	%>
        
        
</body>
</html>
