package com.example.chatApp.mapper;

import com.example.chatApp.pojo.ManagerLog;

/**
* Created by Mybatis Generator 2023/07/16
*/
public interface ManagerLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ManagerLog record);

    int insertSelective(ManagerLog record);

    ManagerLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ManagerLog record);

    int updateByPrimaryKey(ManagerLog record);
}