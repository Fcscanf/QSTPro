package com.fcant.dl.service.impl;

import com.fcant.dl.bean.Info;
import com.fcant.dl.mapper.InfoMapper;
import com.fcant.dl.service.InfoService;
import com.fcant.dl.util.MsgUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    @Autowired
    InfoMapper infoMapper;

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
