package com.example.chatApp.webController;

import com.example.chatApp.pojo.Blog;
import com.example.chatApp.pojo.BlogPicture;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.BlogPictureService;
import com.example.chatApp.service.BlogService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/userBlog")
public class BlogWebController
{
    @Resource
    BlogService blogService;

    @Resource
    BlogPictureService blogPictureService;

    @GetMapping("blogs")
    public void showBlogs()
    {

    }

    @GetMapping("post")
    public void post()
    {

    }

    @PostMapping("post")
    public String post(Blog blog, Integer viewScope, HttpSession session, HttpServletRequest request, String pictures)
    {
        User user = (User) session.getAttribute("user");

        //得到文件名的数组，并且给这些文件名赋值
        List<String> fileNames = Arrays.asList(pictures.split(","));

        blog.setUser(user);
        blog.setVisibility(viewScope);
        String visibilityPicture = "";
        if (viewScope == 0)
        {
            visibilityPicture = "privateLogo.jpg";
        }
        else if (viewScope == 2 || viewScope == 3)
        {
            visibilityPicture = "openToSelectLogo.jpg";
        }
        blog.setVisibilityPicture(visibilityPicture);
        blogService.insert(blog);

        //获取这个用户发过的所有帖子，第一个帖子就是他最新发的那个帖子，含有id
        List<Blog> blogList = blogService.selectByUserId(user.getId());

        //第一个帖子，含有id
        Integer blogId = blogList.get(0).getId();

        //根据图片的名称以及blogID添加blogPictures
        blogPictureService.insert(blogId, fileNames);


        return "redirect:/userBlog/blogs";
    }

    @PostMapping("postPicture")
    @ResponseBody
    public List<String> postPicture(@RequestBody List<MultipartFile> uploadPictures, HttpServletRequest request, HttpSession session)
    {
        System.out.println("===============================uploadPictures================================");
        System.out.println(uploadPictures);
        System.out.println("===============================uploadPictures================================");

        List<String> fileList = new ArrayList<>();
        int order = 1;
        for (MultipartFile file : uploadPictures)
        {
            BlogPicture blogPicture = new BlogPicture();
            String filepath = request.getServletContext().getRealPath("/static/uploadImages");
            String name = UUID.randomUUID().toString();
            String oriname = file.getOriginalFilename();
            String fileext = FilenameUtils.getExtension(oriname);//获得文件扩展名
            String filename = name+"."+fileext;
            fileList.add(filename);
            File f = new File(filepath+"/"+filename);
            blogPicture.setPictureOrder(order);
            blogPicture.setPicture(filename);
            try {
                file.transferTo(f);
                //保存文件
            } catch (IOException e) {
                e.printStackTrace();
            }
            order++;
        }
        return fileList;

    }

    @GetMapping("myPost")
    public void myPost(Model model, HttpSession session)
    {
        User user = (User) session.getAttribute("user");
        List<Blog> blogList = blogService.selectByUserId(user.getId());
        model.addAttribute("blogList", blogList);
    }
}
