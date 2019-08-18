package com.fcant.dl.controller;

import com.fcant.dl.bean.User;
import com.fcant.dl.service.UserService;
import com.fcant.dl.util.MsgUtil;
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
