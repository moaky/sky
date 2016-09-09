
function addToBasket() {
    var newBasket = document.getElementById("basket").innerHTML;
    if (newBasket.indexOf(arguments[0]) === -1) {
        // Add to basket String
        newBasket = newBasket + "\n " + arguments[0];
    } else {
        newBasket = newBasket.replace(arguments[0], "");
    }
    document.getElementById("basket").innerHTML = newBasket;
}

function makeUL(array) {
    // Create the list element:
    var list = document.createElement('ul');

    for (var i = 0; i < array.length; i++) {
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

// Used in index.jsp to get the CustomerID from the radio field
function getCustomerID() {
  var customerRadio = document.getElementsByName('customer');
  var customerValue;
  for(var i = 0; i < customerRadio.length; i++){
      if(customerRadio[i].checked){
          customerValue = customerRadio[i].value;
      }
  }
  return customerValue;
}



