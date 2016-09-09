package com.sky.catalogue;

/* ------------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* @author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Unit tests for the Customer Location Service Stub.           */
/*                                                                           */
/* ------------------------------------------------------------------------- */

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class CustomerLocationServiceStubTest {

    public CustomerLocationServiceStubTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of getCustomerLocation method, of class CustomerLocationServiceStub.
     */
    
    @Test
    public void testGetCustomerLocationForTheLordMayorOfLondon() {
        System.out.println("getCustomerLocationForTheLordMayorOfLondon");
        String customerID = "The Lord Mayor Of London";
        CustomerLocationService instance = new CustomerLocationServiceStub();
        String expResult = "London";
        String result = instance.getCustomerLocation(customerID);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testGetCustomerLocationForTheMayorOfLiverpool() {
        System.out.println("getCustomerLocationForTheMayorOfLiverpool");
        String customerID = "The Mayor Of Liverpool";
        CustomerLocationService instance = new CustomerLocationServiceStub();
        String expResult = "Liverpool";
        String result = instance.getCustomerLocation(customerID);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testGetCustomerLocationForUnknownCustomer() {
        System.out.println("getCustomerLocationForUnknownCustomer");
        String customerID = "Unknown";
        CustomerLocationService instance = new CustomerLocationServiceStub();
        String expResult = "";
        String result = instance.getCustomerLocation(customerID);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testGetCustomerLocationForUndefinedCustomer() {
        System.out.println("getCustomerLocationForUndefinedCustomer");
        String customerID = "";
        CustomerLocationService instance = new CustomerLocationServiceStub();
        String expResult = "";
        String result = instance.getCustomerLocation(customerID);
        assertEquals(expResult, result);
    }

}

/* ------------------------------------------------------------------------- */
/*                               End of file.                                */
/* ------------------------------------------------------------------------- */

