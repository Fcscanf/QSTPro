package com.fcant.dl.util;

import lombok.Data;

import java.util.HashMap;
import java.util.Map;

/**
 * MsgUtils
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 15:20 2019-08-18/0018
 */
@Data
public class MsgUtil {
    /**
     * 状态码 200-成功 400-失败
     */
    private int code;

    /**
     * 提示信息
     */
    private String msg;

    /**
     * 用户返回给浏览器的数据
     */
    private Map<String, Object> extend = new HashMap<String, Object>();

    public static MsgUtil success(String msg) {
        MsgUtil msgUtil = new MsgUtil();
        msgUtil.setCode(200);
        msgUtil.setMsg(msg);
        return msgUtil;
    }

    public static MsgUtil fail(String msg) {
        MsgUtil msgUtil = new MsgUtil();
        msgUtil.setCode(400);
        msgUtil.setMsg(msg);
        return msgUtil;
    }

    public static MsgUtil success() {
        MsgUtil msgUtil = new MsgUtil();
        msgUtil.setCode(200);
        msgUtil.setMsg("操作成功");
        return msgUtil;
    }

    public static MsgUtil fail() {
        MsgUtil msgUtil = new MsgUtil();
        msgUtil.setCode(400);
        msgUtil.setMsg("操作失败");
        return msgUtil;
    }

    public MsgUtil add(String key, Object value) {
        this.getExtend().put(key, value);
        return this;
    }
}
