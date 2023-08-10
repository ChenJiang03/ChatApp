package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.BlogPictureMapper;
import com.example.chatApp.pojo.BlogPicture;
import com.example.chatApp.service.BlogPictureService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BlogPictureServiceImpl implements BlogPictureService
{
    @Resource
    BlogPictureMapper blogPictureMapper;

    @Override
    public void insert(BlogPicture object)
    {

    }

    @Override
    public void insert(Integer blogId, List<String> fileNames)
    {
        blogPictureMapper.insert(blogId, fileNames);
    }

    @Override
    public List<BlogPicture> selectByBlogId(Integer id)
    {
        return blogPictureMapper.selectByBlogId(id);
    }

    @Override
    public void update(BlogPicture object)
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
    public BlogPicture findById(Integer id)
    {
        return null;
    }

    @Override
    public List<BlogPicture> findAll()
    {
        return null;
    }
}
