package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.BlogCommentMapper;
import com.example.chatApp.pojo.BlogComment;
import com.example.chatApp.service.BlogCommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BlogCommentServiceImpl implements BlogCommentService
{
    @Resource
    BlogCommentMapper blogCommentMapper;

    @Override
    public int insertCommentToBlog(BlogComment record)
    {
        return blogCommentMapper.insertCommentToBlog(record);
    }

    @Override
    public List<BlogComment> selectCommentToBlogByBlogIdOrderedByInputTime(Integer id)
    {
        return blogCommentMapper.selectCommentToBlogByBlogIdOrderedByInputTime(id);
    }

    @Override
    public void insert(BlogComment object)
    {

    }

    @Override
    public void update(BlogComment object)
    {

    }

    @Override
    public int delete(Integer id)
    {
        return 0;
    }

    @Override
    public void delete(String ids)
    {

    }

    @Override
    public BlogComment findById(Integer id)
    {
        return null;
    }

    @Override
    public List<BlogComment> findAll()
    {
        return null;
    }
}
