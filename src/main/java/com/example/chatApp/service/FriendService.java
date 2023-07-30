package com.example.chatApp.service;

import com.example.chatApp.pojo.Friend;
import com.example.chatApp.pojo.User;

import java.util.List;

public interface FriendService
{
    int insert(Friend record);

    Friend selectByAccepterAndSender(Integer accepterId, Integer senderId);

    List<User> selectFriends(Integer id);
}
