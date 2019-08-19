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
     * 插入新的信息
     *
     * @param info 信息
     * @return int
     * @author Fcant
     * @date 下午 19:57 2019-08-19/0019
     */
    MsgUtil insertNewInfo(Info info);
}
