package com.example.chatApp.mapper;

import com.example.chatApp.pojo.Tag;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface TagMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tag record);

    int insertSelective(Tag record);

    Tag selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Tag record);

    int updateByPrimaryKey(Tag record);
}