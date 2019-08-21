package com.fcant.dl.test;

import org.junit.Test;

import java.util.Date;

/**
 * DateTest
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 上午 9:38 2019-08-21/0021
 */
public class DateTest {

    @Test
    public void localTimeTest() {
        Date date = new Date();
        System.out.println(date.toString());
    }
}
