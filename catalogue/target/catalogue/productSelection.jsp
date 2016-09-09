<html>
    <head>
        <title>
            Product Selection Page
        </title>
    </head>
    <body>
        <%@ page import="java.util.*" %>
	<%@ page import="javax.servlet.http.*" %>
	<%@ page import="javax.servlet.*" %>
        <%@ page import="com.sky.catalogue.*" %>
        
        <form id="myform" name="myform" method="post" action="confirmation.jsp">
        <script type=text/javascript>
        function addToBasket() {
            var newBasket = document.getElementById("basket").innerHTML;
            if (newBasket.indexOf(arguments[0]) === -1) {
              // Add to basket String
              newBasket     = newBasket + "\n " + arguments[0];
            } else {
              newBasket     = newBasket.replace(arguments[0], "");
            }
            document.getElementById("basket").innerHTML = newBasket;
        }
        
        function makeUL(array) {
        // Create the list element:
        var list = document.createElement('ul');

        for(var i = 0; i < array.length; i++) {
            // Create the list item:
            var item = document.createElement('li');

            // Set its contents:
            item.appendChild(document.createTextNode(array[i]));

            // Add it to the list:
            list.appendChild(item);
        }

    // Finally, return the constructed list:
    return list;
}
        </script>

        <TABLE width="80%" BORDER="1" >
            <TR> 
                <td rowspan="10" > X </td>
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
   if( cookies != null ){
      out.println("<h2> Found Cookies Name and Value</h2>");
      for (int i = 0; i < cookies.length; i++){
         cookie = cookies[i];
         out.print("Name : " + cookie.getName( ) + ",  ");
         out.print("Value: " + cookie.getValue( )+" <br/>");
         customerID = cookie.getValue( );
      }
  }else{
      out.println("<h2>No cookies founds</h2>");
  }

  
%>

Hello in productSelection.jsp with customer 
   		<%=customerID%>
                
        <%
            // Lets get the location from the CustomerLocationService.
            if ( customerID != null ) {
                CustomerLocationService instance = new CustomerLocationServiceStub();
                locationID = instance.getCustomerLocation(customerID);
            }
        %>
        
Hello in productSelection.jsp with location 
   		<%=locationID%>
                
        <%
            CatalogueService instance = new CatalogueServiceImpl();
            ArrayList<Product> Products = instance.getProducts(locationID);
        %>
                
        Have result array size of <%=Products.size()%> </br>
        
        <input type="hidden" id="customerID" name="customerID" value="<%=customerID%>">
        <input type="hidden" id="locationID" name="locationID" value="<%=locationID%>">
        
        <TABLE width="80%" BORDER="0" >
            <thead> </thead>
            <tr>
                <td> 
            <TABLE width="30%" BORDER="1" > 
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
            
            <TABLE width="30%" BORDER="1" > 
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
            <TABLE width="30%" BORDER="1" > 
                <tr> Basket <br> </tr>
                <tr>
                    <td id="basket" />
                </tr>
                <tr>
                    <input type="submit" value="Checkout" onclick="window.location.href='demo2.jsp'" />
                </tr>
            </TABLE>
                </td>
            </tr>
        </TABLE>

        <TABLE width="80%" BORDER="1" >
            <TR> 
                <td rowspan="100"> X </td>
            </TR>
        </table>
        </form>
            
        <p><a href="index.jsp">Back to Start</a></p>
    </body>
</html>
