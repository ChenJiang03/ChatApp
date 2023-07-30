package com.example.chatApp.service;

import com.example.chatApp.pojo.Friend;
import com.example.chatApp.pojo.User;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.util.List;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("classpath:spring.xml")
public class FriendServiceTest
{
    @Resource
    FriendService friendService;
    @Test
    public void testSelectByAccepterAndSender()
    {
        Friend friend = friendService.selectByAccepterAndSender(6,8);
        System.out.println(friend);
    }

    @Test
    public void testSelectFriends()
    {
        List<User> userList = friendService.selectFriends(5);
        System.out.println(userList);
    }
}
