package com.example.chatApp.service;

import com.example.chatApp.pojo.Blog;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.util.List;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("classpath:spring.xml")
public class BlogServiceTest
{
    @Resource
    BlogService blogService;

    @Test
    public void testSelectByUserId()
    {
        List<Blog> blogs = blogService.selectByUserId(6);
        System.out.println(blogs);
    }
}
