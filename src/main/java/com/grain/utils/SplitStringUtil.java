/**
 * com.grain.utils class
 *
 * @Author: peiyi li
 * @Date: 2019-12-29 17:40
 */

package com.grain.utils;

import java.util.ArrayList;
import java.util.List;

/**
 *@author lpy
 *@date 2019-12-29 17:40
 */


public class SplitStringUtil {

    public static List<String> splitString(String s) {

        List<String> stringList = new ArrayList<>();
        String[] split = s.split(",");
        for (String st2 : split) {
            stringList.add(st2);
        }
        return stringList;

    }
}
