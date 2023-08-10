package com.example.chatApp.mapper;

import com.example.chatApp.pojo.BlogPicture;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface BlogPictureMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(@Param("blogId") Integer blogId, @Param("fileNames") List<String> fileNames);

    int insertSelective(BlogPicture record);

    BlogPicture selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BlogPicture record);

    int updateByPrimaryKey(BlogPicture record);
}