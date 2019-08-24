package com.fcant.dl.mapper;

import com.fcant.dl.bean.User;

import java.util.List;

/**
 * UserMapper
 *
 * encoding:UTF-8
 * @author Fcant
 * @date 上午 10:29 2019-08-24/0024
 */
public interface UserMapper {

    /**
     * 逻辑删除用户
     *
     * @param user id-根据ID进行逻辑删除
     * @return int
     * @author Fcant
     * @date 上午 11:43 2019-08-24/0024
     */
    int delUserByLogic(User user);

    /**
     * 根据用户ID查询用户
     *
     * @param user 用户ID-id
     * @return User
     * @author Fcant
     * @date 上午 11:03 2019-08-24/0024
     */
    User selectUserById(User user);

    /**
     * 查询所有非管理用户
     *
     * @return List<User>
     * @author Fcant
     * @date 上午 10:28 2019-08-24/0024
     */
    List<User> selectAllUserNotAdmin();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_user
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_user
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int insert(User record);

    /**
     * 用户注册
     *
     * @param user userName,userPassword
     * @return int
     * @author Fcant
     * @date 下午 16:37 2019-08-18/0018
     */
    int insertUser(User user);

    /**
     * 根据用户名查询用户
     *
     * @param user 接口调用时为必要参数userName赋值
     * @return User
     * @author Fcant
     * @date 下午 15:49 2019-08-18/0018
     */
    User selectByUserName(User user);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_user
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int updateByPrimaryKeySelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_user
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int updateByPrimaryKey(User record);
}