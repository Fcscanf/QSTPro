package com.fcant.dl.test;

import org.junit.Test;

import java.util.Date;
import java.util.Random;

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

    /**
     * 中秋晚会表演随机名单
     *
     * @author Fcant
     * @date 下午 18:55 2019-08-23/0023
     */
    @Test
    public void Test() {
        Random random = new Random();
        for (int i = 0; i < 20; i++) {
            System.out.println(random.nextInt(47) + 1);
        }
    }
}
