package com.example.chatApp.manageController;

import com.example.chatApp.pojo.User;
import com.example.chatApp.service.FriendService;
import com.example.chatApp.service.ManagerService;
import com.example.chatApp.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/manage/user")
public class UserManageController
{

    @Resource
    ManagerService managerService;

    @Resource
    UserService userService;

    @Resource
    FriendService friendService;

    @GetMapping("list")
    public void index(HttpSession session, Model model, Integer pageNum)
    {
        if (pageNum == null)
        {
            pageNum = 1;
        }

        PageInfo<User> userPageInfo = userService.findAllByPageNum(pageNum,10);
        model.addAttribute("userPageInfo", userPageInfo);
    }

    @GetMapping("disabledList")
    public void disabledList(HttpSession session, Model model, Integer pageNum)
    {
        if (pageNum == null)
        {
            pageNum = 1;
        }

        PageInfo<User> userPageInfo = userService.findDisableByPageNum(pageNum,10);
        model.addAttribute("userPageInfo", userPageInfo);
    }

    @GetMapping("update")
    public void update(Integer id, Model model)
    {
        User user = userService.findById(id);
        model.addAttribute("user", user);
    }

    @PostMapping("update")
    public String update(User user)
    {
        userService.update(user);
        return "redirect:/manage/manager/list";
    }

    @GetMapping("detail")
    public void showDetails(Integer id, Model model)
    {
        User user = userService.findById(id);
        model.addAttribute("user", user);
    }

    @GetMapping("resetPassword")
    @ResponseBody
    public String resetPassword(Integer id)
    {
        User user = userService.findById(id);
        String password = UUID.randomUUID().toString().replace('-','_').substring(0,10);
        user.setPassword(password);
        userService.updateUserPassword(user);
        return password;
    }

    @GetMapping("disable")
    @ResponseBody
    public void disable(Integer id)
    {
        userService.disableUser(id);
    }

    @GetMapping("enable")
    @ResponseBody
    public void enable(Integer id)
    {
        userService.enableUser(id);
    }

    @GetMapping("friendList")
    public void friendList(Integer id, Model model)
    {
        List<User> friendList = friendService.selectFriends(id);
        model.addAttribute("friendList", friendList);
    }

}
