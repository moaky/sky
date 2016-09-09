package com.sky.catalogue;

import java.util.ArrayList;

/* ------------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Interface definition for the Catalogue Service.              */
/*                                                                           */
/* ------------------------------------------------------------------------- */
public interface CatalogueService {

    /**
     * Return the product identifier for the given location.
     *
     * @param locationID
     * @return
     */
    ArrayList<Product> getProducts(String locationID);
}

/* ------------------------------------------------------------------------- */
/*                               End of file.                                */
/* ------------------------------------------------------------------------- */
