package com.sky.catalogue;

import java.util.Objects;

/* ------------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: A representation of a Category and Product.                  */
/*                                                                           */
/* ------------------------------------------------------------------------- */

/**
 *
 * @author moaan01
 */
public class Product {
    private String category;
    private String product;
    
    public Product ( String category, String product ) {
        this.category = category;
        this.product  = product;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Product other = (Product) obj;
        if (!Objects.equals(this.category, other.category)) {
            return false;
        }
        return Objects.equals(this.product, other.product);
    }
    
}
