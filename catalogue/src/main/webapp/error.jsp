<%@ page isErrorPage="true" import="java.io.*" %>
<!-- ----------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Error Page.                                                  */
/*                                                                           */
/* ------------------------------------------------------------------------ -->
<html>
<body>
    <h1 align="center">Sky Technology Unattended Programming Test</h1>
    <h2 align="center">Error Handling Page</h2>
    
    <h3 align="center">Unable to process your request due to : <%=exception.getMessage()%> <br> <br>
        Please try again.
    </h3>
   
   <p align="center"><a href="index.jsp">Go To Home Page</a></p>
</body>
</html>

<!-- ----------------------------------------------------------------------- */
/*                               End of file.                                */
/* -----------------------------------------------------------------------  -->