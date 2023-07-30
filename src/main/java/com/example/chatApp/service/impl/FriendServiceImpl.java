package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.FriendMapper;
import com.example.chatApp.pojo.Friend;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.FriendService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<User> selectFriends(Integer id)
    {
        List<Friend> friendList = friendMapper.selectFriends(id);
        List<User> userList = new ArrayList<>();
        for (Friend f:friendList)
        {
            if (f.getAccepter().getId() == id)
            {
                userList.add(f.getSender());
            }
            else
            {
                userList.add(f.getAccepter());
            }
        }
        return userList;
    }


}
