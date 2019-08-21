package com.fcant.dl.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * FcantUtils
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 上午 11:42 2019-08-21/0021
 */
public class FcantUtils {
    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /**
     * 解决SimpleDateFormat会线程异常的情况
     *
     * @param date
     * @return String
     * @throws ParseException
     * @author Fcscanf
     * @date 下午 13:22 2019-08-10/0010
     */
    public static String formatDate(Date date) throws ParseException {
        synchronized(sdf){
            return sdf.format(date);
        }
    }

    /**
     * 解决SimpleDateFormat会线程异常的情况
     *
     * @param strDate
     * @return Date
     * @throws ParseException
     * @author Fcscanf
     * @date 下午 13:22 2019-08-10/0010
     */
    public static Date parse(String strDate) throws ParseException {
        synchronized(sdf){
            return sdf.parse(strDate);
        }
    }
}
