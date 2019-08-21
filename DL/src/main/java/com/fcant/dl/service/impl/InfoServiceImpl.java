package com.fcant.dl.service.impl;

import com.fcant.dl.bean.Info;
import com.fcant.dl.mapper.InfoMapper;
import com.fcant.dl.service.InfoService;
import com.fcant.dl.util.MsgUtil;
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

    private String SEARCH_TYPE = "all";

    @Autowired
    InfoMapper infoMapper;

    /**
     * 信息查询根据不同的查询进入不同的方法
     *
     * @param type 属性
     * @param key 查询的关键字
     * @param searchType 查询的类型-模糊查询、全字查询
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:29 2019-08-21/0021
     */
    @Override
    public MsgUtil search(String type, String key, String searchType) throws NoSuchFieldException, IllegalAccessException {
        Info info = new Info();
        Field field = Info.class.getDeclaredField(type);
        field.setAccessible(true);
        field.set(info, key);
        if (SEARCH_TYPE.equals(searchType)) {
            return searchAll(info);
        } else {
            return searchLike(info);
        }

    }

    /**
     * 全字匹配查询
     *
     * @param info 查询的对象
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:45 2019-08-21/0021
     */
    @Override
    public MsgUtil searchAll(Info info) {
        PageHelper.startPage(1, 5);
        List<Info> infos = infoMapper.selectByAll(info);
        PageInfo<Info> pageHelper = new PageInfo<>(infos);
        return MsgUtil.success("操作成功").add("page", pageHelper);
    }

    /**
     * 模糊查询
     *
     * @param info 查询的对象
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:45 2019-08-21/0021
     */
    @Override
    public MsgUtil searchLike(Info info) {
        PageHelper.startPage(1, 5);
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
