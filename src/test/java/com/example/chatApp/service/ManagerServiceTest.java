package com.example.chatApp.service;

import com.example.chatApp.pojo.Manager;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("classpath:spring.xml")
public class ManagerServiceTest
{
    @Resource
    ManagerService managerService;
    @Test
    public void testMangerService()
    {
        Manager manager1 = managerService.findById(1);
        System.out.println(manager1);
        Manager manager = managerService.selectByUsernameAndPassword(manager1);
        System.out.println(manager);
    }
}
