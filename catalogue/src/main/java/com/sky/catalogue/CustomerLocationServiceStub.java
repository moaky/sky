package com.sky.catalogue;

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

public class CustomerLocationServiceStub implements CustomerLocationService {

    /**
     * Return hard coded values for the Location ID.
     *
     * @param customerID
     * @return the Location ID associated with the Customer.
     */
    @Override
    public String getCustomerLocation(String customerID) throws CustomerLocationServiceException {
        String locationID = "";
        
        if ( customerID == null ) {
            throw new CustomerLocationServiceException();            
        } else {
            switch ( customerID ) {
                case "The Lord Mayor Of London":
                    locationID = "London";
                    break;
                case "The Mayor Of Liverpool":
                    locationID = "Liverpool";
                    break;
                default:
                    throw new CustomerLocationServiceException();  
            }
            
        }
        
        return locationID;
    }
}

/* ------------------------------------------------------------------------- */
/*                               End of file.                                */
/* ------------------------------------------------------------------------- */
