package com.fcant.dl.service.impl;

import com.fcant.dl.bean.User;
import com.fcant.dl.mapper.UserMapper;
import com.fcant.dl.service.UserService;
import com.fcant.dl.util.MsgUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
     * 根据用户ID查询用户
     *
     * @param user 用户ID-id
     * @return User
     * @author Fcant
     * @date 上午 11:03 2019-08-24/0024
     */
    @Override
    public MsgUtil selectUserById(User user) {
        return MsgUtil.success("操作成功").add("user", userMapper.selectUserById(user));
    }

    /**
     * 查询所有非管理用户
     *
     * @param page 当前页pageNum;页面大小pageSize
     * @return MsgUtil
     * @author Fcant
     * @date 上午 10:30 2019-08-24/0024
     */
    @Override
    public MsgUtil selectAllUserNotAdmin(Page page) {
        PageHelper.startPage(page.getPageNum(), page.getPageSize());
        List<User> users = userMapper.selectAllUserNotAdmin();
        PageInfo<User> pageHelper = new PageInfo<>(users);
        return MsgUtil.success("操作成功").add("page", pageHelper);
    }

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
            user.setUserStatue("1");
            user.setUserType("1");
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
