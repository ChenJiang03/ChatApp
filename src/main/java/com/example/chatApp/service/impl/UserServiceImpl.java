package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.UserMapper;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class UserServiceImpl implements UserService
{
    @Resource
    private UserMapper userMapper;

    @Override
    public void insert(User object)
    {
        userMapper.insert(object);
    }

    @Override
    public void update(User object)
    {
    }

    @Override
    public void updateUserPicture(User object)
    {
        userMapper.updateUserPicture(object);
    }

    @Override
    public void updateUserPassword(User object)
    {
        userMapper.updateUserPassword(object);
    }

    @Override
    public void updateUserPhone(User object)
    {
        userMapper.updateUserPhone(object);
    }

    @Override
    public void updateUserInfo(User object)
    {
        userMapper.updateUserInfo(object);
    }

    @Override
    public void delete(Integer id)
    {
        userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void delete(String ids)
    {

    }

    @Override
    public User findById(Integer id)
    {
        return null;
    }

    @Override
    public List<User> findAll()
    {
        return userMapper.list();
    }

    @Override
    public User login(User user)
    {
        return null;
    }

    @Override
    public User findByUsernameAndPassword(User user)
    {
        return userMapper.selectByUsernameAndPassword(user);
    }

}
