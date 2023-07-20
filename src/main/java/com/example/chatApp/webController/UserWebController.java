package com.example.chatApp.webController;

import com.example.chatApp.mapper.UserMapper;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

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

    @PostMapping("updateInfo")
    public String updateInfo(User user, HttpSession session)
    {
        User user1 = (User) session.getAttribute("user");
        user1.setName(user.getName());
        user1.setEmail(user.getEmail());
        user1.setSignature(user.getSignature());
        userService.updateUserInfo(user1);
        return "redirect:/userCenter/updateInfo";
    }

    @PostMapping("deleteUser")
    public String deleteUser(HttpSession session)
    {
        System.out.println("执行删除");
        User user = (User) session.getAttribute("user");
        userService.delete(user.getId());
        return "redirect:/web/login";
    }

    @GetMapping("verifyPassword")
    @ResponseBody
    public String verifyPassword(String oldPassword, HttpSession session)
    {
        User user1 = (User) session.getAttribute("user");
        if (oldPassword.equals(user1.getPassword()))
        {
            return "success";
        }
        return "fail";
    }

    @PostMapping("updatePassword")
    public String updatePassword(User user, String oldPassword, HttpSession session)
    {
        User user1 = (User) session.getAttribute("user");
        user1.setPassword(user.getPassword());
        userService.updateUserPassword(user1);
        return "redirect:/userCenter/updateInfo";
    }

    @PostMapping("updatePhone")
    public String updatePhone(User user, HttpSession session)
    {
        User user1 = (User) session.getAttribute("user");
        user1.setPhone(user.getPhone());
        userService.updateUserPhone(user1);
        return "redirect:/userCenter/updateInfo";
    }

    @GetMapping("updatePicture")
    public void updatePicture()
    {

    }


    @PostMapping("updatePicture")
    public String updatePicture(User user, HttpSession session)
    {
        User user1 = (User) session.getAttribute("user");
        user1.setPicture(user.getPicture());
        userService.updateUserPicture(user1);
        return "";
    }


}
