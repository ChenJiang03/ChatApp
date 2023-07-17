package com.example.chatApp.mapper;

import com.example.chatApp.pojo.BlogLike;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface BlogLikeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogLike record);

    int insertSelective(BlogLike record);

    BlogLike selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogLike record);

    int updateByPrimaryKey(BlogLike record);
}