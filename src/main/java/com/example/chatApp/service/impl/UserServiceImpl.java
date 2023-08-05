package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.UserMapper;
import com.example.chatApp.pojo.User;
import com.example.chatApp.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
    public void incrementFriendNum(Integer id)
    {
        userMapper.incrementFriendNum(id);
    }

    @Override
    public void disableUser(Integer id)
    {
        userMapper.disableUser(id);
    }

    @Override
    public void enableUser(Integer id)
    {
        userMapper.enableUser(id);
    }

    @Override
    public int batchDeleteByPrimaryKey(List<Integer> userIdList)
    {
        return userMapper.batchDeleteByPrimaryKey(userIdList);
    }

    @Override
    public PageInfo<User> findAllByPageNum(Integer pageNum, Integer pageSize)
    {
        //设置
        PageHelper.startPage(pageNum,pageSize);

        //list中间存放的数据 已经是分页之后的数据
        List<User> userList = userMapper.listWithoutDisable();

        //总页数
        PageInfo<User> pageInfo = new PageInfo<>(userList,5);

        return pageInfo;
    }

    @Override
    public PageInfo<User> findDisableByPageNum(Integer pageNum, Integer pageSize)
    {
        //设置
        PageHelper.startPage(pageNum,pageSize);

        //list中间存放的数据 已经是分页之后的数据
        List<User> userList = userMapper.listWithDisable();

        //总页数
        PageInfo<User> pageInfo = new PageInfo<>(userList,5);

        return pageInfo;
    }

    @Override
    public void updateUserInfo(User object)
    {
        userMapper.updateUserInfo(object);
    }

    @Override
    public int delete(Integer id)
    {
        return userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void delete(String ids)
    {

    }

    @Override
    public User findById(Integer id)
    {
        return userMapper.selectByPrimaryKey(id);
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


    @Override
    public User selectByUsername(String username)
    {
        return userMapper.selectByUsername(username);
    }



}
