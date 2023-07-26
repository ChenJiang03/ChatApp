package com.example.chatApp.service;

import com.example.chatApp.mapper.FriendRequestMapper;
import com.example.chatApp.pojo.FriendRequest;
import com.example.chatApp.pojo.User;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("classpath:spring.xml")
public class FriendRequestServiceTest
{
    @Resource
    FriendRequestMapper friendRequestMapper;

    @Test
    public void testSelectByAccepterId()
    {
        List<FriendRequest> friendRequestList = friendRequestMapper.selectByAccepterId(6);
        System.out.println(friendRequestList);
    }
    @Test
    public void selectBySenderIdAndAccepterId()
    {
        FriendRequest friendRequest = new FriendRequest();
        User user1 = new User();
        User user2 = new User();
        user1.setId(2);
        user2.setId(6);
        friendRequest.setSender(user1);
        friendRequest.setAccepter(user2);
        FriendRequest friendRequest1 = friendRequestMapper.selectBySenderIdAndAccepterId(friendRequest);
        System.out.println(friendRequest1);
    }

    @Test
    public void testDate()
    {
        Date date = new Date();
        System.out.println(date);
    }


}
