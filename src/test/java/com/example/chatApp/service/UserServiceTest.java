package com.example.chatApp.service;

import com.example.chatApp.pojo.User;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.util.List;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("classpath:spring.xml")
public class UserServiceTest
{
    @Resource
    private UserService userService;

    @Test
    public void testFindAll(){
        List<User> users = userService.findAll();
        users.forEach(System.out::println);
    }
}
