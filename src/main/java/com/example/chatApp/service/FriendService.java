package com.example.chatApp.service;

import com.example.chatApp.pojo.Friend;

public interface FriendService
{
    int insert(Friend record);

    Friend selectByAccepterAndSender(Integer accepterId, Integer senderId);
}
