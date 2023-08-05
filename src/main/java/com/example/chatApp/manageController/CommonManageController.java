package com.example.chatApp.manageController;

import com.example.chatApp.pojo.Manager;
import com.example.chatApp.service.ManagerService;
import com.example.chatApp.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CommonManageController
{
    @Resource
    ManagerService managerService;

    @Resource
    UserService userService;

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

    @PostMapping("/manage/delete")
    @ResponseBody
    public String deleteSingle(String dataType, Integer id)
    {
        switch (dataType)
        {
            case "Manager":
                if (managerService.delete(id) > 0)
                {
                    return "success";
                }
                else
                {
                    return "fail";
                }
//                break;
            case "User":
                if (userService.delete(id) > 0)
                {
                    return "success";
                }
                else
                {
                    return "fail";
                }
        }
        return "fail";
    }


    @PostMapping("/manage/batchDel")
    @ResponseBody
    public String deleteBatch(String dataType, String ids)
    {
        String[] stringArray = ids.split(",");
        List<Integer> integerArray= new ArrayList<>();
        for (int i = 0; i < stringArray.length; i++) {
            integerArray.add(Integer.parseInt(stringArray[i].trim()));
        }
        switch (dataType)
        {
            case "Manager":
                if (managerService.BatchDeleteByPrimaryKey(integerArray) > 0)
                {
                    return "success";
                }
                else
                {
                    return "fail";
                }
//                break;
            case "User":
                if (userService.batchDeleteByPrimaryKey(integerArray) > 0)
                {
                    return "success";
                }
                else
                {
                    return "fail";
                }
        }
        return "fail";
    }
}
