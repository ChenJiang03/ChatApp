package com.example.chatApp.service;

import com.example.chatApp.pojo.User;

public interface UserService extends CommonService<User>
{
    User login(User user);

    User findByUsernameAndPassword(User user);
}
