package com.fcant.dl.mapper;

import com.fcant.dl.bean.User;

public interface UserMapper {
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
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_user
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int insertSelective(User record);

    /**
     * 根据用户名查询用户，目前用户名未做唯一性校验，须注意查询同名用户反射异常
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