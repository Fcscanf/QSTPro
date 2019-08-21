package com.fcant.dl.service;

import com.fcant.dl.bean.Info;
import com.fcant.dl.util.MsgUtil;

/**
 * InfoService
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 19:58 2019-08-19/0019
 */
public interface InfoService {

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
    MsgUtil search(String type, String key, String searchType) throws NoSuchFieldException, IllegalAccessException;

    /**
     * 全字匹配查询
     *
     * @param info 查询的对象
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:45 2019-08-21/0021
     */
    MsgUtil searchAll(Info info);

    /**
     * 模糊查询
     *
     * @param info 查询的对象
     * @return MsgUtil
     * @author Fcant
     * @date 下午 20:45 2019-08-21/0021
     */
    MsgUtil searchLike(Info info);

    /**
     * 插入新的信息
     *
     * @param info 信息
     * @return int
     * @author Fcant
     * @date 下午 19:57 2019-08-19/0019
     */
    MsgUtil insertNewInfo(Info info);
}
