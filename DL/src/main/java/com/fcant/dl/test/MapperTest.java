package com.fcant.dl.test;

import com.fcant.dl.bean.User;
import com.fcant.dl.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * MapperTest
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 15:40 2019-08-18/0018
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class MapperTest {

    @Autowired
    UserMapper userMapper;

    @Test
    public void queryUserByNameTest() {
        User user = new User();
        user.setUserName("Fcant");
        System.out.println(userMapper.selectByUserName(user));
    }
}
