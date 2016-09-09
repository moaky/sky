<!-- ----------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Product Selection Confirmation Page.                         */
/*                                                                           */
/* ------------------------------------------------------------------------ -->
<html>
<body>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="com.sky.catalogue.*" %>
    
    <h1 align="center">Sky Technology Unattended Programming Test</h1>
    <h2 align="center">Confirmation Page</h2>

    <div style="margin:0 auto;padding:20px;">
        <%
            Enumeration e = request.getParameterNames();

            while ( e.hasMoreElements() ) {
                    String paramName = (String) e.nextElement();

                    String paramValue = request.getParameter( paramName );

                    // Write out the output
                    out.println("<h3 align=\"center\"> " + paramName + 
                                    " </b> has value <b>" + paramValue + "</b> </h3>");
            }
        %>
    </div>
        
    <p align="center"><a href="index.jsp">Go To Home Page</a></p>
</body>
</html>

<!-- ----------------------------------------------------------------------- */
/*                               End of file.                                */
/* -----------------------------------------------------------------------  -->