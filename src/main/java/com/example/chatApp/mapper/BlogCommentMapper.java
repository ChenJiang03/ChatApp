package com.example.chatApp.mapper;

import com.example.chatApp.pojo.BlogComment;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface BlogCommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogComment record);

    int insertCommentToBlog(BlogComment record);

    int insertSelective(BlogComment record);

    BlogComment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogComment record);

    int updateByPrimaryKey(BlogComment record);
}