<!-- ----------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Product Selection Home Page.                                 */
/*                                                                           */
/* ------------------------------------------------------------------------ -->
<html>
<head>
</head>
<body>
    <form  name="myForm" action="productSelection.jsp" method="post">
        <h1 align="center">Sky Technology Unattended Programming Test</h1>
        <h2 align="center">Product Selection</h2>
        
        <h3 align="center">Setting the customerID Cookie with the value of "The Lord Mayor Of London"</h3>
        
        <%
            // Create cookies for first and last names.      
            Cookie customerID = new Cookie("customerID", "The Lord Mayor Of London");
            // Cookie customerID = new Cookie("customerID", "The Mayor Of Liverpool");
            // Cookie customerID = new Cookie("customerID", "An Unknown user");

            // Add both the cookies in the response header.
            response.addCookie( customerID );
        %>

        <br>
        <h1 align="center">
            <input align="center" type="submit" value="Go To Product Selection Page">
        </h1>
    </form>
</body>
</html>

<!-- ----------------------------------------------------------------------- */
/*                               End of file.                                */
/* -----------------------------------------------------------------------  -->
