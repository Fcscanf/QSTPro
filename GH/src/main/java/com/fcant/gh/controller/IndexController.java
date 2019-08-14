package com.fcant.gh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;

/**
 * IndexController
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 17:16 2019-08-14/0014
 */
@Controller
public class IndexController {

    @RequestMapping("/index")
    public String index(ModelMap map) {
        map.put("thText", "设置文本内容");
        map.put("thUText", "设置文本内容");
        map.put("thValue", "设置当前元素的value值");
        map.put("thEach", Arrays.asList("列表", "遍历列表"));
        map.put("thIf", "msg is not null");
        return "index";
    }
}
