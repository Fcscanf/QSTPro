package com.fcant.dl.service.impl;

import com.fcant.dl.bean.Info;
import com.fcant.dl.mapper.InfoMapper;
import com.fcant.dl.service.InfoService;
import com.fcant.dl.util.MsgUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.util.List;

/**
 * InfoServiceImpl
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 20:05 2019-08-19/0019
 */
@Service
public class InfoServiceImpl implements InfoService {

    private String searchTypeVal = "all";

    @Autowired
    InfoMapper infoMapper;

    /**
     * 根据Info-id查询信息
     *
     * @param info id
     * @return MsgUtil
     * @author Fcant
     * @date 下午 19:40 2019-08-24/0024
     */
    @Override
    public MsgUtil selectInfoById(Info info) {
        Info infoById = infoMapper.selectInfoById(info);
        return MsgUtil.success().add("info", infoById);
    }

    /**
     * 根据付费状态、审核状态查询信息
     *
     * @param page 分页的信息：当前页和页面数据大小
     * @param info 查询的条件：付费、审核、信息的类别
     * @return MsgUtil
     * @author Fcant
     * @date 下午 16:02 2019-08-23/0023
     */
    @Override
    public MsgUtil selectAllByCheckPay(Page page, Info info) {
        PageHelper.startPage(page.getPageNum(), page.getPageSize());
        List<Info> infos = infoMapper.selectAllByCheckPay(info);
        PageInfo<Info> pageHelper = new PageInfo<>(infos);
        return MsgUtil.success("操作成功").add("page", pageHelper);
    }

    /**
     * 信息查询根据不同的查询进入不同的方法
     *
     * @param page 页面信息-分页大小和当前页数
     * @param type 属性
     * @param key 查询的关键字
     * @param searchType 查询的类型-模糊查询、全字查询
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:29 2019-08-21/0021
     */
    @Override
    public MsgUtil search(Page page, String type, String key, String searchType) throws NoSuchFieldException, IllegalAccessException {
        Info info = new Info();
        Field field = Info.class.getDeclaredField(type);
        field.setAccessible(true);
        field.set(info, key);
        if (searchTypeVal.equals(searchType)) {
            return searchAll(page, info);
        } else {
            return searchLike(page, info);
        }
    }

    /**
     * 全字匹配查询
     *
     * @param page 页面信息-分页大小和当前页数
     * @param info 查询的对象
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:45 2019-08-21/0021
     */
    @Override
    public MsgUtil searchAll(Page page, Info info) {
        PageHelper.startPage(page.getPageNum(), page.getPageSize());
        List<Info> infos = infoMapper.selectByAll(info);
        PageInfo<Info> pageHelper = new PageInfo<>(infos);
        return MsgUtil.success("操作成功").add("page", pageHelper);
    }

    /**
     * 模糊查询
     *
     * @param page 页面信息-分页大小和当前页数
     * @param info 查询的对象
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:45 2019-08-21/0021
     */
    @Override
    public MsgUtil searchLike(Page page, Info info) {
        PageHelper.startPage(page.getPageNum(), page.getPageSize());
        List<Info> infos = infoMapper.selectByLike(info);
        PageInfo<Info> pageHelper = new PageInfo<>(infos);
        return MsgUtil.success("操作成功").add("page", pageHelper);
    }

    /**
     * 插入新的信息
     *
     * @param info 信息
     * @return MsgUtil
     * @author Fcant
     * @date 下午 19:57 2019-08-19/0019
     */
    @Override
    public MsgUtil insertNewInfo(Info info) {
        int newInfo = infoMapper.insertNewInfo(info);
        if (newInfo == 1) {
            return MsgUtil.success("发布成功！");
        } else {
            return MsgUtil.fail("发布失败");
        }
    }
}
