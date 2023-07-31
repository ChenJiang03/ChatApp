package com.example.chatApp.service.impl;


import com.example.chatApp.mapper.ManagerMapper;
import com.example.chatApp.pojo.Manager;
import com.example.chatApp.service.ManagerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

@Service
public class ManagerServiceImpl implements ManagerService
{
    @Resource
    ManagerMapper managerMapper;

    @Override
    public void insert(Manager object)
    {
        managerMapper.insert(object);
    }

    @Override
    public void update(Manager object)
    {
        managerMapper.updateByPrimaryKey(object);
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

    @Override
    public PageInfo<Manager> selectAllCommonManagerByPageNum(Integer pageNum, Integer pageSize)
    {
        //设置
        PageHelper.startPage(pageNum,pageSize);

        //list中间存放的数据 已经是分页之后的数据
        List<Manager> managerList = managerMapper.selectAllCommonManager();

        //总页数
        PageInfo<Manager> pageInfo = new PageInfo<>(managerList,5);

        return pageInfo;
    }


}
