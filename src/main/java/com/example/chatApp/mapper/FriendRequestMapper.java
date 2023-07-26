package com.example.chatApp.mapper;

import com.example.chatApp.pojo.FriendRequest;

import java.util.Date;
import java.util.List;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface FriendRequestMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FriendRequest record);

    int insertSelective(FriendRequest record);

    FriendRequest selectByPrimaryKey(Integer id);

    FriendRequest selectByPrimaryKeyWithAble(Integer id);

    List<FriendRequest> selectByAccepterId(Integer id);

    FriendRequest selectBySenderId(Integer id);

    FriendRequest selectBySenderIdAndAccepterId(FriendRequest record);

    int updateByPrimaryKeySelective(FriendRequest record);

    int updateByPrimaryKey(FriendRequest record);

    int acceptFriendRequest(Date responseTime, String responseMessage, Integer success, Integer id);
}