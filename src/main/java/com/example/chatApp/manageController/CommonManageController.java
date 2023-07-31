package com.example.chatApp.manageController;

import com.example.chatApp.pojo.Manager;
import com.example.chatApp.service.ManagerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class CommonManageController
{
    @Resource
    ManagerService managerService;
    @GetMapping("/manageWeb/login")
    public void login()
    {

    }

    @PostMapping("/manageWeb/login")
    public String login(HttpSession session, Manager manager)
    {
        Manager manager1 = managerService.selectByUsernameAndPassword(manager);
        if (manager1 != null)
        {
            session.setAttribute("manager", manager1);
            return "redirect:/manage/index";
        }
        return "redirect:/manageWeb/login";
    }

    @GetMapping("/manage/index")
    public void index()
    {

    }
}
