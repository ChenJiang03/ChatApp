package com.example.chatApp.manageController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage")
public class UserManageController
{

    @GetMapping("index")
    public void index()
    {

    }


}
