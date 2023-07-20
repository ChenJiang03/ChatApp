package com.example.chatApp.mapper;

import com.example.chatApp.pojo.User;

import java.util.List;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface UserMapper {
    List<User> list();
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    User selectByUsername(String username);

    User selectByUsernameAndPassword(User user);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    void updateUserInfo(User record);

    void updateUserPicture(User record);

    void updateUserPassword(User record);

    void updateUserPhone(User record);

}