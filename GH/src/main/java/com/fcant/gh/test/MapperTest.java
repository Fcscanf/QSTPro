package com.fcant.gh.test;

import com.fcant.gh.bean.User;
import com.fcant.gh.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Test
 * <p>
 * encoding:UTF-8
 *
 * @author Fcant
 * @date 下午 19:52 2019-08-28/0028
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class MapperTest {

    @Autowired
    UserMapper userMapper;

    @Test
    public void insertTest() {
        User user = new User();
        long i = 13;
        user.setId(i);
        user.setUserName("赵丽颖");
        user.setUserPhone("1782663434");
        int insert = userMapper.insert(user);
        System.out.println(insert);
        User selectByPrimaryKey = userMapper.selectByPrimaryKey(i);
        System.out.println(selectByPrimaryKey);
    }
}
