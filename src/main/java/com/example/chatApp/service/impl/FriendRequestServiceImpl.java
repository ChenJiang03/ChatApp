package com.example.chatApp.service.impl;

import com.example.chatApp.mapper.FriendRequestMapper;
import com.example.chatApp.mapper.UserMapper;
import com.example.chatApp.pojo.Friend;
import com.example.chatApp.pojo.FriendRequest;
import com.example.chatApp.service.FriendRequestService;
import com.example.chatApp.service.FriendService;
import com.example.chatApp.service.UserService;
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
    FriendService friendService;

    @Resource
    UserService userService;

    @Override
    public String insertByCondition(FriendRequest object)
    {
        FriendRequest friendRequest = friendRequestMapper.selectBySenderIdAndAccepterId(object.getSender().getId(), object.getAccepter().getId());
        Friend friend = friendService.selectByAccepterAndSender(object.getAccepter().getId(), object.getSender().getId());
        if (friend != null)
        {
            return "already";
        }
        if (friendRequest != null)
        {
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
    public int acceptFriendRequest(String responseMessage, Integer success, Integer id)
    {
        //todo:这个地方有问题
        //接受好友申请业务逻辑：如果A跟B发送了申请，同时B跟A也发送了申请，如果其中任何一方同意了申请，设置双方请求都为无效，加好友
        //如果A跟B发送了申请，同时B跟A也发送了申请，A拒绝了B，则不作任何处理，如果B同意了A，设置双方为好友
        //如果A跟B发送了申请，同时B跟A也发送了申请，A忽略了B，则不作任何处理，如果B同意了A，设置双方为好友
        //获取当前friendRequest的对象
        FriendRequest friendRequest = friendRequestMapper.selectByPrimaryKey(id);

        //获取此人是否已经给好友发送给未失效的好友申请
        FriendRequest friendRequest1 = friendRequestMapper.selectBySenderIdAndAccepterId(friendRequest.getAccepter().getId(), friendRequest.getSender().getId());
        //如果此人没有发送过好友申请并且对方送过了好友申请，那么将这个好友请求设置为成功+无效
        if (friendRequest1 != null && success == 1)
        {
            friendRequestMapper.acceptFriendRequest("", success, friendRequest1.getId());
        }
        Friend friendTest = friendService.selectByAccepterAndSender(friendRequest.getAccepter().getId(), friendRequest.getSender().getId());
        if (friendTest==null && success == 1)
        {
            Friend friend = new Friend();
            friend.setAccepter(friendRequest.getAccepter());
            friend.setSender(friendRequest.getSender());
            friend.setFriendRequest(friendRequest);
            friendService.insert(friend);
            userService.incrementFriendNum(friendRequest.getAccepter().getId());
            userService.incrementFriendNum(friendRequest.getSender().getId());
        }

        return friendRequestMapper.acceptFriendRequest(responseMessage, success, id);
    }
}
