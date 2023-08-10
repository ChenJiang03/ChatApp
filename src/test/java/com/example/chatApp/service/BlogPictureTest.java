package com.example.chatApp.service;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("classpath:spring.xml")
public class BlogPictureTest
{
    @Resource
    BlogPictureService blogPictureService;

    @Test
    public void testSelectByBlogId()
    {
        System.out.println(blogPictureService.selectByBlogId(26));
    }
}
