package com.example.chatApp.service;

import com.example.chatApp.pojo.User;

public interface UserService extends CommonService<User>
{
    User login(User user);

    User findByUsernameAndPassword(User user);

    User selectByUsername(String username);

    void update(User user);

    void updateUserInfo(User object);

    void updateUserPicture(User object);

    void updateUserPassword(User object);

    void updateUserPhone(User object);

}
