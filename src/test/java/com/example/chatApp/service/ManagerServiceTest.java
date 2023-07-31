package com.example.chatApp.service;

import com.example.chatApp.pojo.Manager;
import com.github.pagehelper.PageInfo;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.util.List;

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

    @Test
    public void testSelectAllCommonManager()
    {
        PageInfo<Manager> managerList = managerService.selectAllCommonManagerByPageNum(1,2);
        System.out.println(managerList);
    }

    @Test
    public void testInsertManager()
    {
        Manager manager = new Manager();
        manager.setUsername("dalian");
        manager.setPassword("lianzi");
        manager.setName("大莲");
        managerService.insert(manager);
    }

    @Test
    public void testSelectByPrimaryKey()
    {
        Manager manager = managerService.findById(2);
        System.out.println(manager);
    }
}
