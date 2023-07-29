package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.FriendMapper;
import com.example.chatApp.pojo.Friend;
import com.example.chatApp.service.FriendService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class FriendServiceImpl implements FriendService

{
    @Resource
    FriendMapper friendMapper;

    @Override
    public int insert(Friend record)
    {
        return friendMapper.insert(record);
    }

    @Override
    public Friend selectByAccepterAndSender(Integer accepterId, Integer senderId)
    {
        return friendMapper.selectByAccepterAndSender(accepterId, senderId);
    }
}
