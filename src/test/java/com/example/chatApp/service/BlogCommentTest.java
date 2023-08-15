package com.example.chatApp.service;

import com.example.chatApp.pojo.BlogComment;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;
import java.util.List;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("classpath:spring.xml")
public class BlogCommentTest
{
    @Resource
    BlogCommentService blogCommentService;

    @Test
    public void testPostCommentToBlog()
    {
        BlogComment blogComment = new BlogComment();
        blogComment.setUserId(5);
        blogComment.setContent("测试3");
        blogComment.setBlogId(12);
        blogCommentService.insertCommentToBlog(blogComment);
    }

    @Test
    public void testSelectCommentToBlogByBlogIdOrderedByInputTime()
    {
        List<BlogComment> blogComments = blogCommentService.selectCommentToBlogByBlogIdOrderedByInputTime(12);
        System.out.println(blogComments);
    }
}
