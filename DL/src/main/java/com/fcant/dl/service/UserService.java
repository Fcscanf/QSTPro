package com.fcant.dl.service;

import com.fcant.dl.bean.User;
import com.fcant.dl.util.MsgUtil;
import org.springframework.stereotype.Service;

/**
 * UserService
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 15:18 2019-08-18/0018
 */
@Service
public interface UserService {

    /**
     * 用户登录，根据不同的情况返回错误码
     *
     * @param user 登录的用户名
     * @return MsgUtil
     * @author Fcant
     * @date 下午 15:24 2019-08-18/0018
     */
    public MsgUtil userLogin(User user);

    /**
     * 用户注册
     *
     * @param user userName,userPassword
     * @return int
     * @author Fcant
     * @date 下午 16:37 2019-08-18/0018
     */
    MsgUtil insertUser(User user);
}
