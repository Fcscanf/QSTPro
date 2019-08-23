package com.fcant.dl.mapper;

import com.fcant.dl.bean.Info;

import java.util.List;

/**
 * InfoMapper
 *
 * encoding:UTF-8
 * @author Fcant
 * @date 下午 19:14 2019-08-21/0021
 */
public interface InfoMapper {

    /**
     * 全字匹配查询
     *
     * @param info 查询的对象
     * @return MsgUtil
     * @author Fcant
     * @date 下午 23:28 2019-08-21/0021
     */
    List<Info> selectByAll(Info info);

    /**
     * 模糊查询
     *
     * @param info 查询的对象
     * @return MsgUtil
     * @author Fcant
     * @date 下午 23:27 2019-08-21/0021
     */
    List<Info> selectByLike(Info info);

    /**
     * 查询所有信息
     *
     * @return List<Info>
     * @author Fcant
     * @date 下午 19:14 2019-08-21/0021
     */
    List<Info> selectAllByCheckPay(Info info);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_info
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_info
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int insert(Info record);

    /**
     * 插入新的信息
     *
     * @param info 信息
     * @return int
     * @author Fcant
     * @date 下午 19:57 2019-08-19/0019 
     */
    int insertNewInfo(Info info);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_info
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    Info selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_info
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int updateByPrimaryKeySelective(Info record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_info
     *
     * @mbg.generated Tue Aug 13 19:48:59 GMT+08:00 2019
     */
    int updateByPrimaryKey(Info record);
}