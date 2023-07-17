package com.example.chatApp.mapper;

import com.example.chatApp.pojo.UserTag;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface UserTagMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserTag record);

    int insertSelective(UserTag record);

    UserTag selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserTag record);

    int updateByPrimaryKey(UserTag record);
}