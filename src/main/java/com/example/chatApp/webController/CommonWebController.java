package com.example.chatApp.webController;

import com.example.chatApp.mapper.UserMapper;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.UserService;
import com.example.chatApp.util.CodeMeessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class CommonWebController
{

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserService userService;

    @GetMapping("/web/login")
    public void login()
    {

    }
    @GetMapping("/web/sendCode")
    @ResponseBody
    public String sendCode(String phone, HttpSession session){
        String code = CodeMeessageUtil.sendCode(phone);
        session.setAttribute("verifyCode", code);
        if (code == null)
        {
            return "fail";
        }
        return "success";
    }

    @GetMapping("/web/verifyCode")
    @ResponseBody
    public String verifyCode(String code, HttpSession session)
    {
        String verifyCode = (String) session.getAttribute("verifyCode");
        if (verifyCode.equals(code))
        {
            return "success";
        }
        return "fail";
    }


    @PostMapping("/web/login")
    public String login(User user, HttpSession session){
        User findUser = userService.findByUsernameAndPassword(user);
        if (findUser != null)
        {
            session.setAttribute("user", findUser);
            return "redirect:/userCenter/updateInfo";
        }
        return "redirect:/web/login";
    }
    @GetMapping("/web/register")
    public void register()
    {

    }
    @PostMapping("/web/register")
    public String register(User user)
    {
        userService.insert(user);
        return "redirect:/web/login";
    }

    @GetMapping({"/index",""})
    public String index(){

        return "index";
    }

    @GetMapping("/web/existUser")
    @ResponseBody
    public String existUser(User user)
    {
        if (userMapper.selectByUsername(user.getUsername()) != null)
        {
            return "no";
        }
        return "ok";
    }
}
