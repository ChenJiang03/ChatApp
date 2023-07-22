package com.example.chatApp.service;

import com.example.chatApp.pojo.FriendRequest;

public interface FriendRequestService extends CommonService<FriendRequest>
{

    String insertByCondition(FriendRequest object);
}
