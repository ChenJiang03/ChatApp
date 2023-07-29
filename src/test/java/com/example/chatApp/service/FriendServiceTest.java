package com.example.chatApp.service;

import com.example.chatApp.pojo.Friend;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;

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
}
