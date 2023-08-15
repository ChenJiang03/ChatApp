package com.example.chatApp.service;

import com.example.chatApp.pojo.BlogComment;

import java.util.List;

public interface BlogCommentService extends CommonService<BlogComment>
{
    int insertCommentToBlog(BlogComment record);

    List<BlogComment> selectCommentToBlogByBlogIdOrderedByInputTime(Integer id);
}
