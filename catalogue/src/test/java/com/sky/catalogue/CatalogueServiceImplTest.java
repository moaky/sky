package com.sky.catalogue;

/* ------------------------------------------------------------------------- */
/*                                                                           */
/*                        Sky Unattended Program Test                        */
/*                                                                           */
/* @author:	Andrew Moakler                                               */
/* Date:        5th September 2016                                           */
/*                                                                           */
/* Description: Unit tests for the Catalogue Service.                        */
/*                                                                           */
/* ------------------------------------------------------------------------- */

import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author moaan01
 */
public class CatalogueServiceImplTest {
    
    public CatalogueServiceImplTest() {
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
     * Test of getProducts method, of the Catalogue Service.
     */
    
    @Test
    public void testGetProductsForLondon() {
        System.out.println("testGetProductsForLondon");
        String locationID = "London";
        CatalogueService instance = new CatalogueServiceImpl();
        ArrayList<Product> expectedResultArray = new ArrayList<>();
        expectedResultArray.add( new Product( "Sports" , "Arsenal TV"));
        expectedResultArray.add( new Product( "Sports" , "Chelsea TV"));
        expectedResultArray.add( new Product( "News"   , "Sky News"));
        expectedResultArray.add( new Product( "News"   , "Sky Sports News"));
        ArrayList<Product> resultArray = instance.getProducts(locationID);
        assertEquals(expectedResultArray, resultArray);
    }
    
    @Test
    public void testGetProductsForLiverpool() {
        System.out.println("testGetProductsForLiverpool");
        String locationID = "Liverpool";
        CatalogueService instance = new CatalogueServiceImpl();
        ArrayList<Product> expectedResultArray = new ArrayList<Product>();
        expectedResultArray.add( new Product( "Sports" , "Liverpool TV"));
        expectedResultArray.add( new Product( "News"   , "Sky News"));
        expectedResultArray.add( new Product( "News"   , "Sky Sports News"));
        ArrayList<Product> resultArray = instance.getProducts(locationID);
        assertEquals(expectedResultArray, resultArray);
    }
    
    @Test
    public void testGetProductsForBlankLocation() {
        System.out.println("testGetProductsForBlankLocation");
        String locationID = "";
        CatalogueService instance = new CatalogueServiceImpl();
        ArrayList<Product> expectedResultArray = new ArrayList<Product>();
        expectedResultArray.add( new Product( "News"   , "Sky News"));
        expectedResultArray.add( new Product( "News"   , "Sky Sports News"));
        ArrayList<Product> resultArray = instance.getProducts(locationID);
        assertEquals(expectedResultArray, resultArray);
    }
    
    @Test
    public void testGetProductsForNullLocation() {
        System.out.println("testGetProductsForNullLocation");
        String locationID = null;
        CatalogueService instance = new CatalogueServiceImpl();
        ArrayList<Product> expectedResultArray = new ArrayList<Product>();
        expectedResultArray.add( new Product( "News"   , "Sky News"));
        expectedResultArray.add( new Product( "News"   , "Sky Sports News"));
        ArrayList<Product> resultArray = instance.getProducts(locationID);
        assertEquals(expectedResultArray, resultArray);
    }
}
