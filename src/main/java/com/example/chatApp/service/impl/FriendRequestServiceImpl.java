package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.FriendRequestMapper;
import com.example.chatApp.mapper.UserMapper;
import com.example.chatApp.pojo.FriendRequest;
import com.example.chatApp.service.FriendRequestService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class FriendRequestServiceImpl implements FriendRequestService
{
    @Resource
    FriendRequestMapper friendRequestMapper;

    @Resource
    UserMapper userMapper;
    @Override
    public String insertByCondition(FriendRequest object)
    {
        FriendRequest friendRequest = friendRequestMapper.selectBySenderIdAndAccepterId(object);
        if (friendRequest != null)
        {
            System.out.println(friendRequest);
            return "exist";
        }
        friendRequestMapper.insert(object);
        return "success";
    }

    @Override
    public void insert(FriendRequest object)
    {

    }

    @Override
    public void update(FriendRequest object)
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
    public FriendRequest findById(Integer id)
    {
        return null;
    }

    @Override
    public List<FriendRequest> selectByAccepterId(Integer id)
    {
        return friendRequestMapper.selectByAccepterId(id);
    }

    @Override
    public List<FriendRequest> findAll()
    {
        return null;
    }

    @Override
    public int acceptFriendRequest(Date responseTime, String responseMessage, Integer success, Integer id)
    {
        //todo:这个地方有问题
        //接受好友申请业务逻辑：如果A跟B发送了申请，同时B跟A也发送了申请，如果其中任何一方同意了申请，设置双方请求都为无效，加好友
        //如果A跟B发送了申请，同时B跟A也发送了申请，A拒绝了B，则不作任何处理，如果B同意了A，设置双方为好友
        //如果A跟B发送了申请，同时B跟A也发送了申请，A忽略了B，则不作任何处理，如果B同意了A，设置双方为好友
        //获取当前friendRequest的对象
//        FriendRequest friendRequest = friendRequestMapper.selectByPrimaryKey(id);
        //获取所有包含这对儿accepter和sender的friendRequest对象
//        FriendRequest friendRequestExchange = friendRequest;
//        friendRequestExchange.setAccepter(friendRequest.getSender());
//        friendRequestExchange.setSender(friendRequest.getAccepter());
//        System.out.println("交换前："+friendRequest);
//        System.out.println("交换后："+friendRequestExchange);
//        FriendRequest friendRequest1 = friendRequestMapper.selectBySenderIdAndAccepterId(friendRequestExchange);
        return friendRequestMapper.acceptFriendRequest(responseTime, responseMessage, success, id);
    }
}
