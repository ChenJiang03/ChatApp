package com.example.chatApp.mapper;

import com.example.chatApp.pojo.BlogPicture;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface BlogPictureMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BlogPicture record);

    int insertSelective(BlogPicture record);

    BlogPicture selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogPicture record);

    int updateByPrimaryKey(BlogPicture record);
}