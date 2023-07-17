package com.example.chatApp.mapper;

import com.example.chatApp.pojo.Config;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface ConfigMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Config record);

    int insertSelective(Config record);

    Config selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Config record);

    int updateByPrimaryKey(Config record);
}