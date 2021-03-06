package com.fcant.dl.controller;

import com.fcant.dl.bean.Info;
import com.fcant.dl.service.InfoService;
import com.fcant.dl.util.FcantUtils;
import com.fcant.dl.util.MsgUtil;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.util.Date;

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
     * 设置信息的审核状态
     *
     * @param info id
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:41 2019-08-24/0024
     */
    @RequestMapping("/check")
    MsgUtil setCheck(Info info) {
        return infoService.setChecked(info);
    }

    /**
     * 设置信息的付费状态
     *
     * @param info id
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:41 2019-08-24/0024
     */
    @RequestMapping("/pay")
    MsgUtil setPay(Info info) {
        return infoService.setPay(info);
    }

    /**
     * 查询信息根据ID
     *
     * @param info -id
     * @return MsgUtil
     * @author Fcant
     * @date 下午 19:44 2019-08-24/0024
     */
    @RequestMapping("/sel")
    MsgUtil selectInfoById(Info info) {
        return infoService.selectInfoById(info);
    }

    /**
     * 多条件检索信息-根据校验状态和支付状态
     *
     * @param pageNum 当前页数
     * @param pageSize 页面数据条数
     * @param info 查询的条件
     * @return MsgUtil
     * @author Fcant
     * @date 下午 19:43 2019-08-24/0024
     */
    @RequestMapping("/select")
    public MsgUtil selectByPayCheck(int pageNum, int pageSize, Info info) {
        Page page = new Page();
        page.setPageNum(pageNum);
        page.setPageSize(pageSize);
        return infoService.selectAllByCheckPay(page, info);
    }

    /**
     * 信息查询-全字匹配、模糊匹配
     *
     * @param pageNum 分页属性当前页数
     * @param pageSize 页面size
     * @param type 属性
     * @param key 查询的关键字
     * @param searchType 查询的类型-模糊查询、全字查询
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:21 2019-08-21/0021
     */
    @RequestMapping("/search")
    public MsgUtil searchByType(int pageNum, int pageSize, String type, String key, String searchType) throws NoSuchFieldException, IllegalAccessException {
        Page page = new Page();
        page.setPageNum(pageNum);
        page.setPageSize(pageSize);
        return infoService.search(page, type, key, searchType);
    }

    /**
     * 添加信息
     *
     * @param info 前台参数的参数,部分需要后台初始化属性值
     * @return MsgUtil
     * @author Fcant
     * @date 下午 16:31 2019-08-19/0019
     */
    @RequestMapping("/add")
    public MsgUtil addInfo(Info info) throws ParseException {
        info.setInfoCheck("0");
        info.setInfoPayfor("0");
        info.setInfoStatus("0");
        info.setInfoDate(FcantUtils.formatDate(new Date()));
        System.out.println(info);
        return infoService.insertNewInfo(info);
    }
}
