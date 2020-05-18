package com.shj.java.date;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * description:
 * <p>
 * author: sunhaojie
 * create: 2019/11/05 14:49
 */
public class Test {
    public static void main(String[] args) {

//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
//        String ss = simpleDateFormat.format(new Date());
//        System.out.println(ss);
//
//        System.out.println(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
        String timestamps = new SimpleDateFormat("yyMMddHHmmss").format(new Date());
        System.out.println(timestamps);
        System.out.println(new Date(0));

    }
}
