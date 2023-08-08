package com.example.chatApp.service;

import com.example.chatApp.pojo.Blog;

import java.util.List;

public interface BlogService extends CommonService<Blog>
{
    List<Blog> selectByUserId(Integer id);
}
