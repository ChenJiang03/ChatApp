package com.example.chatApp.mapper;

import com.example.chatApp.pojo.Blog;

import java.util.List;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface BlogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Blog record);

    int insertSelective(Blog record);

    Blog selectByPrimaryKey(Integer id);

    List<Blog> selectByUserId(Integer id);

    int updateByPrimaryKeySelective(Blog record);

    int updateByPrimaryKey(Blog record);
}