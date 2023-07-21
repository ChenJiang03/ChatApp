package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.FriendRequestMapper;
import com.example.chatApp.pojo.FriendRequest;
import com.example.chatApp.service.FriendRequestService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FriendRequestServiceImpl implements FriendRequestService
{
    @Resource
    FriendRequestMapper friendRequestMapper;

    @Override
    public void insert(FriendRequest object)
    {

        friendRequestMapper.insert(object);
    }

    @Override
    public void update(FriendRequest object)
    {

    }

    @Override
    public void delete(Integer id)
    {

    }

    @Override
    public void delete(String ids)
    {

    }

    @Override
    public FriendRequest findById(Integer id)
    {
        return null;
    }

    @Override
    public List<FriendRequest> findAll()
    {
        return null;
    }
}
