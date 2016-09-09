package com.sky.catalogue;

/* ------------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Interface definition for the Customer Location Service.      */
/*                                                                           */
/* ------------------------------------------------------------------------- */
public interface CustomerLocationService {

    /**
     * Return the location identifier for the given Customer.
     *
     * @param customerID
     * @return
     * @throws com.sky.catalogue.CustomerLocationServiceException
     */
    String getCustomerLocation(String customerID) throws CustomerLocationServiceException;
}

/* ------------------------------------------------------------------------- */
/*                               End of file.                                */
/* ------------------------------------------------------------------------- */
