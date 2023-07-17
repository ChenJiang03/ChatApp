package com.example.chatApp.mapper;

import com.example.chatApp.pojo.BlogViewScope;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface BlogViewScopeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogViewScope record);

    int insertSelective(BlogViewScope record);

    BlogViewScope selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogViewScope record);

    int updateByPrimaryKey(BlogViewScope record);
}