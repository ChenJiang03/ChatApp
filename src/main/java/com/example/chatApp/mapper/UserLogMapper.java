package com.example.chatApp.mapper;

import com.example.chatApp.pojo.UserLog;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface UserLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserLog record);

    int insertSelective(UserLog record);

    UserLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserLog record);

    int updateByPrimaryKey(UserLog record);
}