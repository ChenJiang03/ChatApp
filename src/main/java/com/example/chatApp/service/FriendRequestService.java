package com.example.chatApp.service;

import com.example.chatApp.pojo.FriendRequest;

import java.util.List;

public interface FriendRequestService extends CommonService<FriendRequest>
{

    String insertByCondition(FriendRequest object);
    List<FriendRequest> selectByAccepterId(Integer accepterId);
    int acceptFriendRequest(String responseMessage, Integer success, Integer id);
}
