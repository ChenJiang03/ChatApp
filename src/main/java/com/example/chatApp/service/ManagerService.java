package com.example.chatApp.service;

import com.example.chatApp.pojo.Manager;

public interface ManagerService extends CommonService<Manager>
{

    Manager selectByUsernameAndPassword(Manager record);
}
