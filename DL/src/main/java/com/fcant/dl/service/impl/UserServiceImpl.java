package com.fcant.dl.service.impl;

import com.fcant.dl.bean.User;
import com.fcant.dl.mapper.UserMapper;
import com.fcant.dl.service.UserService;
import com.fcant.dl.util.MsgUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * UserServiceImpl
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 15:25 2019-08-18/0018
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    /**
     * 用户注册
     *
     * @param user userName,userPassword
     * @return MsgUtil
     * @author Fcant
     * @date 下午 16:37 2019-08-18/0018
     */
    @Override
    public MsgUtil insertUser(User user) {
        User selectByUserName = userMapper.selectByUserName(user);
        if (selectByUserName == null) {
            userMapper.insertUser(user);
            return MsgUtil.success("注册成功！");
        } else {
            return MsgUtil.fail("用户名已存在，请重新输入用户名");
        }

    }

    /**
     * 用户登录，根据不同的情况返回错误码
     *
     * @param user 登录的用户
     * @return int
     * @author Fcant
     * @date 下午 15:24 2019-08-18/0018
     */
    @Override
    public MsgUtil userLogin(User user) {
        if (user.getUserPassword() == null || "".equals(user.getUserPassword())) {
            return MsgUtil.fail("请输入正确的密码!");
        } else {
            User selectByUserName = userMapper.selectByUserName(user);
            if (selectByUserName == null) {
                return MsgUtil.fail("用户不存在或用户名错误,请输入正确的用户名!");
            } else {
                if (user.getUserPassword().equals(selectByUserName.getUserPassword())) {
                    return MsgUtil.success("登录成功!");
                }
                return MsgUtil.fail("密码错误，请输入正确的密码！");
            }
        }
    }
}
