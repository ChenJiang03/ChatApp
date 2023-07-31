package com.example.chatApp.manageController;

import com.example.chatApp.pojo.Manager;
import com.example.chatApp.service.ManagerService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/manage/user")
public class UserManageController
{

    @Resource
    ManagerService managerService;

    @GetMapping("list")
    public void index(HttpSession session, Model model, Integer pageNum)
    {
        Integer pageNumber;
        if (pageNum == null)
        {
            pageNumber = 1;
        }
        else
        {
            pageNumber = pageNum;
        }
//
//        PageInfo<Manager> managerList = managerService.selectAllCommonManagerByPageNum(pageNumber,10);
//        model.addAttribute("managerList", managerList);

    }



}
