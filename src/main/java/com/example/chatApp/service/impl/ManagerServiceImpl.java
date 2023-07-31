package com.example.chatApp.service.impl;


import com.example.chatApp.mapper.ManagerMapper;
import com.example.chatApp.pojo.Manager;
import com.example.chatApp.service.ManagerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ManagerServiceImpl implements ManagerService
{
    @Resource
    ManagerMapper managerMapper;

    @Override
    public void insert(Manager object)
    {

    }

    @Override
    public void update(Manager object)
    {

    }

    @Override
    public void delete(Integer id)
    {

    }

    @Override
    public void delete(String ids)
    {

    }

    @Override
    public Manager findById(Integer id)
    {
        return managerMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Manager> findAll()
    {
        return null;
    }

    @Override
    public Manager selectByUsernameAndPassword(Manager record)
    {
        return managerMapper.selectByUsernameAndPassword(record);
    }
}
