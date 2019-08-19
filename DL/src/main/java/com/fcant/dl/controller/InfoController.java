package com.fcant.dl.controller;

import com.fcant.dl.bean.Info;
import com.fcant.dl.service.InfoService;
import com.fcant.dl.util.MsgUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * InfoController
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 16:29 2019-08-19/0019
 */
@Controller
@ResponseBody
@RequestMapping("/info")
public class InfoController {

    @Autowired
    InfoService infoService;

    /**
     * 添加信息
     *
     * @param info 前台参数的参数,部分需要后台初始化属性值
     * @return MsgUtil
     * @author Fcant
     * @date 下午 16:31 2019-08-19/0019
     */
    @RequestMapping("/add")
    public MsgUtil addInfo(Info info) {
        info.setInfoCheck("0");
        info.setInfoPayfor("0");
        info.setInfoStatus("0");
        System.out.println(info);
        return infoService.insertNewInfo(info);
    }
}
