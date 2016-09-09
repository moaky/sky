package com.sky.catalogue;

import java.util.ArrayList;

/* ------------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Stub of the Customer Location Service.                       */
/*                                                                           */
/* ------------------------------------------------------------------------- */

public class CatalogueServiceImpl implements CatalogueService {

    /**
     * Return product values based on the Location ID.
     *
     * @return an array of products based on the location identifier.
     */
    @Override
    public ArrayList<Product> getProducts(String locationID) {
        ArrayList<Product> products = new ArrayList<>();
        
        if ( locationID != null ) {
            
            switch ( locationID ) {
                case "London":
                    products.add( new Product( "Sports" , "Arsenal TV"));
                    products.add( new Product( "Sports" , "Chelsea TV"));
                    break;
                case "Liverpool":
                    products.add(new Product( "Sports" , "Liverpool TV"));
                    break;
                default:                    
                    break;
            }
            
        }
        
        /* Always add Sky News and Sky Sports News regardless */
        products.add(new Product( "News" , "Sky News"));
        products.add(new Product( "News" , "Sky Sports News"));
        
        return products;
    }
}

/* ------------------------------------------------------------------------- */
/*                               End of file.                                */
/* ------------------------------------------------------------------------- */
