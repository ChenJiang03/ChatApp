package com.example.chatApp.webController;

import com.example.chatApp.pojo.Blog;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/userBlog")
public class BlogWebController
{
    @Resource
    BlogService blogService;

    @GetMapping("blogs")
    public void showBlogs()
    {

    }

    @GetMapping("post")
    public void post()
    {

    }

    @PostMapping("post")
    public String post(Blog blog, Integer viewScope, HttpSession session, HttpServletRequest request)
    {
        User user = (User) session.getAttribute("user");
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
        return "redirect:/userBlog/blogs";
    }

    @PostMapping("postPicture")
    public void postPicture()
    {

    }

    @GetMapping("myPost")
    public void myPost(Model model, HttpSession session)
    {
        User user = (User) session.getAttribute("user");
        List<Blog> blogList = blogService.selectByUserId(user.getId());
        model.addAttribute("blogList", blogList);
    }
}
