package com.example.chatApp.webController;

import com.example.chatApp.mapper.UserMapper;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userCenter")
public class UserWebController
{
    @Autowired
    private UserService userService;

    @Autowired
    private UserMapper userMapper;

    @GetMapping("singleChat")
    public void singleChat()
    {

    }

    @GetMapping("updateInfo")
    public void updateInfo()
    {

    }

}
