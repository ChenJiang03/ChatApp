package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.BlogMapper;
import com.example.chatApp.pojo.Blog;
import com.example.chatApp.service.BlogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BlogServiceImpl implements BlogService
{
    @Resource
    BlogMapper blogMapper;

    @Override
    public void insert(Blog object)
    {
        blogMapper.insert(object);
    }

    @Override
    public void update(Blog object)
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
    public Blog findById(Integer id)
    {
        return null;
    }

    @Override
    public List<Blog> findAll()
    {
        return null;
    }

    @Override
    public List<Blog> selectByUserId(Integer id)
    {
        return blogMapper.selectByUserId(id);
    }
}
