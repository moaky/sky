package com.sky.catalogue;

/* ------------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* Author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Custom Exception Class for the CustomerLocationService.      */
/*                                                                           */
/* ------------------------------------------------------------------------- */

public class CustomerLocationServiceException extends Exception {
    
    public CustomerLocationServiceException() {
        super("There was a problem retrieving the customer information.");
    }
    
    public CustomerLocationServiceException(String message) {
        super(message);
    }
    
}

/* ------------------------------------------------------------------------- */
/*                               End of file.                                */
/* ------------------------------------------------------------------------- */