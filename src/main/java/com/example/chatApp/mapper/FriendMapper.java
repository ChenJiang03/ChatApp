package com.example.chatApp.mapper;

import com.example.chatApp.pojo.Friend;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface FriendMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Friend record);

    int insertSelective(Friend record);

    Friend selectByPrimaryKey(Integer id);

    Friend selectByAccepterAndSender(Integer accepterId, Integer senderId);

    int updateByPrimaryKeySelective(Friend record);

    int updateByPrimaryKey(Friend record);
}