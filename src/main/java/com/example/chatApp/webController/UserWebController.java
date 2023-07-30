package com.example.chatApp.webController;

import com.example.chatApp.mapper.UserMapper;
import com.example.chatApp.pojo.Friend;
import com.example.chatApp.pojo.FriendRequest;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.FriendRequestService;
import com.example.chatApp.service.FriendService;
import com.example.chatApp.service.UserService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.*;

@Controller
@RequestMapping("/userCenter")
public class UserWebController
{
    @Autowired
    private UserService userService;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private FriendRequestService friendRequestService;

    @Resource
    private FriendService friendService;

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

    @ExceptionHandler(MaxUploadSizeExceededException.class)
    @ResponseBody
    public Map<String,String> processMaxUploadSizeExceededException(MaxUploadSizeExceededException e){
        e.printStackTrace();
        Map<String,String> map = new HashMap<>();
        map.put("msg","fail");
        return map;
    }

    @GetMapping("updatePicture")
    public void updatePicture()
    {
    }


    @PostMapping("updatePicture")
    @ResponseBody
    public Map<String, String> updatePicture(User user, HttpSession session, HttpServletRequest request, MultipartFile cropPic)
    {
        System.out.println("-----------------------");
        System.out.println(cropPic.getContentType());
        String filePath = request.getServletContext().getRealPath("/static/uploadImages");
        String name = UUID.randomUUID().toString();
       // String oriname = cropPic.getOriginalFilename();
        //String fileext = FilenameUtils.getExtension(oriname);//获得文件扩展名

        String filename = name+".png";

        File f = new File(filePath+"/"+filename);
        try {
            cropPic.transferTo(f);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        Map<String,String> map = new HashMap<>();
        map.put("msg","success");
        map.put("pic",filename);
//
        User user1 = (User) session.getAttribute("user");
        user1.setPicture(filename);
        userService.updateUserPicture(user1);
        return map;
    }

    @GetMapping("contacts")
    public void contacts(HttpSession session, Model model){

        User user = (User) session.getAttribute("user");
        List<FriendRequest> friendRequestList = friendRequestService.selectByAccepterId(user.getId());
        model.addAttribute("friendRequestList", friendRequestList);
        List<User> friendList = friendService.selectFriends(user.getId());
        model.addAttribute("friendList", friendList);
    }

    @GetMapping("acceptFriendRequest")
    @ResponseBody
    public void acceptFriendRequest(Integer friendRequestId, String responseMessage, Integer success)
    {

        friendRequestService.acceptFriendRequest(responseMessage, success, friendRequestId);

    }


    @GetMapping("addFriend")
    @ResponseBody
    public String addFriends(String username, String friendRequestMessage, HttpSession session)
    {
        User accepter = userService.selectByUsername(username);
        System.out.println("用户名："+username);
        System.out.println("验证信息："+friendRequestMessage);
        User sender = (User) session.getAttribute("user");
        if (accepter == null)
        {
            return "fail";
        }
        FriendRequest friendRequest = new FriendRequest();
        friendRequest.setSender(sender);
        friendRequest.setAccepter(accepter);
        friendRequest.setRequestMessage(friendRequestMessage);
        //获取当前时间
        LocalDate currentDate = LocalDate.now();
        //给当前时间加三天，设置为好友请求过期日期
        LocalDate currentDatePlusThreeDays = currentDate.plusDays(3);
        //将LocalDate类型转换为Date类型
        Date date = Date.from(currentDatePlusThreeDays.atStartOfDay(ZoneId.systemDefault()).toInstant());
        friendRequest.setOutdateTime(date);
        String message = friendRequestService.insertByCondition(friendRequest);
        return message;
    }
}
