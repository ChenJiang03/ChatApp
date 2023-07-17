package com.example.chatApp.mapper;

import com.example.chatApp.pojo.FriendRequest;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface FriendRequestMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FriendRequest record);

    int insertSelective(FriendRequest record);

    FriendRequest selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FriendRequest record);

    int updateByPrimaryKey(FriendRequest record);
}