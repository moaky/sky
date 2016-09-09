<!-- ----------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Product Selection Page.                                      */
/*                                                                           */
/* ------------------------------------------------------------------------ -->
<html>
    <head>
        <title>
            Product Selection Page
        </title>
    </head>
    <body>
        <%@ page errorPage="error.jsp" %>
        <%@ page import="java.util.*" %>
        <%@ page import="javax.servlet.http.*" %>
        <%@ page import="javax.servlet.*" %>
        <%@ page import="com.sky.catalogue.*" %>
        <script src="catalogue.js"></script>
        
        <h1 align="center">Sky Technology Unattended Programming Test</h1>
        <h2 align="center">Product Selection Page</h2>
        
        <div style="margin:0 auto;padding:20px;">
        <form id="myform" name="myform" method="post" action="confirmation.jsp">
            
            <TABLE width="100%" BORDER="1" >
                <TR> 
                    <td rowspan="10" > &nbsp </td>
                </TR>
            </TABLE>

            <%
                String customerID = new String();
                String locationID = new String();
            %>

            <%
               Cookie cookie = null;
               Cookie[] cookies = null;
               // Get an array of Cookies associated with this domain
               cookies = request.getCookies();
               if ( cookies != null ){
                   //out.println("<h2> Found Cookies Name and Value</h2>");
                   for (int i = 0; i < cookies.length; i++){
                       cookie = cookies[i];
                       if ( cookie.getName().equals("customerID") ) {
                           //out.print("Name : " + cookie.getName( ) + ",  ");
                           //out.print("Value: " + cookie.getValue( )+" <br/>");
                           customerID = cookie.getValue( );
                           break;
                       }
                   }
                } else {
                  //out.println("<h2>No cookies founds</h2>");
                  ;
                }
                // Lets get the location from the CustomerLocationService.
                if ( customerID != null ) {
                    CustomerLocationService instance = new CustomerLocationServiceStub();
                    try {
                        locationID = instance.getCustomerLocation(customerID);
                    } catch ( Exception e ) {
                        throw e;
                    }
                }

                CatalogueService instance = new CatalogueServiceImpl();
                ArrayList<Product> Products = instance.getProducts(locationID);
            %>

            <input type="hidden" id="customerID" name="customerID" value="<%=customerID%>">
            <input type="hidden" id="locationID" name="locationID" value="<%=locationID%>">

            <TABLE width="100%" BORDER="1" >
                <thead> </thead>
                <tr>
                    <td> 
                        <TABLE width="33%" style="border: 5px solid #990000; border-collapse: collapse" > 
                            <tr> Sports <br> </tr>
                            <%
                                if (Products != null && Products.size() > 0) {
                                    for (Product p : Products ) {
                                        if (p.getCategory().equalsIgnoreCase("Sports")) {
                            %>
                                            <tr>
                                            <input type="checkbox" name="<%=p.getProduct()%>" value="ON" onchange="addToBasket('<%=p.getProduct()%>')" /> <%=p.getProduct()%> <br>
                                            </tr>
                            <%
                                        }
                                    }
                                }
                            %>

                        </TABLE>
                    </td>
                    <td> 

                        <TABLE width="33%" style="border: 5px solid #990000; border-collapse: collapse" > 
                            <tr> News <br> </tr>
                            <%
                                if (Products != null && Products.size() > 0) {
                                    for (Product p : Products ) {
                                        if (p.getCategory().equalsIgnoreCase("News")) {
                            %>
                                            <tr>
                                            <input type="checkbox" name="<%=p.getProduct()%>" value="ON" onchange="addToBasket('<%=p.getProduct()%>')" /> <%=p.getProduct()%> <br>
                                            </tr>
                            <%
                                        }
                                    }
                                }
                            %>
                        </TABLE>
                    </td>
                    <td>
                        <TABLE width="33%" style="border: 5px solid #990000; border-collapse: collapse" > 
                            <tr> Basket <br> </tr>
                            <tr>
                                <textarea rows="5" cols="20" id="basket">
                                </textarea>
                            </tr>
                            </br>
                            <tr>
                                <input type="submit" value="Checkout" onclick="window.location.href = 'confirmation.jsp'" />
                            </tr>
                        </TABLE>
                    </td>
                </tr>
            </TABLE>

            <TABLE width="100%" BORDER="1" >
                <TR> 
                    <td rowspan="100"> &nbsp </td>
                </TR>
            </table>
        </form>
        </div>

        <p align="center"><a href="index.jsp">Go To Home Page</a></p>
    </body>
</html>

<!-- ----------------------------------------------------------------------- */
/*                               End of file.                                */
/* -----------------------------------------------------------------------  -->