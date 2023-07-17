package com.example.chatApp.mapper;

import com.example.chatApp.pojo.ChatContent;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface ChatContentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ChatContent record);

    int insertSelective(ChatContent record);

    ChatContent selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ChatContent record);

    int updateByPrimaryKey(ChatContent record);
}