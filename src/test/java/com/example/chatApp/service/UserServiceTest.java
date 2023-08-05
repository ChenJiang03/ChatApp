package com.example.chatApp.service;

import com.example.chatApp.pojo.User;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

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

    @Test
    public void testResetPassword()
    {
        String password = UUID.randomUUID().toString().replace('-','_').substring(0,10);
        System.out.println(password);
    }

    @Test
    public void testDeleteSingle()
    {
        userService.delete(13);
    }

    @Test
    public void testEnable()
    {
        userService.enableUser(1);
    }
}
