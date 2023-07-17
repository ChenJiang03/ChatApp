package com.example.chatApp.mapper;

import com.example.chatApp.pojo.Manager;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface ManagerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Manager record);

    int insertSelective(Manager record);

    Manager selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Manager record);

    int updateByPrimaryKey(Manager record);
}