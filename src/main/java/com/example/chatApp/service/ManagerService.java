package com.example.chatApp.service;

import com.example.chatApp.pojo.Manager;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface ManagerService extends CommonService<Manager>
{

    Manager selectByUsernameAndPassword(Manager record);

    PageInfo<Manager> selectAllCommonManagerByPageNum(Integer pageNum, Integer pageSize);
}
