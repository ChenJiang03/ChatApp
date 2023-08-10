package com.example.chatApp.service;

import com.example.chatApp.pojo.BlogPicture;

import java.util.List;

public interface BlogPictureService extends CommonService<BlogPicture>
{
    void insert(Integer blogId, List<String> fileNames);
}
