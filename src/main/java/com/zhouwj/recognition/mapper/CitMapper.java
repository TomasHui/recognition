package com.zhouwj.recognition.mapper;

import com.zhouwj.recognition.entity.Cit;

public interface CitMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cit
     *
     * @mbggenerated Wed Mar 27 10:11:34 CST 2019
     */
    int insert(Cit record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cit
     *
     * @mbggenerated Wed Mar 27 10:11:34 CST 2019
     */
    int insertSelective(Cit record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cit
     *
     * @mbggenerated Wed Mar 27 10:11:34 CST 2019
     */
    Cit selectByPrimaryKey(String citCarnum);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cit
     *
     * @mbggenerated Wed Mar 27 10:11:34 CST 2019
     */
    int updateByPrimaryKeySelective(Cit record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cit
     *
     * @mbggenerated Wed Mar 27 10:11:34 CST 2019
     */
    int updateByPrimaryKey(Cit record);
}