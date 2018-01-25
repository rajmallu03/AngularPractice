package com.test;

/**
 * Created by Joel on 1/3/2018.
 */


import java.util.Random;

public class random{

    public static void main(String args[])
    {
        // create instance of Random class
        Random rand = new Random();

        // Generate random integers in range 0 to 999
        int rand_int1 = rand.nextInt(10000);


        // Print random integers
        System.out.println("Random Integers: SS"+rand_int1);

    }
}