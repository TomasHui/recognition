package com.zhouwj.recognition.mapper;

import com.zhouwj.recognition.entity.NetUser;

public interface NetUserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table netuser
     *
     * @mbggenerated Wed Mar 27 10:12:09 CST 2019
     */
    int insert(NetUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table netuser
     *
     * @mbggenerated Wed Mar 27 10:12:09 CST 2019
     */
    int insertSelective(NetUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table netuser
     *
     * @mbggenerated Wed Mar 27 10:12:09 CST 2019
     */
    NetUser selectByPrimaryKey(String username);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table netuser
     *
     * @mbggenerated Wed Mar 27 10:12:09 CST 2019
     */
    int updateByPrimaryKeySelective(NetUser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table netuser
     *
     * @mbggenerated Wed Mar 27 10:12:09 CST 2019
     */
    int updateByPrimaryKey(NetUser record);
}