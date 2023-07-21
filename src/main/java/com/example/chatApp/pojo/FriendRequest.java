package com.example.chatApp.pojo;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class FriendRequest implements Serializable {
    private Integer id;

    private User sender;

    private User accepter;

    private Date requestTime;

    /**
	* 这个应该设置为什么？？？
	*/
    private Date responseTime;

    private String requestMessage;

    private String responseMessage;

    /**
	* 0为未处理，1为接受好友，2为拒绝好友，3为忽略好友
	*/
    private Integer success;

    private Date outdateTime;

    /**
	* 0为请求有效，1为请求无效
	*/
    private Boolean disable;

    /**
	* 0为删除，1为保留
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;
}