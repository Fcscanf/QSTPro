package com.fcant.dl.test;

import com.fcant.dl.bean.Info;
import com.fcant.dl.bean.User;
import com.fcant.dl.mapper.InfoMapper;
import com.fcant.dl.mapper.UserMapper;
import com.fcant.dl.service.InfoService;
import com.fcant.dl.util.FcantUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

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

    @Autowired
    InfoMapper infoMapper;

    @Autowired
    InfoService infoService;

    @Test
    public void pageInfoByCheckPayForTest() {
        Page page = new Page();
        page.setPageNum(1);
        page.setPageSize(5);
        Info info = new Info();
        info.setInfoCheck("1");
        info.setInfoPayfor("1");
        System.out.println(infoService.selectAllByCheckPay(page, info));
    }

    @Test
    public void queryUserByNameTest() {
        User user = new User();
        user.setUserName("Fcant");
        System.out.println(userMapper.selectByUserName(user));
    }

    @Test
    public void addUserTest() {
        User user = new User();
        user.setUserName("Fcant");
        userMapper.insertUser(user);
    }

    @Test
    public void addInfoTest() throws ParseException {
        Info info = new Info();
        info.setInfoType(1);
        info.setInfoTitle("激情创业");
        info.setInfoContent("未来有我们");
        info.setInfoLinkman("华宇");
        info.setInfoPhone("17826260078");
        info.setInfoEmail("fcscanf@outlook.com");
        info.setInfoDate(FcantUtils.formatDate(new Date()));
        info.setInfoCheck("0");
        info.setInfoPayfor("0");
        info.setInfoStatus("0");
        int insertNewInfo = infoMapper.insertNewInfo(info);
        System.out.println(insertNewInfo);
    }

    /**
     * 测试使用PageHelper进行分页处理
     *
     * @author Fcant
     * @date 下午 19:19 2019-08-21/0021
     */
    @Test
    public void pageHelperTest() {
        Info info = new Info();
        info.setInfoContent("新天地");
        PageHelper.startPage(1, 5);
        List<Info> infos = infoMapper.selectByLike(info);
        PageInfo<Info> pageHelper = new PageInfo<>(infos);
        System.out.println(pageHelper);
    }
}
