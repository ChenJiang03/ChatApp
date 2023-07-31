package com.example.chatApp.manageController;

import com.example.chatApp.pojo.Manager;
import com.example.chatApp.service.ManagerService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("manage/manager")
public class ManagerManagerController
{
    @Resource
    ManagerService managerService;

    @GetMapping("list")
    public void index(HttpSession session, Model model, Integer pageNum)
    {

        if (pageNum == null)
        {
            pageNum = 1;
        }

        Manager manager = (Manager) session.getAttribute("manager");
        if(manager.getSuperManager())
        {
            PageInfo<Manager> managerPageInfo = managerService.selectAllCommonManagerByPageNum(pageNum,5);
            model.addAttribute("managerPageInfo", managerPageInfo);
        }
        else
        {
            model.addAttribute("managerPageInfo", null);
        }
    }

    @GetMapping("update")
    public void update(Integer id, Model model)
    {
        Manager manager = managerService.findById(id);
        model.addAttribute("manager", manager);
    }

    @PostMapping("update")
    public String update(Manager manager)
    {
        managerService.update(manager);
        return "redirect:/manage/manager/list";
    }

    @GetMapping("add")
    public void add()
    {

    }

    @PostMapping("add")
    public String add(Manager manager)
    {
        managerService.insert(manager);
        return "redirect:/manage/manager/list";
    }
}
