package com.example.chatApp.service;

import com.example.chatApp.pojo.BlogComment;

public interface BlogCommentService extends CommonService<BlogComment>
{
    int insertCommentToBlog(BlogComment record);
}
