package com.fcant.dl.controller;

import com.fcant.dl.bean.User;
import com.fcant.dl.service.UserService;
import com.fcant.dl.util.MsgUtil;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * UserController
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 15:58 2019-08-18/0018
 */
@Controller
@ResponseBody
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    /**
     * 逻辑删除用户
     *
     * @param user id-根据ID进行逻辑删除
     * @return MsgUtil
     * @author Fcant
     * @date 上午 11:50 2019-08-24/0024
     */
    @RequestMapping("/del")
    public MsgUtil delUserById(User user) {
        return userService.delUserByLogic(user);
    }

    /**
     * 根据用户ID查询用户
     *
     * @param user 用户ID-id
     * @return MsgUtil
     * @author Fcant
     * @date 上午 11:09 2019-08-24/0024
     */
    @RequestMapping("/id")
    MsgUtil selectUserById(User user) {
        return userService.selectUserById(user);
    }

    /**
     * 查询所有非管理员用户并分页返回
     *
     * @param pageNum 当前页
     * @param pageSize 页面大小
     * @return MsgUtil
     * @author Fcant
     * @date 上午 11:09 2019-08-24/0024
     */
    @RequestMapping("/select")
    MsgUtil selectAllUserNotAdmin(int pageNum, int pageSize) {
        Page page = new Page();
        page.setPageSize(pageSize);
        page.setPageNum(pageNum);
        return userService.selectAllUserNotAdmin(page);
    }

    /**
     * 用户注册
     *
     * @param user userName,userPassword
     * @return MsgUtil
     * @author Fcant
     * @date 下午 16:43 2019-08-18/0018
     */
    @RequestMapping("/reg")
    public MsgUtil userRegister(User user) {
        return userService.insertUser(user);
    }

    /**
     * 用户登录
     *
     * @param user userName
     * @return MsgUtil
     * @author Fcant
     * @date 下午 15:59 2019-08-18/0018
     */
    @RequestMapping("/login")
    public MsgUtil userLogin(User user) {
        return userService.userLogin(user);
    }
}
