package com.example.chatApp.service;

import com.example.chatApp.pojo.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

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

    void incrementFriendNum(Integer id);

    void disableUser(Integer id);

    void enableUser(Integer id);

    int batchDeleteByPrimaryKey(List<Integer> userIdList);

    PageInfo<User> findAllByPageNum(Integer pageNum, Integer pageSize);

    PageInfo<User> findDisableByPageNum(Integer pageNum, Integer pageSize);
}
