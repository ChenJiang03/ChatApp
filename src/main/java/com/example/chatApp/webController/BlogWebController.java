package com.example.chatApp.webController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userBlog")
public class BlogWebController
{
    @GetMapping("blogs")
    public void showBlogs()
    {

    }
}
